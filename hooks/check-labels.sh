#!/usr/bin/env bash
# Stop hook: block an FDS artifact from shipping with unlabeled numerals.
# Scans the last assistant message in the transcript. Only acts when that
# message contains an FDS artifact header (a "Protocol:" field alongside
# "Gate:"), so ordinary replies are never touched.
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

# Candidate numerals: currency, percents, counts with units, plain numbers of 2+ digits.
num = re.compile(r"(\$\s?\d[\d,.]*\s?[MBK%]?|\d[\d,.]*\s?%|\b\d{2,}[\d,.]*\b)")
label = re.compile(r"(KNOWN\s*\[[^\]]+\]|INFERRED\s*\[[^\]]+\]\s*\[[^\]]+\])")
skip = re.compile(r"^(#|\||Targeting:|Movement:|Protocol:|Gate:|Output Standards:|Window:|Version|Tier|Composite|Score|Date|As of|\d+\.)", re.I)
offenders = []
for ln in last.splitlines():
    s = ln.strip()
    if not s or skip.match(s):
        continue
    if "[design target]" in s or "[field benchmark" in s:
        continue
    if num.search(s) and not label.search(s):
        offenders.append(s[:140])
if offenders:
    reason = ("FDS Hallucination Protocol: unlabeled numerals in an artifact that carries a protocol header. "
              "Every number needs KNOWN [url] or INFERRED [method] [confidence], or [design target]. Offending lines:\n- "
              + "\n- ".join(offenders[:8]))
    print(json.dumps({"decision": "block", "reason": reason}))
PY
