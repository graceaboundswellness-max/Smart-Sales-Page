# Checkpoint Report — YouTube Metadata + Thumbnail Production Lanes

**Date:** 2026-08-01 · **Run mode:** checkpoint only (no builds, no edits to canonical files)
**Requested by:** Wanda, via ChatGPT-architect handoff prompt dated 2026-07-31
**Builder:** Claude Code (this session). ChatGPT remains architect/QA.

---

## 1. Current canonical status — both workstreams

### Workstream A — youtube-seo-metadata

**The handoff's core premise is wrong: this skill already exists and is Phase-0 approved.**

Per `03_BUILD_ORDER_AND_STATUS.md` (Drive ID `1ONKmMctRg9Q1QTG1wq2DCYR9jnQvzvWk`, last updated 2026-06-04):

- `youtube-seo-metadata` — **Phase 0 checkpoint-approved 2026-05-18, 18/18 tests passed on first run. Phase 1 (live testing) may begin.**
- Descriptions already live inside it (reference `youtube-description-architecture`; locked description order: BLUF → primary CTA link → chapters → teaching summary → resources → channel context).
- `youtube-description-writer` **does not exist and never did** — correctly deferred; no duplicated ownership.
- The handoff is right that "next task: youtube-title-strategist" is stale — title-strategist was checkpoint-approved 2026-05-16 and revised through 2026-05-30.

**So Workstream A is not a green-field build.** The real work is: (1) locate and inspect the installed skill folder — see Access Gaps, the skill's own files are not reachable from this session, only its build-order record; (2) a freshness patch (platform rules changed since May — §5); (3) wiring it to the now-found canonical link registry; (4) Phase 1 live testing; (5) an objective validator (none exists yet — validator was optional in the original build).

### Workstream B — thumbnail production

| Component | Status | Evidence |
|---|---|---|
| `youtube-thumbnail-strategist` | Exists, v0.2, "Phase 0 complete" + Chloe Clarity Checkpoint added post-QA. Full snapshot recovered from `youtube-thumbnail-strategist.zip` (Drive, 2026-07-11): SKILL.md + 14 references + `validate_thumbnail_output.py` + 16 tests. **Only skill in the suite with no explicit checkpoint-approval date** (build-order ambiguity). | zip `1DQySo8rWXqKUjnvDJC8HgNTZBJ1h6fyF` |
| Image Generator Brief schema | Recovered, 10 fields: Video Title · Approved Thumbnail Text · Core Angle · What Chloe Is Feeling · What Wanda Wants Chloe to Feel · Main Promise/Shift · Approved Visual Concept · Facial Expression/Pose · Do Not Include · Brand/Style Notes. Identical in strategist SKILL.md, brief template, and GPT instructions — **schema is consistent across all three**. | strategist SKILL.md; `thumbnail-brief-template.md` |
| ChatGPT Thumbnail Generator GPT | "Created" confirmed: instructions FINAL (`image_generation_first`, 2026-05-15), knowledge folder, live GPT URL in the cheatsheet. **Not verified:** no test suite, no likeness-verification loop, no documented brief-handoff step (the cheatsheet starts mid-workflow at revision time), and its named knowledge files `approved-thumbnail-examples.md`, `rejected-thumbnail-examples.md`, `chloe-symptom-language-bank.md` are findable nowhere. The handoff's read — "generator verification and production integration is the missing work" — is **correct**. | folder `1JBHUUqpi44aDQCU5H5_xE7FiExia8c7c` |
| `04_THUMBNAIL_SKILL_CHECKPOINT.md` | **ACCESS GAP** — not in Drive, not local. Not recreated from memory (per instruction). The strategist's status facts survive inside 03_BUILD_ORDER. | Wanda's own `ACCESS_GAPS.md` (2026-06-08) confirms the numbered governance set never reached Drive |
| Locked Video 1 packaging | Found and intact: title "Why Nobody's Buying (Even Though You're Doing Everything Right)", thumbnail text "POSTING. NO BUYERS.", SEO metadata + Strategy HQ locked, per `12_SCRIPT_LAB_REFERENCE_GATE_CHECKPOINT.md` (2026-06-01). **Not reopened by this run.** | `1J1dT60adNExfZf6vrBbUAxL0DLJ4vrPM` |

