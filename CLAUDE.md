# Smart-Sales-Page — Working Rules

This repo builds sales pages, funnels, website copy, and content assets for Wanda Lambert (WandaLambert.com). The rules below are not suggestions. They exist because past builds ignored finished research and shipped generic work.

## Rule 1 — Research loads BEFORE writing. Always.

Before drafting ANY copy, page, funnel, outline, or content plan, read the relevant files in `research/`:

| You are building… | Read first |
|---|---|
| Sales page, website page, About/Founder page, funnel step | `research/positioning.md` + `research/competitors.md` |
| Blog post, article, YouTube script, Substack post, SEO/AEO content | `research/open-lanes.md` (find the matching territory) + `research/positioning.md` — and build blog posts to `templates/blog-post-template.md` |
| Choosing what content to make next | `research/content-topics.md` (priority-ordered, receipt-backed) |
| Email sequence, opt-in, lead magnet | `research/positioning.md` + the matching territory in `research/open-lanes.md` |
| Offer design, pricing, naming | `research/positioning.md` (the moat + Tier 1 walls) |

`research/00-INDEX.md` lists where every full source document lives (Google Drive, the Wanda HQ dashboard artifact, local vault paths).

## Rule 2 — Every deliverable ends with Research Receipts.

Every draft handed to Wanda MUST end with a block like this:

```
--- RESEARCH RECEIPTS ---
1. [open-lanes.md → Template fatigue] Nobody answers "I bought templates, why is my copy still generic?" → headline leads with that exact question.
2. [positioning.md → Tier 1 moat] DFY at $1,200–$2,500 has no faith competitor → CTA sells DFY as the front door, not a course.
3. [competitors.md → Nicole Frazier] She sells confidence about a message, never the words → body copy states "I hand you the words" as the contrast.
```

3–7 receipts, each naming (a) the research file and finding, (b) the specific decision it drove. **A deliverable with no receipts block is not done.** If the research genuinely doesn't apply, the receipts block says so explicitly and why — silence is not allowed.

**What is mechanically enforced vs. trusted — exact boundary, do not oversell it:**

A Stop hook (`.claude/settings.json` → `scripts/check-deliverables.sh`) runs outside the model and blocks the session from ending unless every `deliverables/*.md`: (a) has a receipts block, (b) contains ≥3 citations shaped `[file.md → finding]`, (c) **every cited finding text actually appears in the cited file** — a receipt citing a nonexistent file or an invented finding blocks the session — and (d) if the file is a blog draft (contains a `PASTE-READY BODY` marker), it also passes `skills/yt-to-blog/scripts/check_draft.py`: clean publish body, 40–60-word direct answer, question-shaped H2s, Key Takeaways as H3, visible FAQ, 3–7 receipts, no retired offer strings, no price without an OFFER SOURCE block, no audience-age label. This kills silent skips and fabricated citations.

**Verified limits of the hook (adversarially tested 2026-08-02 — do not describe it as stronger than this):**
- `[no-research]` appearing anywhere in the file bypasses the whole check, and the code does **not** require a reason even though this rule asks for one.
- Citation count is instances, not distinct findings — the same citation three times passes.
- Finding-match is a case-insensitive **substring** check, so a very short fragment satisfies it. It proves the string exists in the file; it does not prove a real finding was cited.
- Cited files also resolve at the repo root, not only `research/` and `templates/`.
- Only `deliverables/*.md` is gated — other file types bypass entirely.
- It fails **open** (exit 127, non-blocking) if `$CLAUDE_PROJECT_DIR` is ever unset.
- Offer/price checking is **string-level and blog-draft-only**. Non-blog deliverables get no offer checks at all. Even on blog drafts, the checker proves a price has *an* OFFER SOURCE block somewhere in the file and that known retired names don't appear — it cannot tell whether the quoted row is the CURRENT one, or whether the quote matches the live sheet. Verifying that a quoted offer is real remains the auditor's and Wanda's job.
- The shape checks are skipped, not failed, if `python3` or the checker file is missing — a missing tool never masquerades as a passing draft, but it doesn't block unrelated work either.

The hook does NOT prove the finding truly drove the decision, or that the draft is good. Those are verified by (1) the draft-auditor pass (`templates/draft-auditor-instructions.md`), which checks each receipt's decision-claim against the draft, and (2) Wanda reading it. Receipts are falsifiable claims, not proof — treat any statement that the system "guarantees research was used" as overselling.

Work-in-progress that isn't ready for receipts belongs anywhere except `deliverables/`.

## Rule 3 — Research can veto copy.

If a draft's angle, claim, or positioning contradicts the research (e.g., leading with hype-register claims the 55–65 buyer distrusts, or framing brand voice as something you CONSTRUCT instead of RECOVER), fix it or flag it. Never ship it silently.

## Rule 4 — Canon voice constraints (summary)

- Audience: Christian women 55–65 ("Chloe"), proven expertise, rebuilding online, skeptical of hype/FTC-flagged claims.
- Register: truth over hype. No revenue-screenshot energy, no "spilling my secrets," no false scarcity.
- Positioning spine: **"Your voice first. AI runs with it."** Voice extraction, not replication. Messaging as the deliverable, DFY as the front door.
- Grade-7 readability, specific numbers over vague claims, never define her by what she's NOT.

## Folder map

- `research/` — distilled research digests (index, positioning, competitors, open lanes, content topics)
- `templates/` — blog template, YT→blog workflow, publishing playbook, draft auditor
- `skills/` — installable skills (`yt-to-blog`): SKILL.md routes → `references/` hold the blueprints → `scripts/` hold the mechanical checks
- `deliverables/` — finished drafts only (receipts-gated by the Stop hook)
- `scripts/` — enforcement scripts (`check-deliverables.sh`)
- `01 Daily Logs/` — end-of-day session handoff notes

## Rule 6 — Copy gates are OPT-IN. Operational output bypasses them.

Copy-quality traits — "disarming," "clear," voice scoring, persuasion scoring, power-word passes, Chloe check, catcher, zhuzh — run **only** on customer-facing copy or on output the user explicitly asked to have reviewed as copy.

They must **never** run on: diagnostics, error analysis, status reports, technical explanations, logs, test output, handoffs, session recaps, or system messages. Judging an operational sentence by copy standards is a routing bug, not a quality improvement.

Routing is deterministic — `scripts/classify-output-scope.sh` decides:
- `deliverables/` → **COPY** · explicit user request or `COPY-REVIEW-REQUESTED` marker → **COPY**
- `research/`, `templates/`, `scripts/`, `reports/`, `01 Daily Logs/`, `.claude/`, CLAUDE.md → **OPERATIONAL**
- Unlabeled chat replies → **OPERATIONAL by default** (copy treatment is never assumed)

Regression suite: `bash scripts/test-output-scope.sh` (14 cases, includes the 2026-07-30 false positive verbatim). Run it after touching either script.

## Rule 5 — Keep the research alive.

When new research is produced in any session (competitor sweeps, SERP checks, audience data), distill it into the matching `research/` file in the same session. Research that only lives in chat output is considered lost.
