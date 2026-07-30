#!/usr/bin/env bash
# Stop-gate: no deliverable ships without Research Receipts.
# Runs as a Claude Code Stop hook. Exit 2 = block: Claude cannot end its
# turn until every .md in deliverables/ carries a receipts block, and the
# failure list below is fed back to it to fix. This is enforced by the
# harness, outside the model — it cannot be skipped or talked around.
set -u

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
deliverables_dir="$repo_root/deliverables"

[ -d "$deliverables_dir" ] || exit 0

failures=""
while IFS= read -r -d '' f; do
  rel="${f#"$repo_root"/}"
  if ! grep -qi 'RESEARCH RECEIPTS' "$f"; then
    failures="${failures}
- ${rel}: missing the RESEARCH RECEIPTS block (see CLAUDE.md Rule 2)"
  fi
done < <(find "$deliverables_dir" -type f -name '*.md' -print0 2>/dev/null)

if [ -n "$failures" ]; then
  {
    echo "BLOCKED: deliverables are missing Research Receipts:"
    echo "$failures"
    echo
    echo "Append a '--- RESEARCH RECEIPTS ---' block to each file above:"
    echo "3-7 lines, each citing [research file -> finding] -> the decision it drove."
    echo "If research genuinely didn't apply, the block must say so explicitly and why."
  } >&2
  exit 2
fi

exit 0