---

## 2. Source-intake table (required labels)

| Source | Label | Location / note |
|---|---|---|
| 03_BUILD_ORDER_AND_STATUS.md (2026-06-04) | INSPECT NOW — inspected | Drive `1ONKmMctRg9Q1QTG1wq2DCYR9jnQvzvWk` |
| youtube-thumbnail-strategist.zip (2026-07-11) | INSPECT NOW — inspected; DOWNSTREAM PRESERVATION (do not rebuild) | Drive `1DQySo8rWXqKUjnvDJC8HgNTZBJ1h6fyF`; extracted working copy in session scratchpad |
| Thumbnail Generator GPT instructions + brief template + cheatsheet (2026-05-15/16) | INSPECT NOW — inspected | Drive folder `1JBHUUqpi44aDQCU5H5_xE7FiExia8c7c` |
| wanda-visual-brand-guide-for-thumbnails.md (2026-05-15) | FOCUSED LIVE REFERENCE (newest canonical visual-brand system found; hex palette, fonts, 4 layouts, face-integrity spec, export filename convention) | Drive `1hkyAaywh14Uvxp7UKniGQigW0UKKchRc` |
| **LINKS HQ — CANONICAL** (sheet, **2026-07-31** — live yesterday) | FOCUSED LIVE REFERENCE — the canonical offer-and-link registry the handoff asked for. Row-level STATUS flags (LIVE — CURRENT / NEEDS CHECK / RETIRED). URLs must never be duplicated into skills. | Drive `1wy_38hhsOwHjkzWmX0TZkFoOpwqa0ovafskRdMsdtOU` |
| 12_SCRIPT_LAB_REFERENCE_GATE_CHECKPOINT.md | LOCKED INPUT (Video 1 packaging) — inspected, not reopened | Drive `1J1dT60adNExfZf6vrBbUAxL0DLJ4vrPM` |
| Skill Factory Architect GPT package v3 | INSPECT NOW — inspected (governance rules: one job per skill, staged builds, checkpoint before build, QA/smoke-test protocol, retirement thin-pointers) | Drive zip `1kpdPRc-R4mWpLM3G9g18BdOsxg5rsJKg` |
| MASTER FILE INDEX — UPDATED 2026-07-02 | INSPECT NOW — inspected. Blind spot: none of the thumbnail docs, the GPT knowledge files, or a link registry are indexed in it. | Doc `1lrRRhZ2xVnAeNNVoPkZl4e0OTYRgZWdekwnJU7YXAlk` |
| YouTube Description + LINKS (2025-07-29) + "UPDATED" variant (2025-02-05) | SOURCE ARCHIVE ONLY — prices/URLs predate LINKS HQ; contains competitor swipe (ModernMillie, Alex Cattoni). Do not treat as link source. | `1naaltFKOg23TeoP7kA_IZAfUpxriWvuUsrtMJexPJl0` |
| YouTube Posting Checklist.pdf (2024-12-31) | SOURCE ARCHIVE ONLY | `1L0QnR6X1PWYaEpWDAE1_cTzuKjMYyvM9` |
| A–Z YouTube Academy Resource Masterlist · Success Blueprint · Additional Notes · Research Strategy · Kallaway summary · Wes McDowell course doc (39MB) · Thumbnails Psychology · Pose Pictures Checklist · Bryan Ng PDFs | SOURCE ARCHIVE ONLY — all located (IDs in §3). Evidence sources; must not be loaded whole into live skills. Metadata/upload-relevant extracts only, distilled per source-intake rules. | Drive root + YOUTUBE folder |
| cloud-brain-notebooks.md (NotebookLM registry) | SOURCE ARCHIVE ONLY; the four notebooks themselves are remote-only | `1r9r7ZmTY3OZUYxGt80Kgn3mJpfhhisGy` |
| Scripts, hooks, outlines, community posts, cards/end-screens, publishing, analytics | OUT OF SCOPE (per handoff) | — |
| 00/01/02/05/06/11 numbered governance docs · 04_THUMBNAIL_SKILL_CHECKPOINT · approved-thumbnail-examples.md · rejected-thumbnail-examples.md · chloe-symptom-language-bank.md (exact name) · **the installed live skill folders themselves (incl. youtube-seo-metadata)** · ChatGPT project knowledge | **ACCESS GAP** | Confirmed absent from Drive + this repo; Wanda's own ACCESS_GAPS.md (2026-06-08) says the governance set "is likely in the Claude Project… not local disk." Closest cousin found: `chloe-visible-symptom-language-rules.md` (`1XuHwr02R8VIracqSmAHokk1EMWpu1NO6`) |

