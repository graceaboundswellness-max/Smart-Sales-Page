# HANDOFF TO CHATGPT (ARCHITECT) — YouTube Metadata + Thumbnail Checkpoint

**Date:** Saturday, 2026-08-01 · **From:** Claude Code session · **To:** ChatGPT (architect/QA)
**Status:** Checkpoint run COMPLETE. No builds performed. Awaiting architect review + Wanda's decisions.
**Full report:** `reports/2026-08-01-youtube-metadata-thumbnail-checkpoint.md`, committed on branch `claude/youtube-metadata-thumbnail-checkpoint-n5ljep`, open as draft PR #3.

---

## 1. What was asked

ChatGPT issued a handoff prompt (dated 2026-07-31) telling Claude Code to run a **checkpoint-only** pass on two "missing" YouTube production lanes:

- **Workstream A** — a skill for descriptions, links, pinned comments, tags, hashtags, chapters, SEO metadata.
- **Workstream B** — a downstream system that creates the actual thumbnail image (not strategy, not a prompt).

Required: canonical-status reconciliation, source-universe evaluation, capability audit, source-to-reference plan, architecture recommendation. Explicitly forbidden: editing, building, overwriting, archiving, or retiring anything.

**That instruction was followed exactly.** Nothing was built or changed. Receipt in §11 of the report.

---

## 2. THE BIG CORRECTION — Workstream A is not a new build

`03_BUILD_ORDER_AND_STATUS.md` (found on Drive, ID `1ONKmMctRg9Q1QTG1wq2DCYR9jnQvzvWk`, last updated 2026-06-04) records:

> **`youtube-seo-metadata` — Phase 0 checkpoint-approved 2026-05-18. 18/18 manual tests passed on first run. Phase 1 may begin.**

- Descriptions **already live inside it** (reference `youtube-description-architecture`; locked order: BLUF → primary CTA link → chapters → teaching summary → resources → channel context).
- `youtube-description-writer` **never existed** — correctly deferred, no duplicate ownership. The handoff's instruction to "keep it deferred" is already satisfied.
- The handoff was right that "next task = youtube-title-strategist" is stale (title-strategist checkpoint-approved 2026-05-16, revised through 2026-05-30).

**Architect implication:** do not scope a green-field build. Scope a **patch + Phase 1** cycle: freshness update, link-registry wiring, objective validator, live tests.

---

## 3. Workstream B — current state

| Component | Verdict |
|---|---|
| `youtube-thumbnail-strategist` | **EXISTS, fully recovered** from Drive zip `1DQySo8rWXqKUjnvDJC8HgNTZBJ1h6fyF` (2026-07-11): SKILL.md v0.2, 14 references, `validate_thumbnail_output.py`, 16 tests. Do not rebuild. Only skill in the suite lacking an explicit checkpoint-approval date (build-order ambiguity worth resolving). |
| Image Generator Brief | **Schema recovered, 10 fields**, and identical across strategist SKILL.md, brief template, and GPT instructions: Video Title · Approved Thumbnail Text · Core Angle · What Chloe Is Feeling · What Wanda Wants Chloe to Feel · Main Promise/Shift · Approved Visual Concept · Facial Expression/Pose · Do Not Include · Brand/Style Notes. **This is the stable interface regardless of which generator wins.** |
| ChatGPT Thumbnail Generator GPT | **Created but unverified — the handoff's read was correct.** Instructions FINAL (`image_generation_first`, 2026-05-15) + knowledge folder + live GPT URL exist. Missing: any test suite, any likeness-verification loop, any documented step for pasting the brief in (the cheatsheet starts mid-workflow at revision time), and 3 named knowledge files are unfindable (`approved-thumbnail-examples.md`, `rejected-thumbnail-examples.md`, `chloe-symptom-language-bank.md`). |
| `04_THUMBNAIL_SKILL_CHECKPOINT.md` | **ACCESS GAP.** Not on Drive, not local. Not recreated from memory, per instruction. Strategist status facts survive inside 03_BUILD_ORDER. |
| Locked Video 1 packaging | **Found, intact, not reopened**: title "Why Nobody's Buying (Even Though You're Doing Everything Right)", thumbnail "POSTING. NO BUYERS.", SEO metadata + Strategy HQ locked (`12_SCRIPT_LAB_REFERENCE_GATE_CHECKPOINT.md`, 2026-06-01). |

---

## 4. Sources located that the handoff assumed missing

