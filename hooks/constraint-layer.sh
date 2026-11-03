#!/usr/bin/env bash
# UserPromptSubmit hook: when the operator's prompt reads as a doctrinal
# bypass or violation, inject the Doctrine Constraint Layer so the agent
# surfaces the cost (bypass) or refuses (violation) instead of complying
# silently. Pace adjustments pass through untouched.
set -euo pipefail
prompt="$(cat | python3 -c 'import sys,json; print(json.load(sys.stdin).get("prompt",""))' 2>/dev/null || true)"
[ -n "$prompt" ] || exit 0
p="$(printf '%s' "$prompt" | tr '[:upper:]' '[:lower:]')"

violation='present (it|this|these|them) as (known|fact)|remove the (inferred|known) label|drop the (pride|fud) test|ignore the pride test|skip the (reviewer|review)|make up (a|the) (source|number|quote|reference)|use .* other customer|fabricate'
bypass='skip (familiarity|awareness|the diagnosis|movement)|rush to value|just (write|generate|send) the (thesis|provocation|email) without|ship (it )?without|read .* silence (as|early)|treat .* silence|before the window|override the (floor|gate)|ship on a failed'

if printf '%s' "$p" | grep -Eq "$violation"; then
  cat <<'EOF'
[FDS Doctrine Constraint Layer — VIOLATION tier] The instruction above asks for something the doctrine hard-codes against (fabrication, relabeling INFERRED as KNOWN, dropping the Pride/FUD test, skipping independent review, or cross-customer data use). Refuse it, say which commitment it breaks, log it in the ledger, and offer a doctrine-preserving alternative. Do not comply silently. See references/canon.md → Doctrine Constraint Layer.
EOF
elif printf '%s' "$p" | grep -Eq "$bypass"; then
  cat <<'EOF'
[FDS Doctrine Constraint Layer — BYPASS tier] The instruction above asks to skip a movement, a diagnosis, a gate, the response-window floor, or independent review. Do not comply silently: state the rule being bypassed, the concrete cost (what the buyer will do, what the artifact will lack), and ask for explicit confirmation. If confirmed, proceed and record the bypass in the ledger. Pace adjustments (compressing a window above the 5-day floor, reordering, prioritizing) need no confirmation. See references/canon.md → Doctrine Constraint Layer.
EOF
fi
exit 0
