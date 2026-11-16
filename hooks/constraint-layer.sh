#!/usr/bin/env bash
# UserPromptSubmit hook: when the operator's prompt reads as a doctrinal bypass
# or violation, inject the Doctrine Constraint Layer (references/canon.md) so
# the agent surfaces the cost (bypass) or refuses with an alternative
# (violation) instead of complying silently. Pace adjustments pass untouched.
# A phrase inside a negation ("don't fabricate", "never skip familiarity") is
# not an instruction to do it and does not fire.
set -euo pipefail
prompt="$(cat | python3 -c 'import sys,json; print(json.load(sys.stdin).get("prompt",""))' 2>/dev/null || true)"
[ -n "$prompt" ] || exit 0

python3 - "$prompt" <<'PY'
import re, sys
p = sys.argv[1].lower()
NEG = r"(?:don'?t|do not|never|no|without|avoid|shouldn'?t|should not|won'?t|not going to|can'?t|cannot)\s+(?:\w+\s+){0,3}"

violation = [
    r"(present|treat|show|write|mark|label|rewrite|state)\s+(it|this|these|them|that|the (estimate|number|figure|inference))\s+as\s+(a\s+)?(known|fact|facts|certain|verified)(?!\s+or\b)",
    r"as a known fact(?!\s+or\b)", r"(drop|remove|strip|lose|delete|kill)\s+the\s+(inferred\s+|known\s+)?labels?", r"without the labels?",
    r"change\s+inferred\s+to\s+known", r"mark (it|this|that) known",
    r"(drop|skip|ignore|forget)\s+the\s+(pride|fud)\s+test",
    r"(make up|invent|fabricate|fake)\s+(a|the|some)?\s*(source|number|quote|reference|stat|figure|citation|url)",
    r"use\s+.*(other|another|different)\s+(customer|client)'?s?\s+(data|numbers|deck|model)",
    r"\bfabricate\b",
]
bypass = [
    r"skip\s+(the\s+)?(familiarity|awareness|relationship|diagnosis|movement|profile|icp|targeting)",
    r"skip\s+(the\s+)?(reviewer|review|gate|floor)", r"(go|jump|get)\s+straight\s+to\s+(the\s+)?(demo|pilot|proposal|pricing|value)",
    r"rush\s+to\s+value", r"just\s+(write|generate|send|draft)\s+the\s+(thesis|provocation|email|proposal|demo)\s+(without|now|anyway)",
    r"ship\s+(it\s+)?without", r"ship\s+on\s+a\s+failed", r"override\s+the\s+(floor|gate|window)",
    r"(read|treat|count)\s+.{0,30}silence\s+(as|early|before)", r"before\s+the\s+window", r"(send|fire off|shoot)\s+(a|them a|him a|her a)\s+(quick\s+)?(nudge|bump|check-?in|follow-?up)\s*(now|anyway|early)?",
]
def fires(patterns):
    for pat in patterns:
        for m in re.finditer(pat, p):
            start = max(0, m.start() - 40)
            if re.search(NEG + r"$", p[start:m.start()]):
                continue
            return True
    return False

if fires(violation):
    print("[FDS Doctrine Constraint Layer — VIOLATION tier] The instruction above asks for something the doctrine hard-codes against: fabrication, presenting INFERRED as KNOWN or stripping labels, dropping the Pride or FUD test, or cross-customer data use. Refuse it, name the commitment it breaks, log it in the ledger, and offer a doctrine-preserving alternative. Do not comply silently. See references/canon.md → Doctrine Constraint Layer.")
elif fires(bypass):
    print("[FDS Doctrine Constraint Layer — BYPASS tier] The instruction above asks to skip a movement, a diagnosis, a gate, independent review, or the response-window floor, or to apply pressure during silence. Do not comply silently: state the rule being bypassed, the concrete cost to this deal, and ask for explicit confirmation. If confirmed, proceed and record the bypass in the ledger. Pace adjustments (shortening a window above the 5-day floor, reordering, prioritizing) need no confirmation. See references/canon.md → Doctrine Constraint Layer.")
PY
exit 0