- **Canonical link registry EXISTS:** "LINKS HQ — CANONICAL" sheet, ID `1wy_38hhsOwHjkzWmX0TZkFoOpwqa0ovafskRdMsdtOU`, **updated 2026-07-31** (the day before this run). Row-level STATUS: LIVE — CURRENT / NEEDS CHECK / RETIRED. Full offer ladder with client-facing + GHL edit + workflow links. **This is the single URL allowlist. Never duplicate URLs into skills.**
- **All course sources found** (SOURCE ARCHIVE ONLY — evidence, never loaded whole into live skills): A–Z YouTube Academy Masterlist, YouTube Success Blueprint, YouTube Additional Notes, YouTube Research Strategy, Kallaway Thumbnails+Title Psychology summary, Wes McDowell course doc (39MB), YouTube Thumbnails Psychology, Pose Pictures Checklist, YouTube Posting Checklist PDF, YouTube Description + LINKS, Bryan Ng PDFs. IDs in report §3.
- **NotebookLM registry found:** `cloud-brain-notebooks.md` (notebooks themselves are remote-only, CLI-queried).
- **Skill Factory Architect GPT package v3** recovered and read — governance rules confirmed: one job per skill, staged builds never live-first, checkpoint approval before build, 13-check file QA then live smoke test, retirement via thin pointers, sources distilled by job not by book.

---

## 5. ACCESS GAPS — genuinely unreachable (need Wanda)

The numbered governance set is **not on Drive and not local**: `00_SKILL_FACTORY_PROJECT_KNOWLEDGE_OVERRIDE`, `01_APPROVED_SKILL_ARCHITECTURE`, `02_YOUTUBE_SKILL_SUITE_ARCHITECTURE_V1_1`, `04_THUMBNAIL_SKILL_CHECKPOINT`, `05_GLOBAL_RULES_LEARNED`, `06_QA_CHECKLIST_FOR_EACH_SKILL`, `11_SOURCE_UNIVERSE_REGISTER`.

This is **confirmed by Wanda's own `ACCESS_GAPS.md` (2026-06-08)**, which lists them under "Governance NOT FOUND" and notes they are "likely in the Claude Project… not local disk."

Also unreachable: **the installed live skill folders themselves**, including `youtube-seo-metadata`. Only its build-order record is verifiable from here — the actual SKILL.md, references, and tests were never inspected.

Also unfindable: `approved-thumbnail-examples.md`, `rejected-thumbnail-examples.md`, `chloe-symptom-language-bank.md` (closest cousin: `chloe-visible-symptom-language-rules.md`).

---

## 6. Stale platform rules — update any May-era references (all as checked 2026-08-01)

1. **Hashtags: >60 hashtags → YouTube ignores ALL of them.** The widely-taught "15" threshold is outdated. Practical guidance (2–5 relevant) unchanged.
2. **Thumbnail file size: 2 MB mobile / up to 50 MB desktop.** The flat "2MB" rule in old checklists is now mobile-only. Resolution 1280×720, min width 640, 16:9, JPG/GIF/PNG. Custom thumbnails still require phone verification.
3. **Shorts: URLs in descriptions and comments are NON-CLICKABLE** (since Aug 2023). Validates the handoff's Short-form test case.
4. Chapters: first stamp 00:00, ≥3 timestamps ascending, ≥10 seconds each — confirmed current.
5. Description max 5,000 chars; title max 100 chars (official). "~100–157 chars above the fold" and "~70-char title truncation" are **third-party observations, not official** — keep as heuristics, never cite as platform rules.
6. Tags: official wording is "minimal role in discovery," useful mainly for commonly misspelled terms. The 500-char cap is UI-enforced, not documented. **Do not make tags the star** — handoff already had this right.
7. Test & Compare now A/B tests **titles as well as thumbnails**; up to 3 variants, watch-time-share winner, desktop Studio + advanced features, long-form/podcasts only, not Shorts.

---

## 7. Contradictions and drift found (need architect rulings)

1. Brief template lists Canva notes + Matt handoff as standard GPT outputs; GPT instructions demote them to "only if Wanda asks." Template predates the image-generation-first reframe.
2. GPT hard-bans cream/vanilla; visual brand guide legitimizes Cream backgrounds and an "Orange + Cream + Black" approved combo. Reconcilable (guide governs) but defaults pull opposite directions.
3. **Thumbnail text length has three different numbers:** GPT says "2–5 words, 6 max"; brand guide says "3–6 words"; strategist validator hard-fails above 5. Needs one ruling.
4. Strategist validator has drifted from `thumbnail-banned-terms.md`: the md bans `leverage`, `ASAP`, generic `transform`, and "It's not just X — it's Y" (all absent from the script); the script bans `attract` (absent from the md). Also `"note:"` is a substring match that can false-positive.
5. Strategist `references/README.md` lists 9 references; SKILL.md requires 13. README is stale.
6. Validator does **not** check any Image Generator Brief field — the brief can ship incomplete and still PASS.
7. Old "YouTube Description + LINKS" doc carries pre-LINKS-HQ prices/URLs. **Get Off Mute is currently a free GPT, not a course** — validating the handoff's stale-wording test.
8. The Master File Index (2026-07-02, the canonical "where everything lives" doc) indexes **none** of the thumbnail docs, the GPT knowledge files, or the link registry.
9. 03_BUILD_ORDER last touched 2026-06-04 — predates the 2026-07-02 ICA refresh, so skills' Chloe references may carry retired old-ICA language.

---

