# HANDOFF BRIEF — Wanda Lambert content system
**For: ChatGPT (or any AI with no prior context) · Written: 2026-08-02 · Author: Claude Code session**

Paste this whole document in. It is self-contained.

---

## 1. WHO / WHAT

Wanda Lambert (WandaLambert.com) — messaging mentor and certified conversion copywriter. Audience internally called "Chloe": Christian women 55–65, proven expertise, rebuilding online, deeply skeptical of hype and marketing claims.

Positioning spine: **"Your voice first. AI runs with it."** Voice is RECOVERED, never constructed. Messaging is the deliverable; done-for-you is the front door.

Three content pillars (fixed — do not invent others): **Unbury Your Message · AI Without the Ick · Safe to Be Seen.** "Truth Over Hype" is the editorial LENS running under all three, never a fourth pillar.

## 2. THE PROBLEM THIS SYSTEM SOLVES

Wanda had extensive competitive/SEO research that was never used, and AI builds that claimed to follow her rules but didn't. Root causes identified: (a) research lived in Drive/artifacts/vault where no build session automatically reads it, (b) rules lived in instructions, and instructions are requests — a model can skip one and then say it didn't.

The fix is structural: **every rule must produce a checkable artifact, and verification must be separated from generation.**

## 3. WHAT IS BUILT AND LIVE

**Repo:** `graceaboundswellness-max/Smart-Sales-Page` (GitHub). Merged to `main`.

- `research/` — distilled digests: `positioning.md` (moat, claims discipline, 3 positioning statements, 10 recommendations), `competitors.md`, `open-lanes.md` (15 mapped search territories with the exact gap in each), `content-topics.md` (priority-ordered topic list), `00-INDEX.md`.
- `templates/` — `blog-post-template.md` (SEO/AEO/AI-Overview/GEO structure), `yt-to-blog-project-instructions.md`, `publishing-playbook.md` (her real first-publish lessons), `draft-auditor-instructions.md`, `website-build-requirements.md`, `cowork-prompt-verify-master-sheet.md`.
- `scripts/check-deliverables.sh` — a **Stop hook** run by the harness (not the model). Blocks a session from ending unless every finished deliverable has a Research Receipts block with ≥3 citations shaped `[file.md → finding]`, AND every cited finding text actually exists verbatim in the cited file. Fabricated or paraphrased citations are blocked. Verified live on `main`.
- `scripts/classify-output-scope.sh` + 14-case regression suite — copy-quality gates (voice scoring, persuasion, catcher, etc.) are now **opt-in**. They run only on customer-facing copy or explicit request. Diagnostics, logs, status reports, and unlabeled replies bypass them.

**Enforcement boundary — state it accurately, do not oversell:**
- Mechanically proven: receipts exist and citations are real.
- Auditor-verified (probabilistic): that the finding actually drove the decision.
- Human-verified only: whether the draft is any good.

## 4. CANONICAL SOURCES — never create competing versions

| Thing | Canonical location |
|---|---|
| Business links | **LINKS HQ — CANONICAL** Google Sheet, ID `1wy_38hhsOwHjkzWmX0TZkFoOpwqa0ovafskRdMsdtOU` |
| Content production | **Ultimate Content Workflow** sheet, ID `1VZU1XRF6tShfjwMBfbY9h0VN1VD_ru4MKioqw9A7S9k` — tabs: CONTENT WORKFLOW HQ · CONTENT TRACKER · IDEAS & KEYWORDS · RESEARCH—WHAT'S WORKING · SOPs & TEMPLATES · PARKED—PINTEREST |
| AI knowledge kit | Google Drive folder "AI-Ready Research Kit (Claude + GPT)" |
| Website | wandalambert.com (GoHighLevel / FunnelCakes white-label) |
| Blog | **blog.wandalambert.com** — posts at `/post/<slug>`, NOT `/blog/` |

**Hard rule (ruling 2026-07-31):** one canonical sheet per purpose, edited in place. A 10-tab consolidation workbook was built and then deliberately killed because it competed with the live sheet. Never import a competing workbook; improve the canonical one from inside.

## 5. STANDING RULINGS — these override generic best practice

