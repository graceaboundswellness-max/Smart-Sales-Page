---
author: claude
type: session-summary
date: 2026-07-30
---

# July 30, 2026 — What We Did & What's Next
### The no-scrolling version. Everything from this session in one place.

---

## PART 1 — THE PROBLEM WE ACTUALLY SOLVED

**Your complaint:** two months building a content system, research sitting unused, Claude not following what you built it to follow.

**The diagnosis (not a theory — verified in your files):**
1. Your research lived in Google Drive, a claude.ai artifact, and local vault files. **No build session automatically reads any of those.** It wasn't ignored research; it was invisible research.
2. Your rules lived inside skill instructions. **Instructions are requests, not enforcement.** A model can skip one and then say it didn't. That is the exact failure you lived, and no amount of ALL-CAPS in a skill file fixes it.

**Also asked and answered honestly:** no, nothing released in the last few days fixes this. (Opus 5 shipped July 24 with stronger self-verification; there were memory-API improvements. Neither is a switch that makes a model obey a two-month-old build.) The fix is structural.

---

## PART 2 — WHAT GOT BUILT (all pushed to PR #1)

### The research library — research that loads itself
Distilled your real research (Blue Ocean Rev 2, Competitor Gap Analysis, dashboard Open Lanes + 15 SERP territories) into files a session reads automatically:
- `research/positioning.md` — the moat, tiered; claims discipline (what's safe vs. now-false to say); 3 positioning statements; 10 strategic recommendations
- `research/competitors.md` — per competitor: what they own / what they leave open / the strategic read
- `research/open-lanes.md` — all 15 search territories: who wins each SERP now, and the exact gap you walk through
- `research/content-topics.md` — priority-ordered topic list, receipt-backed
- `research/00-INDEX.md` — map back to every full source document
- `CLAUDE.md` — the rules, auto-loaded every session in this repo

### The content system kit
- `templates/blog-post-template.md` — SEO/AEO/AI-Overview/GEO structure, built from your own SERP gaps
- `templates/yt-to-blog-project-instructions.md` — paste-ready Project/GPT instructions
- `templates/publishing-playbook.md` — YOUR July 28 first-publish playbook, preserved and corrected
- `templates/draft-auditor-instructions.md` — a second, verify-only project
- `templates/cowork-prompt-verify-master-sheet.md` — the CoWork prompt (see Part 4)

### Real enforcement (the part that isn't a promise)
- `scripts/check-deliverables.sh` + `.claude/settings.json` — a **Stop hook**: any finished draft in `deliverables/` without a Research Receipts block **blocks the session from ending**. The harness runs it, not the model. Tested both directions before wiring.

### The master spreadsheet
`WANDA-LINKS-HQ-MASTER.xlsx` — 10 tabs, consolidated from the messy LINKS HQ, nothing deleted. It replaces three sheets with one (old LINKS HQ + safety backup retire to reference after a week). Includes a live CONTENT TRACKER and a FIX-IT LIST that pulls 17 buried to-dos out where they can be done.

### Corrections we made to my own earlier work (this matters — the system self-corrects now)
- **Canva rule reversed.** I'd said text-heavy graphics must go to Canva. Your GPT rendered type excellently, so: image GPT first, Canva fallback only.
- **FAQPage schema demoted.** Your live session found FAQ rich results died May 7, 2026. Template now: visible FAQ does the AEO work, Article + Person schema at blog level, HowTo skipped entirely.
- **"Your blog blocks bots" retracted.** That 403 was this sandbox's own network policy, not your site. Only Search Console's Test Live URL can answer it.

---

## PART 3 — FILES TO ADD TO YOUR PROJECTS

You need **two** projects. Both use the **same knowledge files**. Everything marked ✅ is already sitting in your Drive folder:
**[AI-Ready Research Kit (Claude + GPT)](https://drive.google.com/drive/folders/1KCJv-tfh3umPsAVDAKawYY-lQWVJYSC2)**

### PROJECT 1 — "YT → Blog Repurposer"
**Instructions field** (not knowledge): paste everything below the `---` line in ✅ `yt-to-blog-project-instructions.md`

**Knowledge files:**
| # | File | Status |
|---|---|---|
| 1 | `blog-post-template.md` | ✅ in Drive |
| 2 | `publishing-playbook.md` | ✅ in Drive |
| 3 | `open-lanes.md` | ✅ in Drive |
| 4 | `content-topics.md` | ✅ in Drive |
| 5 | `positioning.md` | ✅ in Drive |
| 6 | **Your voice profile** | ⬜ YOU export from vault |
| 7 | **Your Chloe / audience profile** | ⬜ YOU export from vault |
| 8 | **Offers one-pager** | ⬜ CoWork builds it (Part 4) |

Optional 9th: ✅ `competitors.md` — only if you want posts to name-contrast competitors. Most posts won't.

### PROJECT 2 — "Draft Auditor"
**Instructions field:** paste from ✅ `draft-auditor-instructions.md`
**Knowledge files:** the exact same 8 above. (Same files on purpose — the auditor can only catch a lie if it can see the same source the generator saw.)

### How the two projects work together
Generator writes → paste draft into Auditor → Auditor returns SHIP or FIX FIRST with quoted evidence → you fix → publish.
**Your 5-second gate:** if a draft has no visible `OFFER SOURCE:` quote and no receipts block, reject it unread. That single habit is enforcement no model can route around.

---

## PART 4 — YOUR TO-DO LIST (desktop, tomorrow)

### Do these yourself (fast)
1. **GHL nav fix (2 min)** — site header → add link "Blog" → `https://blog.wandalambert.com`. Say "nav" in chat and I'll walk you through it click by click.
2. **Index the live post** — Search Console → URL Inspection → Test Live URL → Request Indexing. Then Bing Webmaster → Submit URL. (Bing feeds ChatGPT/Copilot answers.)
3. **Activate the master sheet** — drag the .xlsx into Drive → open → File → Save as Google Sheets.
4. **Review & merge PR #1.**

### Hand to CoWork (it does the tedious part)
5. **Verify the master sheet** — paste `templates/cowork-prompt-verify-master-sheet.md` into CoWork. It tests every public URL in a real browser, checks whether the 17 fix-it rows are already done, flags any price mismatches, stamps today's date on what it verified, and **builds the OFFERS ONE-PAGER tab** — which becomes knowledge file #8 above.

### Export from your vault (only you have these)
6. **Voice profile** + **Chloe profile** → drop into the Drive kit folder, then into both projects.

### Still open, next session
7. **Nāhgee** — move him from a standalone skill into a checklist line inside `wanda-email-system`'s final output step, so his absence is a visible blank instead of a silent omission.
8. **Gracie** — tell me her rule (every graphic? covers only?) and I'll make her a required field in the image-prompt block.
9. **Business OS Master Dashboard audit** — it WAS modified July 29 at 4:48 AM, so something is writing to it. Whether it writes anything useful is the open question. You said another day; it's logged.

---

## PART 5 — TWO THINGS THE CONSOLIDATION SURFACED

- **Two different Meta pixel IDs** in your old sheet: `9400941173292040` (site-wide PageView snippet) and `753205821450077` (AddToCart example). Confirm which is live before trusting any ad data. On the FIX-IT LIST.
- **Your "Knowledge Areas" tab** — Bio, Offers, Brand Voice, Audience, all marked NOT LIVE YET — is *exactly* the list of files your two AI projects need. Same gap showing up in two places. Closing it once closes both.
