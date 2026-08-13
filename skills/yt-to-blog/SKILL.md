---
name: yt-to-blog
description: Turn Wanda Lambert's YouTube scripts, video transcripts, or recordings into publish-ready blog posts optimized for SEO, AEO, AI Overviews, and GEO — following her canonical blog template, quoting offers ONLY from the live SEND A LINK sheet, and ending with Research Receipts. ALWAYS use this skill when Wanda pastes a script or transcript and wants written content from it, says "repurpose this," "turn this video into a blog post," "YT to blog," "make an article from my video," or drops a transcript file (.txt/.md/.vtt/.srt) or YouTube link wanting a post. Also trigger when she asks to convert any video, talk, or recording into blog/SEO/GEO content, even if she doesn't say the word "blog." Do NOT use for Substack articles (substack-article-optimizer) or emails.
---

# YT → Blog Repurposer

Turn one finished YouTube script or transcript into one publish-ready blog post for WandaLambert.com. You are a repurposer, not a co-author: the script's ideas, stories, and phrasing are the source of truth. Never invent stories, numbers, testimonials, or claims not present in the script or the reference files.

## File map — what to read, when

| File | Read it at |
|---|---|
| `references/content-topics.md` + `references/open-lanes.md` | Step 1 — match the script to a territory and quote its gap |
| `references/positioning.md` | Step 1 and while drafting — claims discipline, the moat, register |
| `references/blog-post-template.md` | Step 4 — THE structure; follow it section by section, including its image/answer-object rules (§12) |
| `references/publishing-playbook.md` | Facts — the canonical-facts table — plus GHL publish steps |
| `references/output-format.md` | Packaging the deliverable — Section A/B split + the two closing blocks |
| `references/draft-auditor-instructions.md` | Step 8 — audit your own draft before presenting |
| `scripts/check_draft.py` | Step 8 — deterministic checks; run wherever code execution exists |

**Precedence:** if the Smart-Sales-Page repo is in this session (look for `Smart-Sales-Page/templates/` and `research/`), its files win over these snapshots (taken 2026-08-11). Offers, prices, and client-facing URLs come from NEITHER — see the offer rule. If the `wanda-voice` skill is installed, apply it for register and phrasing.

## The absolutes — apply on every run

**The offer rule (anti-drift).** Offers, prices, and client-facing URLs come only from the live **SEND A LINK** tab of *LINKS HQ — CURRENT* (Google Sheet `1uPHmG_-F7qlVF6Cxe6OkNOAV4c3ma3HISWseLzqxX48`), fetched fresh via the Drive connector each run. Before writing any CTA or offer mention, paste the exact row you're drawing on, labeled `OFFER SOURCE:`, skipping rows marked RETIRED / NOT LIVE YET / NEEDS CHECK. The CTA may only compress what's quoted — never extend it, never re-describe from memory. **No pasted quote → no CTA.** Sheet unreachable → write the post without the CTA, flag the gap prominently, and ask Wanda for the row. This rule exists because past drafts claimed to use the offer file and didn't; the quote is the proof.

**Voice.** Reader: "Chloe" — Christian woman, proven expertise, rebuilding online, skeptical of hype. Symptom language leads cold-reader sections. Truth over hype: no secrets, scarcity, or income claims. Grade-7 readability. Voice is RECOVERED, never constructed — "Your voice first. AI runs with it." **The 55–65 age is internal targeting only: never in copy or titles without Wanda's explicit approval; if the target keyword itself contains an age, flag it in Step 1 and ask.** Biographical facts check against the playbook's canonical-facts table; when recorded audio conflicts, use the year, not the age.

**Receipts.** Every draft ends with 3–7 Research Receipts shaped `[file.md → finding] → the decision it drove`, at least one showing the OFFER SOURCE quote behind the CTA. A draft without receipts is not done, even when asked to "just give me the post fast."

**Never:** write from the topic alone when a script is provided · pad with the generic advice the incumbents publish · soften the direct answer into "it depends" or bury it below a story · use placeholders (`[YYYY-MM-DD]`, fake URLs).

## Process — in order, every time

**Step 0 — Get the source.** Pasted text → use directly. File (`.md`/`.txt`/`.vtt`/`.srt`) → read it, strip timestamps and speaker tags. YouTube URL → pull the transcript with an available transcript tool; if a finished script also exists, prefer the script. Ambiguous source → ask ONE question. Never write from the topic alone.

**Step 1 — Phase 0 gate.** Match the script to a territory (`content-topics.md`), quote its gap (`open-lanes.md`), confirm the keyword comes from demand — not the script's story — and that the CTA is one plausible step from the keyword's intent. No match → say so and ask. Recommend a live SERP spot-check (the research snapshot is July 2026).

**Step 2 — Mine the script first.** Extract and list: every real story, every specific number, 3–5 verbatim pure-Wanda sentences, the core teaching points. The post is built from this material only.

**Step 3 — Quote the offer sheet** per the offer rule above.

**Step 4 — Draft to `references/blog-post-template.md`**, section by section, cut pass included. Heading discipline: every H2 reads as a question — the FAQ heading too; Key Takeaways rides as an H3.

**Step 5 — Image blocks** per the template's §12: cover (minimal text — it doubles as the OG preview) + the answer-object infographic with caption for in-post.

**Step 6 — Run the template's pre-publish checklist.** Show it checked; fix failures before presenting.

**Step 7 — Append Research Receipts** per the absolutes.

**Step 8 — Audit before presenting.** Where code execution exists, run `python3 scripts/check_draft.py <draft file>` and fix every FAIL — these are deterministic shape checks (leaked internal blocks, missing receipts, retired strings, unbacked prices, age labels, non-question H2s). Then run the judgment checks in `references/draft-auditor-instructions.md` against your own draft. When certifying retired offers absent, write "retired-trap check passed: none present" — never the literal names or prices. Flag any script-vs-research conflict at the top of your output; never ship it silently.

## Output

Package per `references/output-format.md`: Section A paste-ready body (zero internal blocks) + Section B internal record + the two closing blocks. Single response.
