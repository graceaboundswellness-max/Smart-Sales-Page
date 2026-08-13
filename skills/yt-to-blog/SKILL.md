---
name: yt-to-blog
description: Turn Wanda Lambert's YouTube scripts, video transcripts, or recordings into publish-ready blog posts optimized for SEO, AEO, AI Overviews, and GEO — following her canonical blog template, quoting offers ONLY from the live SEND A LINK sheet, and ending with Research Receipts. ALWAYS use this skill when Wanda pastes a script or transcript and wants written content from it, says "repurpose this," "turn this video into a blog post," "YT to blog," "make an article from my video," or drops a transcript file (.txt/.md/.vtt/.srt) or YouTube link wanting a post. Also trigger when she asks to convert any video, talk, or recording into blog/SEO/GEO content, even if she doesn't say the word "blog." Do NOT use for Substack articles (substack-article-optimizer) or emails.
---

# YT → Blog Repurposer

Turn one finished YouTube script or transcript into one publish-ready blog post for WandaLambert.com, built to rank, get quoted by AI engines, and route the reader to a real, current offer.

You are a repurposer, not a co-author. The script's ideas, stories, and phrasing are the source of truth. Never invent stories, numbers, testimonials, or claims that aren't in the script or the reference files.

## Which files to trust (read this first)

1. **If the Smart-Sales-Page repo is available in this session** (look for `Smart-Sales-Page/templates/` and `Smart-Sales-Page/research/`), use ITS files — they are the living system and always win over this skill's copies.
2. **Otherwise use this skill's `references/` folder** — snapshots taken 2026-08-11 (`content-topics.md` refreshed 2026-08-13 — it now opens with THE QUEUE status table): `blog-post-template.md` (the structure to draft to), `positioning.md` + `open-lanes.md` + `content-topics.md` (territory matching and claims discipline), `publishing-playbook.md` (canonical biographical facts + publish steps), `draft-auditor-instructions.md` (the self-audit pass).
3. **Offers, prices, and client-facing URLs come from NEITHER of those.** They come only from the live **SEND A LINK** tab of the *LINKS HQ — CURRENT* Google Sheet (ID `1uPHmG_-F7qlVF6Cxe6OkNOAV4c3ma3HISWseLzqxX48`), fetched fresh via the Google Drive connector each run. This is the sheet's own stated rule, and it exists because past drafts quoted retired offers from stale files. If the Drive connector is unavailable or the sheet can't be read: **write the post without the CTA, flag the gap prominently, and ask Wanda for the offer row.** Never quote a price or offer link from memory, from these references, or from the transcript.

If the `wanda-voice` skill is installed, apply it for register and phrasing. Either way, the voice rules below are non-negotiable.

## Audience & voice (non-negotiable)

- Reader: "Chloe" — Christian woman, proven expertise, rebuilding online, skeptical of hype. She searches symptom language ("why isn't anyone buying"), not category language ("brand messaging help") — symptom words lead cold-reader sections; "messaging" is fine where it reads naturally.
- **The 55–65 age is internal targeting only** (Wanda ruling 2026-07-30): never name an audience age in copy or titles unless Wanda explicitly approves. If the target keyword itself contains an age, flag it in Step 1 and ask.
- Register: truth over hype. No "secrets," no revenue-screenshot energy, no false scarcity, no income claims.
- Grade-7 readability. Specific numbers over vague claims. Bold ≤4 per post, dividers ≤3, no highlighter.
- Positioning spine: "Your voice first. AI runs with it." Voice is RECOVERED, never constructed. Never claim "no faith voice touches AI" (false — see positioning claims discipline).
- Biographical facts check against the canonical-facts table in `publishing-playbook.md`. When recorded audio conflicts, use the year, not the age.

## Process — follow in order, every time

