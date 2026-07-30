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

A Stop hook (`.claude/settings.json` → `scripts/check-deliverables.sh`) runs outside the model and blocks the session from ending unless every `deliverables/*.md`: (a) has a receipts block, (b) contains ≥3 citations shaped `[file.md → finding]` (or an explicit `[no-research]` line with the reason), and (c) **every cited finding text actually appears in the cited file** — a receipt citing a nonexistent file or an invented/paraphrased finding blocks the session. This kills silent skips and fabricated citations.

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
- `templates/` — blog template, YT→blog project instructions, publishing playbook, draft auditor
- `deliverables/` — finished drafts only (receipts-gated by the Stop hook)
- `scripts/` — enforcement scripts (`check-deliverables.sh`)
- `01 Daily Logs/` — end-of-day session handoff notes

## Rule 5 — Keep the research alive.

When new research is produced in any session (competitor sweeps, SERP checks, audience data), distill it into the matching `research/` file in the same session. Research that only lives in chat output is considered lost.