1. **Audience age is INTERNAL.** Never put "55–65" or any age in published copy or titles without Wanda's explicit approval, even when the target keyword contains an age.
2. **"Messaging" is NOT a banned word.** Symptom language leads cold-reader sections (she searches "why isn't anyone buying," not "brand messaging help"), but the word is allowed where it reads naturally.
3. **Use the year, never the age**, for her Distinguished Executive award: "December 1999."
4. **Nav/footer must be Global Sections** on any site rebuild. Per-page header copies are banned.
5. **Pink menu items on click are deliberate** brand behavior — not an inconsistency to fix.
6. **Never claim "no faith voice touches AI."** That claim is false and checkable. The defensible claim is the middle: voice-first messaging with AI as multiplier, for a demographic nobody serves.
7. **Register:** truth over hype. No "secrets," no revenue screenshots, no false scarcity. Grade-7 readability. Specific numbers over vague claims.

## 6. WHAT'S DONE (as of 2026-08-02)

- First blog post published and fully shipped: `https://blog.wandalambert.com/post/how-to-explain-what-you-do`
- Blog link added to site nav on 4 pages (home, about, contact, confirmation-after-submit) — manual, because headers aren't global yet
- Google Search Console: **Domain property** for `wandalambert.com` verified via DNS TXT at Hostinger (covers all subdomains). Indexing requested for the post.
- Bing Webmaster Tools: URL submitted (this is the step that feeds ChatGPT/Copilot answers)
- Ultimate Content Workflow sheet rebuilt + verified; LINKS HQ verification pass done
- Research kit files uploaded to Drive

## 7. WHAT'S OPEN

**Blocked on Wanda:**
- Export **voice profile** and **Chloe/audience profile** from her local vault → these are 2 of the 3 remaining knowledge files
- **Offers One-Pager** — in progress (one page: offer name, price, exact link, one-line description, last-verified date)
- Then build two Claude Projects / GPTs: **"YT → Blog Repurposer"** (generator) and **"Draft Auditor"** (verify-only, same knowledge files). Generator writes → Auditor checks → Wanda's 5-second gate: no visible `OFFER SOURCE:` quote and no receipts block = reject unread.

**Small, verifiable:**
- Add two columns to CONTENT TRACKER's blog band: `GSC indexing requested`, `Bing submitted`
- Stale row to confirm: 06-11-2026 "Why Nobody's Buying" — status says WITH MATT but a YouTube link exists; note says PUBLISHED was never checked
- Legal pages (privacy, disclaimer, terms) have **no nav at all** — fixed for free by the global-section rebuild
- Two conflicting Meta pixel IDs found in the old links sheet — confirm which is live
- Nāhgee (her dog-persona footnote skill) doesn't reach emails; fix is to make him a required line in `wanda-email-system`'s output format rather than a separate skill hoping to be invoked. Same pattern for "Gracie" in image prompts — rule not yet defined by Wanda.

## 8. KEY TECHNICAL FACTS WORTH KNOWING

- **Schema, 2026:** FAQPage rich results were removed May 7 2026; HowTo removed Sept 2023. **Article + Person schema at BLOG level is what matters.** The VISIBLE FAQ still does the AEO work — the schema was never the mechanism. GHL sanitizes script tags in post bodies, so schema cannot live there.
- **GHL gotchas:** never click "Create blog" (makes a second blog); the AI panel's "Describe the blog post topic" is a generator prompt, not the meta description; paste body BELOW the H1 (the Title field creates the H1).
- **Images:** her image GPT handles text in images well (proven live) — send everything to it first; Canva is fallback only. Image prompts should specify concept + required words + context, and say NOTHING about colors/fonts/style (the GPT holds the brand).
- **The Drive connector** (Claude side) can read, create, copy, and upload binaries — but has **no update/edit tool and no delete tool**. "Edit an existing Drive file" is not a supported operation; create a new file instead.

## 9. IF YOU'RE ASKED TO WRITE ANYTHING

Read `research/open-lanes.md` for the territory and build to the GAP, not the generic topic. Quote the offers file verbatim before writing any CTA. End with 3–7 Research Receipts, each citing a real finding in a real file and the decision it drove. Split output into a clean paste-ready body (zero internal blocks) and a separate internal record.
