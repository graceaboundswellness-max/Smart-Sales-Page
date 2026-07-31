#!/usr/bin/env bash
# Output scope classifier — decides whether copy-quality gates may run.
#
# WHY THIS EXISTS (regression 2026-07-30): an operational status explanation
# ("Because the failure gives me nothing to work with, and I have no tool that
# can touch the connector's session itself…") was classified as customer-facing
# copy and run through copy-quality traits (disarming/clear/voice scoring/
# persuasion scoring/catcher). That is a false positive. Copy gates must be
# OPT-IN, never the default.
#
# CONTRACT
#   Prints exactly one token: COPY | OPERATIONAL
#   COPY      -> copy-quality gates MAY run (voice, catcher, persuasion,
#                power words, Chloe check, zhuzh, etc.)
#   OPERATIONAL -> those gates MUST be skipped. Applies to diagnostics, logs,
#                status reports, technical explanations, handoffs, test output,
#                error analysis, and system messages.
#
# USAGE
#   classify-output-scope.sh --file <path>
#   printf '%s' "<text>" | classify-output-scope.sh
#   classify-output-scope.sh --file <path> --requested   (explicit copy review)
set -u

requested=0
file=""
while [ $# -gt 0 ]; do
  case "$1" in
    --file) file="${2:-}"; shift 2 ;;
    --requested) requested=1; shift ;;
    *) shift ;;
  esac
done

# Rule 1 — explicit human request for copy review always wins.
if [ "$requested" -eq 1 ]; then echo "COPY"; exit 0; fi

# Rule 2 — path-based routing (deterministic, no guessing).
if [ -n "$file" ]; then
  case "$file" in
    */deliverables/*|deliverables/*)
      echo "COPY"; exit 0 ;;
    */01\ Daily\ Logs/*|01\ Daily\ Logs/*|*/scripts/*|scripts/*|*/reports/*|reports/*|*/research/*|research/*|*/templates/*|templates/*|*/.claude/*|.claude/*|*CLAUDE.md)
      echo "OPERATIONAL"; exit 0 ;;
  esac
fi

text="$(cat 2>/dev/null || true)"
[ -z "$text" ] && [ -n "$file" ] && [ -f "$file" ] && text="$(cat "$file")"

# Rule 3 — explicit in-band markers.
printf '%s' "$text" | grep -qiE 'COPY-REVIEW-REQUESTED|<copy-for-review>' && { echo "COPY"; exit 0; }
printf '%s' "$text" | grep -qiE 'OPERATIONAL-STATUS|<status-report>' && { echo "OPERATIONAL"; exit 0; }

# Rule 4 — operational signal detection (technical/status vocabulary).
if printf '%s' "$text" | grep -qiE 'connector|API|token|session|endpoint|exit code|stderr|stdout|traceback|stack trace|HTTP [0-9]{3}|[0-9]{3} (Forbidden|Unauthorized|Not Found)|tool call|MCP|OAuth|permission denied|diagnostic|debug|log file|commit|pull request|\bPR #|branch|merge|hook|schema validation|test (suite|case|run)|PASS/FAIL|repo|CLI|stale token|rate limit|timeout|retry'; then
  echo "OPERATIONAL"; exit 0
fi

# Rule 5 — DEFAULT IS OPERATIONAL. Copy gates are opt-in by path, marker, or
# explicit request. This is the core of the fix: an unlabeled chat reply is
# never assumed to be customer-facing copy.
echo "OPERATIONAL"
