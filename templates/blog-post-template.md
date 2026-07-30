# Blog Post Template — SEO / AEO / AI Overviews / GEO

Built from two sources: the cross-territory playbook in `research/open-lanes.md` (July 2026 SERP research) and the lessons from Wanda's first published post (`templates/publishing-playbook.md`, July 28, 2026). Where the two disagreed, the playbook won — it came from a live publish.

Optimizes four surfaces at once:
- **SEO** — classic ranking (title match, structure, freshness, E-E-A-T)
- **AEO** — answer engines (featured snippets, People Also Ask)
- **AIO/GEO** — being quoted by AI Overviews, ChatGPT, Claude, Perplexity (extractable answers, tables, named frameworks)

Target length: **1,800–3,000 words**. Reading level: **grade 7**. Register: truth over hype.

---

## PHASE 0 — Before writing a word (skipping this is why posts get rebuilt)

**0a. Name the asset's job.** Ranking asset (targets a keyword, answer-first, tables, FAQ) · Authority asset (builds entity/E-E-A-T, story-led, heavy Person schema) · Conversion asset (sells; persuasion first). A story-led piece is an authority asset — don't dress it as a ranking asset and expect it to rank.

**0b. Pull the keyword from demand, never from the content.** Source: the Chloe Keyword Bank / `research/content-topics.md` / her VOC search language. Never write the piece first and then pick a keyword to fit it.

**0c. Search the keyword before committing.** Three questions: Who owns page one (unwinnable domains?) · Does searcher intent match what this post will actually be? · What's the gap nobody serves? (The July 2026 answers per territory are in `research/open-lanes.md` — but SERPs move; re-check before investing.)

**0d. CTA-intent match.** The reader landing on this keyword must be one plausible step from the offer. If not, the keyword is wrong even if winnable.

---

## 1 · Metadata block (fill completely — zero placeholders)

```
Asset job:            [ranking / authority / conversion]
Territory:            [from research/content-topics.md]
Primary query:        [exact phrase, from demand]
AEO question:         [the human-phrased version she actually types]
The gap I'm filling:  [1 sentence — from open-lanes.md or your own SERP check]
Post title (H1):      [see title patterns below]
SEO title:            [50–60 characters — Google truncates ~60]
Meta description:     [150–160 chars, contains the direct answer, not a teaser]
URL slug:             [lowercase-hyphens, exact-match-ish, short]
Category:             [one of the three pillars: unbury-your-message / ai-without-the-ick / safe-to-be-seen]
Author:               Wanda Lambert [+ one-line credential]
Published / Updated:  [real dates]
```

Title patterns that win these SERPs: question-form, number + fix-promise, or first-person proof ("What I Know After Rebuilding Five Times"). Include the age/faith/audience qualifier when the territory supports it — no incumbent does.

