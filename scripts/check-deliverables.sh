#!/usr/bin/env bash
# Stop-gate for deliverables. Runs as a Claude Code Stop hook, outside the model.
#
# WHAT THIS PROVES (mechanically, every time):
#   1. Every deliverables/*.md has a RESEARCH RECEIPTS block.
#   2. The block contains at least 3 citations of the form [file.md → finding]
#      (or the explicit [no-research] token with an explanation).
#   3. Every cited file exists in research/ or templates/, and the cited
#      finding text actually appears in that file — a receipt citing a
#      finding that does not exist in the source blocks the session.
#   4. Blog drafts (any deliverable containing a PASTE-READY BODY marker)
#      additionally pass scripts/check_draft.py — deterministic shape checks
#      (clean publish body, direct-answer length, question H2s, receipt
#      count, retired offer strings, unbacked prices, age labels).
#
# WHAT THIS DOES NOT PROVE (by design — do not oversell it):
#   - that the finding actually drove the decision claimed (auditor's job),
#   - that the draft is any good (Wanda's job).
# Exit 2 = block: the session cannot end until failures are fixed.
set -u

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
deliverables_dir="$repo_root/deliverables"

[ -d "$deliverables_dir" ] || exit 0

failures=""

add_failure() {
  failures="${failures}
- $1"
}

while IFS= read -r -d '' f; do
  rel="${f#"$repo_root"/}"

  if ! grep -qi 'RESEARCH RECEIPTS' "$f"; then
    add_failure "${rel}: missing the RESEARCH RECEIPTS block (CLAUDE.md Rule 2)"
    continue
  fi

  # Explicit research-doesn't-apply escape hatch: token + at least one word of why.
  if grep -qi '\[no-research\]' "$f"; then
    continue
  fi

  # Pull citations shaped like [somefile.md → finding text] (accepts -> too).
  citations="$(grep -oE '\[[A-Za-z0-9._-]+\.md[[:space:]]*(→|->)[[:space:]]*[^]]+\]' "$f" || true)"
  count="$(printf '%s' "$citations" | grep -c '\.md' || true)"

  if [ "${count:-0}" -lt 3 ]; then
    add_failure "${rel}: only ${count:-0} receipt citation(s) of the form [file.md → finding] — need at least 3, each naming a real finding (or use [no-research] with an explanation if research genuinely doesn't apply)"
    continue
  fi

  # Verify each citation resolves: cited file exists AND contains the finding text.
  while IFS= read -r c; do
    [ -n "$c" ] || continue
    inner="${c#[}"; inner="${inner%]}"
    cited_file="$(printf '%s' "$inner" | sed -E 's/[[:space:]]*(→|->).*$//')"
    finding="$(printf '%s' "$inner" | sed -E 's/^[^→>]*(→|->)[[:space:]]*//')"
    src=""
    for dir in research templates .; do
      if [ -f "$repo_root/$dir/$cited_file" ]; then src="$repo_root/$dir/$cited_file"; break; fi
    done
    if [ -z "$src" ]; then
      add_failure "${rel}: receipt cites '$cited_file' but no such file exists in research/ or templates/ — a receipt must cite a real source"
      continue
    fi
    if ! grep -qiF "$finding" "$src"; then
      add_failure "${rel}: receipt claims '$cited_file' contains finding '$finding' — that text is NOT in the file. Quote the source's actual words (this is the anti-receipt-theater check)"
    fi
  done <<EOF
$citations
EOF

  # Blog drafts get the deterministic shape checks too. Gated on the
  # PASTE-READY BODY marker so non-blog deliverables aren't misjudged.
  # Skipped (not failed) if python3 or the checker is unavailable — a missing
  # tool must never masquerade as a passing draft, but it must not block
  # unrelated work either; the receipts checks above still stand.
  if grep -q 'PASTE-READY BODY' "$f"; then
    checker="$repo_root/skills/yt-to-blog/scripts/check_draft.py"
    if [ -f "$checker" ] && command -v python3 >/dev/null 2>&1; then
      if ! shape_out="$(python3 "$checker" "$f" 2>&1)"; then
        shape_fails="$(printf '%s' "$shape_out" | grep '^FAIL' | sed 's/^FAIL  */    · /')"
        add_failure "${rel}: blog draft failed shape checks —
$shape_fails"
      fi
    fi
  fi

done < <(find "$deliverables_dir" -type f -name '*.md' -print0 2>/dev/null)

if [ -n "$failures" ]; then
  {
    echo "BLOCKED: deliverable receipts failed verification:"
    echo "$failures"
    echo
    echo "Fix by citing real findings with the source file's actual wording:"
    echo "  [open-lanes.md → Template fatigue] <the decision it drove>"
    echo "Receipts are claims checked against sources — not decoration."
  } >&2
  exit 2
fi

exit 0