---

## 3. Sources inspected / inaccessible (IDs)

**Inspected this run:** 03_BUILD_ORDER (`1ONKmMctRg9Q1QTG1wq2DCYR9jnQvzvWk`) · strategist zip (`1DQySo8rWXqKUjnvDJC8HgNTZBJ1h6fyF`) · GPT instructions (`1_hu5tVluDTJKY3Dn6TtM2yz4u81yyXE9`) · visual brand guide (`1hkyAaywh14Uvxp7UKniGQigW0UKKchRc`) · brief template (`1GL1hb8ieJ5nutUaRk6T9XDMLiLGbuzLC`) · cheatsheet (`1QPkRL__LGME2GTS0bwkI4UIOOuUPWB-lTRwK_Gd_s94`) · Master File Index (`1lrRRhZ2xVnAeNNVoPkZl4e0OTYRgZWdekwnJU7YXAlk`) · LINKS HQ — CANONICAL (`1wy_38hhsOwHjkzWmX0TZkFoOpwqa0ovafskRdMsdtOU`) · 12_SCRIPT_LAB checkpoint (`1J1dT60adNExfZf6vrBbUAxL0DLJ4vrPM`) · architect package zip (`1kpdPRc-R4mWpLM3G9g18BdOsxg5rsJKg`) · ACCESS_GAPS.md (`1ln-pZeK_mKfMuCnHChZYSvQPupOs9gAX`) · current official YouTube platform pages (via web search; see §5).

**Located, archived-only (not deep-read this run):** A–Z Masterlist (`1NE4Yhx_nxQJaNijNcLe49hD_q4awUB2wVczFktsF-1g`) · Success Blueprint (`1f6LWwqoCQoYj_P7-aABwQFZ6XRz30JFU0YMUpMhPVek`) · Additional Notes (`1a_VqP4zZMFjDbq2VZisv7YR6U2NZs2Bbo2sGKkkF8X8`) · Kallaway (`1rnxrBiZNcvptLcT3aAGHbrUDc_mfOrLh-NvmI9g2vCM`) · Wes McDowell course (`1KlEAQzVa8TyTl44lSIcCEMtQ9Cq87kazeh9B2uK8nY8`) · Research Strategy (`1piJf5jkPrlVNKN5qPv4juMwkZJzFKq5yUhYW1oeaH3E`) · Pose Checklist (`1Pt0PQ-or9w7fhwhNKkIO1FxsloGuGm0gXbF7LaQSgYA`) · Thumbnails Psychology (`1KSqd213gRetBq1iROsTCwh-Cr16DM98I132fmo9etJs`).

**Inaccessible:** the seven items listed under ACCESS GAP above; support.google.com raw pages (proxy-blocked; values verified via search-engine renderings of the official pages — flagged where third-party-only).

---

## 4. Unique rules found + exact existing enforcement