**Step 0 — Get the source text.** Pasted script → use directly. File (`.md`/`.txt`/`.vtt`/`.srt`) → read it, strip timestamps and speaker tags. YouTube URL → pull the transcript with an available transcript tool (e.g., vidIQ's `vidiq_video_transcript`); if a finished script also exists, prefer the script — it's the edited truth. If it's ambiguous which video or script is the source, ask ONE question. Never write from the topic alone.

**Step 1 — Phase 0 gate.** Name the asset's job (ranking / authority / conversion). Match the script to a territory in `content-topics.md`; confirm the keyword comes from demand, not from the script's story. State the territory, quote its gap from `open-lanes.md`, and confirm the CTA is one plausible step from the keyword's intent. If no territory matches or the intent doesn't reach an offer, SAY SO and ask — do not silently proceed. Recommend Wanda spot-check the live SERP (the research snapshot is from July 2026; SERPs move).

**Step 2 — Mine the script FIRST.** Before drafting, extract and list: (a) every real story/moment, (b) every specific number, (c) 3–5 verbatim pure-Wanda sentences for reuse, (d) the core teaching points. The post is built from this material only.

**Step 3 — Quote the offer sheet (the anti-drift rule).** Fetch the SEND A LINK tab now. Before writing any CTA or offer mention, paste the exact row you are drawing on, labeled `OFFER SOURCE:`. Skip any row whose status is RETIRED / NOT LIVE YET / NEEDS CHECK. The CTA may only compress or rephrase what's quoted — never extend it, never re-describe the offer from memory. **No pasted quote → no CTA.** If the sheet lacks what you need or can't be reached, stop the CTA and ask instead of improvising. Known retired traps that must never appear: Messaging Made Easy (any price), the $97 Pick My Brain (now Breakthrough Message Session, $297 — but confirm even that against the sheet).

**Step 4 — Draft to the template.** Follow `blog-post-template.md` exactly: metadata block (zero placeholders, SEO title 50–60 chars) → direct 40–60-word answer up top → 3–5 Key Takeaways bullets, each a distinct standalone claim → mirror in symptom words → why the usual answers fail → core teaching under question-shaped H2s, each opening with a mini-answer, with ≥2 extractable structures (tables/checklists/numbered processes) and 3–5 outbound citations (specific pages, never homepages, authoritative non-competing sources) → YouTube embed near the top with a 2–3 sentence video summary → story ≤300 words AFTER the practical content → honest limits → visible FAQ (3–5) → one quiet CTA (from Step 3's quote) → author box → Article + Person schema (blog-level; no HowTo). Finish with the cut pass: delete heading-restating openers, callbacks, recaps, padding.

Heading discipline: **every H2 in the body reads as a question, including the FAQ heading** (e.g., "What else do women ask about [topic]?" or "Still have questions about [topic]?"). Keep the Key Takeaways block heading as an H3 under the direct answer, not an H2 — the H2 rule stays clean and the takeaways still extract.

**Step 5 — Image blocks.** For every image (cover required, 1–2 in-post informational graphics max): concept prompt (NOTHING about colors/fonts/style), context (the section it supports), size (cover 1200×630 / in-post 1200px wide), file name (`lowercase-hyphens-with-keyword.webp`), alt text (≤125 chars, keyword natural), and a one-line caption for in-post infographics. For posts built on steps, frameworks, comparisons, or checklists, one in-post graphic is the **answer object**: a single comprehensive infographic showing the complete idea in one visual. Two rules travel with it: every lesson in the graphic must also exist as body text near it (a reader or crawler never recovers the lesson from pixels), and the **cover stays minimal-text** — it doubles as the social/OG preview, and Google advises against text-heavy preview images. The infographic is inline only, never the preview.

**Step 6 — Run the pre-publish checklist** from the template. Show it checked. Fix failures before presenting.

**Step 7 — Append Research Receipts.** 3–7 lines shaped `[file.md → finding] → the decision it drove`, citing the reference files actually used. Include at least one receipt showing the OFFER SOURCE quote behind the CTA. A draft without receipts is not done, even when asked to "just give me the post fast." If research didn't shape a decision, say so explicitly and why.

**Step 8 — Self-audit, then flag conflicts.** Run the checks in `draft-auditor-instructions.md` against your own draft (offer-source integrity, receipts are real, structure, voice, facts). When certifying that retired offers are absent, do NOT type the retired names or prices literally — write "retired-trap check passed: none present" so no retired string rides along in the internal record. Anything in the script contradicting the research, claims discipline, or canonical facts: keep Wanda's voice, flag the conflict at the top of your output. Never ship it silently.

## Output format — two clearly separated sections, in this order

**SECTION A — PASTE-READY BODY.** The post body only, exactly as it goes into GHL. ZERO internal blocks: no OFFER SOURCE, no receipts, no checklist, no metadata, no image prompts. Open with `===== PASTE-READY BODY (starts below this line) =====` and close with `===== END PASTE-READY BODY =====`.

**SECTION B — INTERNAL RECORD (never published).** Metadata block + image blocks + schema JSON + checked checklist + OFFER SOURCE quote + receipts + the two closing blocks below.

Single response. Questions ONLY at Step 1 ambiguity or a missing offer — otherwise proceed.

**Closing block 1 — POST-PUBLISH PROMPTS (always append):**
```
AFTER YOU PUBLISH — do these while the tab is still open:
1. Google Search Console → URL Inspection → paste the live URL → Test Live URL → Request Indexing
2. Bing Webmaster Tools → URL Submission → paste the live URL
   (Bing feeds ChatGPT and Copilot answers — this IS the GEO step, don't skip it)
3. Confirm the Blog link is in the site nav and the new post appears on the blog index page
4. Edit ONE older related post to add a link to this new post (descriptive anchor — never "click here")
5. Paste the LOG ROW below into the content tracker
6. Flip this topic's row to PUBLISHED (+ live URL) in THE QUEUE table of content-topics.md
   (repo copy is the master; refresh any Project-knowledge copies of the file too)
```

**Closing block 2 — TRACKER FIELDS (always append).** Output labeled values for the CONTENT TRACKER tab's existing columns — do not invent a row format: DATE (MM-DD-YYYY), TITLE, TYPE (Blog Post), STATUS (PUBLISHED), BLOG col G (live URL), EDIT/BACKSTAGE (GHL edit URL), Target keyword, Angle, Awareness stage, Content pillar (Unbury Your Message | AI Without the Ick | Safe to Be Seen), Truth Over Hype lens (YES/NO), then the BLOG band checkboxes (YES/NO/N/A only): draft repurposed from script, SEO keyword+meta, AEO FAQ answered, AIO/GEO quotable answer+stats, images featured+main, YT embed+internal offer links, PUBLISHED link in G, blog link → YT description (leave for Wanda), NOTES.

## What you never do

- Never write from the topic alone when a script is provided.
- Never describe an offer without quoting the sheet first (Step 3).
- Never pad with the generic advice the incumbents already publish — that's what we're beating.
- Never soften the direct answer into "it depends" or bury it below a story.
- Never add urgency, scarcity, income claims, or placeholder values (`[YYYY-MM-DD]`, fake URLs).
- Never skip receipts, the checklist, the self-audit, or the image blocks.
