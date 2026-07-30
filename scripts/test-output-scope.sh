#!/usr/bin/env bash
# Regression suite for the output scope classifier (copy-gate routing).
# Run: bash scripts/test-output-scope.sh
set -u
here="$(cd "$(dirname "$0")" && pwd)"
CLS="$here/classify-output-scope.sh"
pass=0; fail=0

check() { # check <name> <expected> <actual>
  if [ "$2" = "$3" ]; then
    printf 'PASS  %-58s -> %s\n' "$1" "$3"; pass=$((pass+1))
  else
    printf 'FAIL  %-58s -> got %s, want %s\n' "$1" "$3" "$2"; fail=$((fail+1))
  fi
}

# ---------------------------------------------------------------------------
# REGRESSION CASE — the exact text that was misrouted on 2026-07-30.
# This is the reason this suite exists. It must classify as OPERATIONAL.
# ---------------------------------------------------------------------------
REGRESSION_TEXT="Because the failure gives me nothing to work with, and I have no tool that can touch the connector's session itself…"
check "REGRESSION 2026-07-30: connector-session explanation" "OPERATIONAL" \
  "$(printf '%s' "$REGRESSION_TEXT" | bash "$CLS")"

# --- Operational variants that must bypass copy gates ----------------------
check "diagnostic matrix result" "OPERATIONAL" \
  "$(printf '%s' "Test 3 returned HTTP 403 Forbidden; the create path works, the update path has no tool." | bash "$CLS")"
check "handoff / status note" "OPERATIONAL" \
  "$(printf '%s' "PR #1 is unchanged: same head commit, mergeable, no review comments. Next check armed." | bash "$CLS")"
check "test-run summary" "OPERATIONAL" \
  "$(printf '%s' "Seeded end-to-end test: 7 of 7 stages passed; the hook blocked the fabricated receipt." | bash "$CLS")"
check "plain explanation, no jargon, unlabeled" "OPERATIONAL" \
  "$(printf '%s' "I could not finish that step, so here is what I did instead and why." | bash "$CLS")"
check "explicit status marker" "OPERATIONAL" \
  "$(printf '%s' "OPERATIONAL-STATUS: everything is committed and pushed." | bash "$CLS")"

# --- Path-based routing ----------------------------------------------------
check "path: deliverables/ = customer-facing" "COPY" \
  "$(printf '%s' "You bought the templates and your copy still sounds generic." | bash "$CLS" --file "deliverables/post.md")"
check "path: 01 Daily Logs/ = operational" "OPERATIONAL" \
  "$(printf '%s' "Session recap for tomorrow." | bash "$CLS" --file "01 Daily Logs/[C] 2026-07-30.md")"
check "path: scripts/ = operational" "OPERATIONAL" \
  "$(printf '%s' "shell gate" | bash "$CLS" --file "scripts/check-deliverables.sh")"
check "path: research/ = operational" "OPERATIONAL" \
  "$(printf '%s' "the moat is the stack" | bash "$CLS" --file "research/positioning.md")"
check "path: templates/ = operational" "OPERATIONAL" \
  "$(printf '%s' "template body" | bash "$CLS" --file "templates/blog-post-template.md")"

# --- Explicit request always wins ------------------------------------------
check "explicit --requested overrides path" "COPY" \
  "$(printf '%s' "Review this line for voice please." | bash "$CLS" --file "01 Daily Logs/x.md" --requested)"
check "in-band copy marker" "COPY" \
  "$(printf '%s' "COPY-REVIEW-REQUESTED: Great at what you do, invisible online." | bash "$CLS")"

# --- Precedence: deliverables/ beats operational vocabulary ----------------
check "deliverables/ path beats technical words in body" "COPY" \
  "$(printf '%s' "Your API of trust: the commit you make to being seen." | bash "$CLS" --file "deliverables/draft.md")"

echo
echo "----- output-scope suite: $pass passed, $fail failed -----"
[ "$fail" -eq 0 ] || exit 1