## 8. Capability audit — the thumbnail question, answered with evidence

**Claude's Canva connector is live in this environment.** Verified via Canva's own help service and the live tool schemas:
- Custom **1280×720** canvas supported (limits are 40–8000 px).
- **Programmatic placement of an existing Canva asset** at exact position/size — meaning Wanda's **real photo, no AI regeneration of her face**. Text layers, crops, layering all supported.
- **PNG/JPG export** confirmed (also PDF, SVG, MP4, GIF, PPTX, CSV).
- Editable design persists in her Canva account.
- **Limit:** the connector can only ingest *new* images from a public HTTPS URL. Approved photos must already live in her Canva asset library — one manual upload, then reusable by asset ID forever.

**vidIQ connector is also live** (110 credits): thumbnail scoring + similar-thumbnail comparison are usable as an advisory/objective-ish check. Its AI generate/refine tools are **off-limits for Wanda's face** under the brand guide's identity rules.

**Against the GPT path:** its verified weakness is identity drift — the Prompt Cheatsheet is largely "make my face look like my real reference photos" fix prompts. Its strengths are native stylized generation and recorded good text-in-image handling.

**RECOMMENDATION (report §8): decide by test, not by debate.**
1. Preserve `youtube-thumbnail-strategist` untouched.
2. Run **one supervised capability test**: approved brief + approved photo in Canva → composite → export PNG at spec → small-size preview → Wanda's two-second QA.
3. **If it passes** → Option 2: canonical creator = Claude (real-photo Canva composite; editable source + export both in her Canva). GPT retires to a thin pointer / backup for stylized non-likeness art.
4. **If it fails on quality** → Option 1: keep the GPT and finish its missing verification work (documented brief handoff, likeness-verification loop, recreated example sets, output spec).
5. **Never** ship a Claude "creator" that only returns prompts. If Canva execution fails, Claude stays strategy-only (Option 3) and says so plainly.

---

## 9. Proposed build order (needs architect + Wanda approval)

1. Wanda resolves access gaps (§5) — export governance docs; point to installed live skills.
2. **Workstream A:** inspect the real `youtube-seo-metadata` folder → freshness patch (new `youtube-metadata-platform-rules.md` with §6 date-stamped rules + LINKS HQ wiring) → objective validator → Phase 1 live tests → checkpoint.
3. **Workstream B:** photos into Canva library → supervised creator capability test (Video 2 is the natural candidate) → decision per §8.
4. Build the winning creator path (staged → file QA → smoke test, per architect protocol); retire the loser to a thin pointer.
5. Update `03_BUILD_ORDER_AND_STATUS.md` with all of the above in one edit, after approvals.

**Minimum new references** (reuse everything else): `youtube-metadata-platform-rules.md`; `thumbnail-export-spec.md` (1280×720, formats, size limits, filename convention `wl-yt-{ep#}-{slug}.png`, small-size QA preview); an approved-photo asset registry (Canva asset IDs). Link rules **reuse LINKS HQ** — do not create a new registry. Metadata exemplar file: defer, no approved packets exist yet beyond locked Video 1.

---

## 10. Questions for ChatGPT (architect) to rule on

1. Do you accept that Workstream A is a **patch + Phase 1**, not a new build? If so, reissue the build prompt accordingly.
2. Ruling on the **thumbnail text word count** (5 vs 6) — validator, brand guide, and GPT disagree.
3. Should the validator be extended to check **Image Generator Brief completeness**? (Currently it doesn't.)
4. Approve the **test-first thumbnail path** (§8) rather than picking an architecture up front?
5. Where should the **visual brand guide** live — promoted to a shared canonical reference used by both the strategist and whichever creator wins? (Today it exists only GPT-side; the strategist package has no palette or fonts at all.)
6. Does the missing `04_THUMBNAIL_SKILL_CHECKPOINT` block progress, or is 03_BUILD_ORDER + the recovered zip sufficient evidence to proceed?

---

## 11. Open items only Wanda can do

1. Export governance docs (00, 01, 02, 04, 05, 06, 11) from the ChatGPT project to Drive.
2. Identify where the live skills are actually installed, so `youtube-seo-metadata` can be inspected for real.
3. Upload 3–5 approved photos to the Canva asset library (or confirm they're there).
4. Confirm LINKS HQ rows marked NEEDS CHECK — old docs disagree on some prices.
5. Decide the **vehicle**: Claude skill vs Claude Project vs Custom GPT vs ChatGPT Skill vs artifact.
   - **Note:** ChatGPT Skills are real (launched July 2026) but appear to be **Business/Enterprise plans only — not Plus/Pro**. Confirm plan before designing for that target.

---

## 12. Receipt

Read-only run. No skill, reference, governance doc, Drive file, or Canva design was created, edited, archived, or retired. Artifacts produced: the checkpoint report and this handoff, both in the Smart-Sales-Page repo (operational scope, not `deliverables/`).

`[no-research]` — operational system handoff, not customer-facing copy; the `research/` library does not govern it.