Categories are the three content pillars — never invent a second taxonomy. Truth Over Hype is a thread through everything, not a category. Brand name on the category label; search language in the category description (that's where the SEO weight is).

## 2 · The Direct Answer (first 2–3 sentences — non-negotiable)

A complete 40–60 word answer to the AEO question, before any story or setup. Must work if lifted out entirely — this is what snippets, AI Overviews, and chatbots quote. Plain declarative verdict, not "it depends."

## 3 · The Mirror (2–4 short paragraphs)

Her exact situation in her symptom words. **"Messaging" is banned in symptom-aware body copy** — Chloe doesn't have that word; she searches "why isn't anyone buying." (The word is fine in schema and the author bio — bots read those, she doesn't.) No throat-clearing.

## 4 · Why the usual answers fail (1 question-shaped H2)

Name what she's already tried/read and say precisely why it didn't work — contradict the incumbents specifically (the research maps what they say), not vaguely.

## 5 · The Core Teaching (2–4 question-shaped H2s)

- Each H2 = a question a searcher would type. Each opens with a 1–2 sentence direct answer, then teaches in voice.
- **Include at least TWO extractable structures across the post**: tables, checklists, numbered processes, decision frameworks. These are what AI answers pull; prose alone rarely is.
- Specific numbers over vague claims. Named framework used consistently (named frameworks get cited).
- Finished words in the reader's mouth where possible (an actual one-liner, an actual rewritten sentence).

## 6 · Story = evidence, not spine (ranking assets)

One section, **≤300 words**, positioned AFTER the practical content, doing E-E-A-T work. If the story is the spine, it's an authority asset — label it as one in Phase 0 and stop expecting it to rank.

## 7 · The Honest Limits (1 short paragraph)

What this won't fix / when it doesn't apply. Truth Over Hype made structural; pre-handles the skeptical 55–65 reader.

## 8 · FAQ (3–5 questions) — visible on the page

Verbatim-phrased territory questions; each answer 2–4 sentences, standalone. **The visible FAQ does the AEO work — the schema was never the mechanism** (FAQPage rich results removed May 7, 2026; markup is harmless but optional). No special markup is required for AI Overviews — only that structured data match visible text.

## 9 · CTA (one, quiet)

Territory-appropriate, from the offers file — **quote the offer file, don't improvise the offer** (see project instructions). Awareness territories → free asset/Substack · Diagnosis territories → diagnostic → DFY doorway · AI territories → "Your voice first" cornerstone / DFY front door. One sentence of why, one link. No scarcity energy.

## 10 · Author box + freshness footer

Named author, 2–3 sentence bio with load-bearing credentials, real photo, visible "Last updated [date]."

## 11 · Images — plan + generation prompts (deliver with every post)

**Informational > decorative.** A formula graphic or comparison table gets pulled into image search and AI cards; a stock laptop photo just slows the page. Text in images: the image GPT handles type well (proven live 2026-07-30) — send everything to it first; Canva is the fallback only if type comes out wrong.

For EACH image, the draft must deliver this block:

```
IMAGE [n] — [cover / in-post]
Concept prompt:  [describe the concept + any words that must appear — NOTHING about
                  colors, fonts, or style; the image GPT holds the brand and decides]
Context:         [attach/paste the post section this image supports, so the
                  generator understands the idea it's illustrating]
Size:            [cover: 1200×630px (doubles as social share) · in-post: 1200px wide]
File name:       lowercase-hyphens-with-keyword.webp   (never IMG_4471.png; WebP ≈ ⅓ PNG size, speed is a ranking factor)
Alt text:        [describes the image content, works keyword in naturally, ≤125 chars]
```

Cover image is required; 1–2 in-post informational graphics max.

## 12 · Schema — Article + Person, at the BLOG level (not the post body)

GHL sanitizes script tags in the post body (`&lt;script&gt;` = text Google ignores) — schema goes at blog level. **Skip HowTo entirely** (rich results removed Sept 2023). FAQPage optional/harmless. What matters:

```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Article",
      "headline": "[SEO title]",
      "author": { "@id": "#wanda" },
      "datePublished": "[real ISO date]",
      "dateModified": "[real ISO date]"
    },
    {
      "@type": "Person",
      "@id": "#wanda",
      "name": "Wanda Lambert",
      "url": "[founder page URL]",
      "knowsAbout": ["conversion copywriting", "brand voice", "AI writing", "..."],
      "sameAs": ["[Substack]", "[YouTube]", "[Facebook @wandaruizlambert]", "..."],
      "award": ["Distinguished Executive of the Year (December 1999)", "International Educator of the Year (×2)"]
    }
  ]
}
```

Fill knowable fields (`datePublished`, `sameAs`, socials are knowable — omitting them weakens entity work); omit truly unknown ones; **never ship placeholders**. Structured data must match visible text. When recorded audio conflicts with a fact, use the year, not the age.

## 13 · Formatting discipline

Bold **4 things max** per post. No highlighter. Dividers 1–3 total, not between every H2. 2–4 internal links to pillar posts, descriptive anchors.

---

## Pre-publish checklist

- [ ] Phase 0 done: asset job named, keyword from demand, SERP checked (owner/intent/gap), CTA one step away
- [ ] Direct answer in first 3 sentences, standalone and quotable
- [ ] Every H2 is a typed question and opens with a mini-answer
- [ ] ≥2 extractable structures (table/checklist/numbered process/framework)
- [ ] Story ≤300 words, after the practical content (ranking assets)
- [ ] "Messaging" absent from symptom-aware body copy; symptom language throughout
- [ ] ≥3 specific numbers; zero vague quantifiers; zero hype-register phrases
- [ ] Bold ≤4, dividers ≤3, no highlighter
- [ ] SEO title 50–60 chars; meta description 150–160 with the answer in it
- [ ] Visible FAQ present; schema = Article + Person, blog-level, no placeholders, matches visible text
- [ ] Image block complete for every image: concept prompt (no colors/style) + context + size + filename + alt text
- [ ] CTA quotes the offers file (verbatim source shown in receipts)
- [ ] Claims check against `research/positioning.md`; facts check against canonical-facts table in the playbook
- [ ] **Research Receipts block appended** (3–7 lines: finding → decision)
- [ ] **Publish body is clean**: the paste-ready body contains ZERO internal blocks — no OFFER SOURCE, receipts, checklist, metadata, or image prompts (Section A/B split per project instructions)

For the GHL publish itself (field order, gotchas, verification), follow `templates/publishing-playbook.md` Phases 2–5.
