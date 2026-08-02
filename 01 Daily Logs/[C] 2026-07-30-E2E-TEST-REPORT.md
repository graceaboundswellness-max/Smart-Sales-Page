---
author: claude
type: test-report
date: 2026-07-30
---

> ## ⚠️ HISTORICAL RECORD — SUPERSEDED 2026-08-02. Do not execute any instruction in this file.
> Superseded here: (1) `WANDA-LINKS-HQ-MASTER.xlsx` is **dead** — never upload or convert it; (2) the **Offers One-Pager** was retired as a duplicate — the offer/price/URL authority is `LINKS HQ — CURRENT` → **SEND A LINK**; (3) the blog nav target is **`blog.wandalambert.com/blog`** — the bare subdomain 404s; (4) voice and Chloe profiles are **not missing** — they exist as canonical synced sources; (5) `templates/cowork-prompt-verify-master-sheet.md` is marked DO NOT RUN.
> Kept unedited below per the never-delete rule.


# Seeded End-to-End Test — Report & Merge Recommendation

**What was tested:** the full deliverable pipeline on a seeded (synthetic, clearly-labeled, never-publish) artifact: receipts verification → hook block/pass → publish-strip (Section A/B) → deterministic audit checks. Run live in this session; raw log preserved in the session scratchpad.

## Results

| Stage | Test | Expected | Actual | Verdict |
|---|---|---|---|---|
| 1 | Deliverable with a FABRICATED receipt (`[open-lanes.md → Quantum SEO vortex]`) | Hook blocks (exit 2), names the fake finding | Blocked, exit 2, error named the exact fake citation | ✅ PASS |
| 2 | Same deliverable, receipt corrected to a real finding (`Template fatigue`) | Hook passes (exit 0) | Exit 0 | ✅ PASS |
| 3 | Publish-strip: paste-ready body scanned for internal blocks (OFFER SOURCE / receipts / checklist) | Body clean | Clean | ✅ PASS |
| 4a | Age-label check on body (2026-07-30 ruling) | No audience age in copy | None found | ✅ PASS |
| 4b | Hype-register scan (secrets/scarcity/etc.) | None | None found | ✅ PASS |
| 4c | CTA link matches the OFFER SOURCE quote | Match | `wandalambert.com/gom` in both | ✅ PASS |
| 5 | Hook on clean/empty deliverables dir | Exit 0 | Exit 0 | ✅ PASS |

Earlier same-session hook tests (5 cases) also on record: invented finding blocked, **paraphrased** finding blocked, nonexistent cited file blocked, <3 citations blocked, `[no-research]` escape passed.

## Known limits — stated so nobody oversells this

1. **The OFFER SOURCE in the test quoted a stand-in** (the master sheet's Get Off Mute row) because the real Offers One-Pager doesn't exist until CoWork builds it. The quote-matching mechanism is proven; the canonical source file is pending.
2. **The auditor checks run here were the deterministic subset** (age, hype, offer-link match, strip). The judgment checks (does the finding *drive* the decision; voice quality) belong to the Draft Auditor Project — which exists as instructions, not yet as a built Project, and per Anthropic's own guidance an LLM grader should be spot-tested after it's built.
3. **The hook is proven in THIS repo on THIS branch.** It is not yet live on `main` (merge pending) and not yet installed in the local vault.
4. **Stop-hook edge cases** (user interruption mid-turn; hooks can be disabled in settings) remain — it's a strong gate, not an unbreakable one.
5. Claude Projects/GPTs must be smoke-tested after knowledge upload to confirm the files are actually consulted (one test post, check the receipts cite real text).

## Canon fixes applied before merge (Wanda rulings, 2026-07-30)

- **Age stays internal:** "55–65" (or any query-age) never appears in copy or titles without Wanda's explicit Phase 0 approval. Applied to: template title rules + checklist, project instructions, auditor check 5, content-topics rule 0.
- **"Messaging" is not globally banned:** symptom language leads cold-reader sections; the word is allowed where natural. Applied to: template §3 + checklist, project instructions, auditor check 5, playbook (amended with strikethrough, history preserved).
- Also previously fixed this session: "at 29" → December 1999 (canon), publish-strip Section A/B split, retracted unverified bot-block claim, enforcement boundary stated in CLAUDE.md.

## Recommendation

**PASS — recommend merging PR #1**, with eyes open on the limits above. Every mechanical claim the PR makes was demonstrated live in this test; every non-mechanical claim is labeled as trusted/auditor/human territory in CLAUDE.md itself. Post-merge next steps, in order: build the two Projects from the kit → smoke-test each once → CoWork builds the Offers One-Pager → first real post runs the full pipeline.

Wanda's call. Nothing merges without her.