- **Strategist validator (`validate_thumbnail_output.py`) enforces objectively:** 12 required output fields; 64 hard-banned terms (all fields); 14 cold-traffic-restricted terms (viewer-facing fields only); thumbnail text ≤5 words; no warning-notes-instead-of-fixes; no 3+ consecutive words repeated from the title pairing. Exit 1 on failure.
- **Subjective gates are deliberately manual:** Chloe Clarity Checkpoint (3-second cold test, warmth/misread, Chloe-language, concrete-over-clever) states "**Validator PASS does not equal final approval.**"
- **Title+Thumbnail Pair Gate** runs internally; evidence block shown only on QA request/smoke test/FAIL.
- **Banned text directions** confirmed as reasoning-examples, not a phrase bank: rejected "IT'S NOT THE WORK / …EFFORT / …STRATEGY / …HUSTLE / IT'S YOUR WORDS" (abstract corrective-negation + diagnosis leak); stronger recorded directions "NO BUYERS / WRONG ROOM / STILL NO YES / NO ONE CLICKS / SAME WALL / RIGHT PERSON?".
- **Visual brand enforcement is split:** hex palette (#E51575 hot pink primary, #F15617 orange co-primary, #FFEA00 yellow highlight-only, etc.), Modelica font system + Canva substitutes, 4 approved layouts, banned shock-face/pointing/churchy-cliché imagery, export filename `wl-yt-{ep#}-{slug}.png` — all live in the **GPT-side** visual brand guide, NOT in the strategist references. The strategist package has no palette/fonts at all (its own text-psychology reference flags visual hierarchy as "not yet built").
- **Face integrity:** brand guide: "Wanda's face is the brand. Use her actual portraits when available… Always confirm the AI got her likeness right; default to real photos." The cheatsheet's many "make my face look like my real reference photos" fix-prompts are recorded evidence of AI likeness drift being a live pain point.
- **Architect governance:** one job per skill · staged builds, never live-first · checkpoint approval before build · file-content QA (13 checks) then live smoke test before retirement · retired skills become thin pointers · sources distilled by job, never dumped.

---

## 5. Gaps, stale information, contradictions, duplicates

**Platform-rule staleness (as checked 2026-08-01; update any May-era references):**
1. Hashtag over-limit rule is now **>60 hashtags → all ignored** (official page), not the widely-taught 15. Practical guidance (2–5 relevant) unchanged.
2. Thumbnail upload limit is now **2 MB mobile / up to 50 MB desktop** — the flat "2MB" rule is stale. Resolution 1280×720, min width 640, 16:9, JPG/GIF/PNG unchanged. Custom thumbnails still require phone verification (feature-access system).
3. **Shorts: URLs in descriptions/comments are non-clickable** — the handoff's Short-form test case is validated.
4. Chapters: 0:00 start, ≥3 timestamps ascending, ≥10s each — confirmed current.
5. Description max 5,000 chars; title max 100 (official). "First ~100–157 chars above fold" and "~70-char title truncation" are third-party observations, not official — keep as heuristics, don't cite as platform rules.
6. Tags: official wording "minimal role… commonly misspelled" — the handoff already had this right. 500-char cap is UI-enforced, not documented.
7. Thumbnail **Test & Compare** now covers titles too: up to 3 thumbnails, watch-time-share winner, desktop Studio + advanced features, long-form/podcasts only.

**Contradictions / drift found:**
8. Brief template says Canva notes + Matt handoff are standard GPT outputs; GPT instructions demote them to "only if Wanda asks." Template predates the image-generation-first reframe.
9. GPT hard-bans cream/vanilla; brand guide legitimizes Cream backgrounds and an Orange+Cream+Black combo. Reconcilable (guide governs) but defaults pull opposite ways.
10. Text length: GPT "2–5 words, 6 max if guide allows" vs guide "3–6 words" vs strategist validator "≤5 words."
11. Validator drifted from `thumbnail-banned-terms.md` (md bans `leverage`, `ASAP`, generic `transform`, "It's not just X — it's Y" — absent from the script; script bans `attract` — absent from the md). Also `"note:"` substring match can false-positive.
12. Strategist `references/README.md` lists 9 references; SKILL.md requires 13. README stale.
13. Old "YouTube Description + LINKS" doc carries pre-LINKS-HQ prices/URLs — duplicate/stale link source; LINKS HQ — CANONICAL (2026-07-31) supersedes. The handoff's "stale Get Off Mute 'course' wording" test is validated: Get Off Mute is currently a **free GPT**, not a course.
14. Master File Index (the "where every file lives" doc) does not index any thumbnail doc, GPT knowledge file, or the link registry.
15. 03_BUILD_ORDER last touched 2026-06-04 — predates the 2026-07-02 ICA refresh and voice supersessions; skills' Chloe references may carry old-ICA language.

---

## 6. Minimum focused references needed

**Workstream A (patch/Phase-1, not new build):**
- `youtube-metadata-platform-rules.md` — **NEW, needed**: the §5 date-stamped rules (hashtag-60, chapters syntax, thumbnail specs, Shorts caveats, 5,000/100 limits, official-vs-heuristic distinction). Must carry "as checked" dates.
- Link handling — **reuse, do not create**: point at LINKS HQ — CANONICAL as the single URL allowlist; skill must refuse rows not marked LIVE — CURRENT and never inline URLs.
- Description/link/pinned-comment rules + output contract — **evaluate against the existing skill's own references first** (blocked on Access Gap: the installed skill folder). Do not author duplicates until it's inspected.
- Tags/hashtags rules — likely fold into platform-rules file rather than a separate reference (tags are minimal-role; don't make them a star).
- Exemplar file — defer; no approved metadata packets exist yet beyond locked Video 1.

**Workstream B (if Claude creator proceeds):**
- Reuse as-is: visual brand guide (promote to shared canonical), brief template/schema, banned-terms.
- NEW, small: `thumbnail-export-spec.md` (1280×720, formats, size limits, filename convention `wl-yt-{ep#}-{slug}.png`, small-size QA preview requirement) — date-stamped.
- NEW: approved Wanda photo asset registry (Canva asset IDs once photos are in her Canva library).
- Recreate only with Wanda: approved/rejected thumbnail example sets (ACCESS GAP — cannot be recovered).

---

## 7. Tests + objective validators needed

**Workstream A** — the handoff's test list stands, with updates: hashtag-limit test uses 60 not 15; add Shorts non-clickable-URL case (already listed); add "row marked NEEDS CHECK/RETIRED in LINKS HQ → blocker, not substitution." Objective validator (new script, per architect rules "scripts only when objective"): required sections; 5,000/100 char limits; URL allowlist vs LINKS HQ export; unresolved placeholders; chapter syntax (0:00 start, ascending, ≥3, ≥10s); duplicate tags; tag-stuffing in description; hashtag count; banned stale offer wordings ("Get Off Mute course"). Voice/persuasion/pinned-comment quality: manual, per Rule 6 boundaries.

**Workstream B** — the handoff's creator test list stands. Objective validator: dimensions/aspect/format/size, required output files, filename convention, input-receipt fields present. Brand fit, facial fidelity, emotional question, two-second clarity: manual visual QA only.

---

## 8. Recommended canonical thumbnail-production path

**Evidence gathered this run (no test build executed — checkpoint only):**
- Canva connector (live in this session, verified via tool schemas + Canva Help): custom 1280×720 canvas; programmatic placement of an **existing Canva asset** (her real photo — no AI regeneration of identity) at exact position/size; text layers; PNG/JPG export; editable design persists in her Canva account. **Limit:** the connector can only ingest *new* images from public URLs — approved photos must already live in her Canva asset library (one manual upload, then reusable by asset ID).
- vidIQ connector (live, 110 credits): thumbnail scoring + similar-thumbnail comparison usable as an *advisory* check; its generate/refine tools AI-generate imagery → **identity risk, off-limits for Wanda's face** under the brand guide.
- The GPT path's verified weakness is identity drift (her own cheatsheet is largely face-fix prompts) and an undocumented brief-handoff step; its strength is native stylized image generation and recorded good text handling.

**Recommendation — decide by test, not by architecture debate:**
1. **Preserve** `youtube-thumbnail-strategist` untouched (its brief schema is the stable interface either way).
2. Next build step is a **one-video supervised capability test** of a Claude `youtube-thumbnail-creator` path: approved brief + an approved photo placed in Canva → composite → export PNG at spec → small-size preview → Wanda's two-second QA. This is the honest resolver of the handoff's three options.
3. **If the test passes:** Option 2 — canonical creator = Claude (Canva composite of her real photo; editable source + export both live in her Canva). GPT is retired to a thin-pointer/backup for stylized non-likeness art. Human steps remaining: photo choice approval, two-second visual QA, YouTube upload.
4. **If it fails on quality:** Option 1 — keep the GPT as producer and finish its missing verification work (documented brief-handoff step, likeness-verification loop against reference photos, recreated approved/rejected example sets, output spec incl. dimensions/format).
5. Do **not** build a Claude "creator" that only returns prompts — if Canva execution fails, Claude stays strategy/handoff (Option 3) and says so.

## 9. Exact build order after approval

1. Wanda resolves Access Gaps (§10) — especially exporting the numbered governance docs and the installed `youtube-seo-metadata` skill folder to an inspectable location.
2. Workstream A: inspect the real skill folder → freshness patch (platform-rules reference + LINKS HQ wiring) → objective validator → Phase 1 live tests (updated list, §7) → checkpoint.
3. Workstream B: photo(s) into Canva library → supervised creator capability test (one video, Video 2 candidate) → decision per §8.
4. Build the winning creator path (staged, file-QA, smoke test per architect protocol); retire the loser to a thin pointer.
5. Update 03_BUILD_ORDER_AND_STATUS.md with all of the above (single edit, after approvals — not in this run).

## 10. Genuinely requires Wanda

1. **Export the numbered governance docs** (00, 01, 02, 04-thumbnail-checkpoint, 05, 06, 11) from the ChatGPT project (or wherever they live) to Drive — your own ACCESS_GAPS.md from June 8 already flagged them as never landing on disk. Without them, canonical-status claims rest on 03 + 12 alone.
2. **Point me at the installed live skills** (the folder/machine/project where `youtube-seo-metadata` and the strategist actually run) — the zip snapshot covers the strategist, but the metadata skill's actual files are unverifiable from here.
3. **Upload 3–5 approved photos to your Canva asset library** (or confirm they're already there) so the creator test can run identity-safe.
4. **LINKS HQ pricing pass:** old description docs disagree with LINKS HQ on offer prices (e.g., MME $17 vs $27 rows); confirm LINKS HQ rows marked NEEDS CHECK.
5. **Vehicle decision** for where this system lives (Claude skill / Project / GPT / ChatGPT skill) — note: ChatGPT Skills (launched July 2026) are Business/Enterprise-plan features, not Plus/Pro, as of this check.
6. Approve/adjust the §8 test-first thumbnail path and the §9 build order.

## 11. Receipt — no canonical files changed

This run performed read-only inspection of Drive, read-only connector checks (Canva Help query, vidIQ balance), and web research. No skill, reference, governance doc, Drive file, or Canva design was created, edited, archived, or retired. The only artifact produced is this report file, added to `reports/` in the Smart-Sales-Page repo (operational scope — not a `deliverables/` item). Working extractions live only in the session scratchpad.

`[no-research]` — this is an operational checkpoint report on the YouTube skill system, not customer-facing copy; the `research/` library (positioning/competitors/open-lanes) does not govern it. Sources used are cited inline above.
