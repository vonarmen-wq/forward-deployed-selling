#!/usr/bin/env bash
# Stop hook: block an FDS artifact from shipping with unlabeled figures.
# Acts only on a message that carries an FDS artifact header ("Protocol:" and
# "Gate:"). Rules, from references/canon.md → Evidence labels:
#   - a figure (currency, percent, or a number with a unit) must sit on a line
#     that carries KNOWN [...] or INFERRED [...] [...] or [design target];
#   - buyer-facing sections (headings containing Provocation, Note to the
#     prospect, Bridge, Subject:) carry no labels, but every figure on them must
#     also appear on a labeled line elsewhere in the same artifact;
#   - dates, versions, scores, tiers, window arithmetic and table/list markup
#     are not figures;
#   - an INFERRED [...] [low] row may not sit under a Signal, Hypothesis or
#     Value-at-stake heading (canon → Private accounts: low rows carry nothing).
set -euo pipefail
input="$(cat)"
transcript="$(printf '%s' "$input" | python3 -c 'import sys,json; print(json.load(sys.stdin).get("transcript_path",""))' 2>/dev/null || true)"
[ -n "$transcript" ] && [ -f "$transcript" ] || exit 0

python3 - "$transcript" <<'PY'
import json, re, sys
path = sys.argv[1]
last = ""
with open(path, encoding="utf-8", errors="ignore") as f:
    for line in f:
        try:
            rec = json.loads(line)
        except Exception:
            continue
        if rec.get("type") == "assistant" or rec.get("role") == "assistant":
            msg = rec.get("message", rec)
            content = msg.get("content", "")
            if isinstance(content, list):
                content = "".join(c.get("text", "") for c in content if isinstance(c, dict))
            if content:
                last = content
if "Protocol:" not in last or "Gate:" not in last:
    sys.exit(0)

FIG = re.compile(r"(\$\s?\d[\d,]*(?:\.\d+)?\s?(?:[MBKmbk]|million|billion|bp)?|\d[\d,]*(?:\.\d+)?\s?%|\b\d[\d,]*(?:\.\d+)?\s?(?:million|billion|thousand|bp|pax|passengers|members|carriers|hours|h|days|seats|stores|units|employees|FTEs?)\b)")
LABEL = re.compile(r"(KNOWN\s*\[[^\]]+\]|INFERRED\s*\[[^\]]+\]\s*\[[^\]]+\]|\[design target\]|\[field benchmark[^\]]*\]|stated by seller)")
DATE = re.compile(r"\b\d{4}-\d{2}-\d{2}\b")
SKIP_PREFIX = re.compile(r"^(#|\||-{3,}|Targeting:|Movement:|Protocol:|Gate:|Output Standards:|Window|Version|Tier|Composite|FDRI|Velocity|Score|Date|As of|Generated|Delivered|Revision|Ledger|composite\s*=|W\s*=)", re.I)
BUYER_HEAD = re.compile(r"^#{1,6}\s.*(provocation|note to the prospect|bridge|buyer-facing)", re.I)
CORE_HEAD = re.compile(r"^#{1,6}\s.*(\bsignal\b|hypothesis|value at stake|value_at_stake)", re.I)
LOW = re.compile(r"INFERRED\s*\[[^\]]+\]\s*\[\s*low\s*\]", re.I)
ANY_HEAD = re.compile(r"^#{1,6}\s")

def norm(tok):
    return re.sub(r"[\s,$]", "", tok).lower()

labeled_figs, buyer_lines, offenders = set(), [], []
in_buyer = False
in_core = False
for ln in last.splitlines():
    s = ln.strip()
    if not s:
        continue
    if ANY_HEAD.match(s):
        in_buyer = bool(BUYER_HEAD.match(s))
        in_core = bool(CORE_HEAD.match(s))
        continue
    if in_core and LOW.search(s):
        offenders.append(f"[low-confidence inference under a Signal/Hypothesis/Value-at-stake heading] {s[:140]}")
        continue
    if s.lower().startswith("subject:"):
        in_buyer = True
    s_nodate = DATE.sub("", s)
    figs = [norm(m.group(0)) for m in FIG.finditer(s_nodate)]
    if LABEL.search(s):
        labeled_figs.update(figs)
        continue
    if in_buyer:
        if figs:
            buyer_lines.append((s[:140], figs))
        continue
    if SKIP_PREFIX.match(s):
        continue
    if figs:
        offenders.append(s[:140])

# buyer-facing figures must appear, labeled, elsewhere
for text, figs in buyer_lines:
    missing = [f for f in figs if f not in labeled_figs]
    if missing:
        offenders.append(f"[buyer-facing, figure not labeled elsewhere: {', '.join(missing)}] {text}")

if offenders:
    reason = ("FDS Hallucination Protocol: figures without a label in an artifact that carries a protocol header. "
              "Each needs KNOWN [url], INFERRED [method] [confidence], [design target], or 'stated by seller'; a figure on a buyer-facing page "
              "must appear labeled in the evidence table or arithmetic above it; an INFERRED [...] [low] row may not carry the Signal, Hypothesis or Value at stake. Offending lines:\n- " + "\n- ".join(offenders[:8]))
    print(json.dumps({"decision": "block", "reason": reason}))
PY
