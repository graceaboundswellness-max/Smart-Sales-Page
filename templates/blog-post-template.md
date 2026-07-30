# Blog Post Template — SEO / AEO / AI Overviews / GEO

Built from the cross-territory playbook in `research/open-lanes.md`: on Wanda's 15 SERPs, almost no incumbent answers up front, uses question-shaped structure, or writes to her reader. This template is those gaps turned into a repeatable structure. It optimizes for four surfaces at once:

- **SEO** — classic Google ranking (title match, structure, freshness, E-E-A-T)
- **AEO** — answer-engine optimization (featured snippets, People Also Ask)
- **AIO/GEO** — being quoted by AI Overviews, ChatGPT, Claude, Perplexity (citable direct-answer sentences, named frameworks, FAQ blocks)

Target length: **1,800–3,000 words** (the beatable-winner range across the researched SERPs). Reading level: **grade 7**. Register: truth over hype.

---

## 0 · Metadata block (fill before writing)

```
Territory:            [one of the 15 — from research/content-topics.md]
Primary query:        [exact phrase]
AEO question:         [the human-phrased version a real woman types/asks Siri]
The gap I'm filling:  [1 sentence, copied from open-lanes.md]
Title tag (≤60 char): [see title patterns below]
Meta description (≤155 char): [must contain the direct answer, not a teaser]
URL slug:             [exact-match to primary query, short]
Author:               Wanda Lambert [+ one-line credential]
Published date / Last updated: [real dates — freshness stamps win these SERPs]
```

**Title patterns that win these SERPs** (from the research): question-form ("Is It Wrong for…?"), number + fix-promise ("7 Fixable Reasons…"), or first-person proof ("How I…" / "What I Know After Rebuilding Five Times"). Include the age/faith/audience qualifier when the territory supports it — no incumbent does.

## 1 · The Direct Answer (first 2–3 sentences — non-negotiable)

Answer the AEO question completely, immediately, before any story or setup. This is the single biggest gap across all 15 territories — incumbents bury the answer 300–4,500 words down. This paragraph is what the featured snippet, AI Overview, and ChatGPT will quote.

Rules:
- 40–60 words. Standalone — makes sense with zero surrounding context (that's what AI engines extract).
- Plain declarative sentences. The actual verdict, not "it depends."
- Bold it or set it off visually.

## 2 · The Mirror (2–4 short paragraphs)

Show the reader you know her exact situation — in her symptom words (the Chloe vocabulary), not marketing words. This is where the YT script's story material goes first: the moment, the specific detail, the thing she said to herself.

Rules: first-person or direct second-person. One real story beat from the script. No throat-clearing ("In today's digital landscape…" = delete).

## 3 · Why the usual answers fail (1 question-shaped H2)

Name what she's already tried or already read (the incumbents' advice: the templates, the mindset work, the "post more" advice) and say precisely why it didn't work. This is differentiation-by-contrast — the research shows exactly what the other answers say, so contradict them specifically, not vaguely.

## 4 · The Core Teaching (2–4 question-shaped H2s)

The heart of the repurposed YT script. Each H2 is a question a searcher would actually type (these feed People Also Ask + AI engines). Under each:

- Open with a 1–2 sentence direct answer (same extractability rule as section 1).
- Then teach: steps, story, example. **Specific numbers over vague claims** — "660-person list," "25 years," "$1,200," never "many" or "significant."
- If the method has a name, USE the name consistently (named frameworks get cited by AI engines; only one incumbent across 15 SERPs has one).
- One concrete before/after or worked example per H2 where possible — put finished words in the reader's mouth (e.g., an actual one-liner, an actual rewritten sentence).

## 5 · The Honest Limits (1 short section)

One paragraph on what this WON'T fix or when it doesn't apply. This is Truth Over Hype made structural — it's also an E-E-A-T trust signal and it pre-handles the skeptical 55–65 reader's objection.

## 6 · FAQ (3–5 questions)

Verbatim-phrased questions from the territory (variants, People Also Ask phrasings, the AEO question restated). Each answer: 2–4 sentences, standalone, direct. Mark up with FAQPage schema (below). No incumbent on most of these SERPs has an FAQ at all.

## 7 · CTA (one, quiet)

Territory-appropriate next step, stated plainly — no false scarcity, no countdown energy:
- Awareness territories (invisible, burnout, too-old) → the free asset / Substack.
- Diagnosis territories (not getting clients, templates, emails) → the diagnostic → DFY doorway.
- AI territories → the "Your voice first" cornerstone / DFY front door.

One sentence of why, one link. Done.

## 8 · Author box + freshness footer

Named author, 2–3 sentence bio with the load-bearing credentials (certified conversion copywriter; five career rebuilds; 20 years Revlon; teaching AI since 2022) and a real photo. "Last updated [date]" visible on the page — small sites are beating big ones on these SERPs partly on freshness stamps.

## 9 · Schema (paste-ready pattern)

```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Article",
      "headline": "[title]",
      "author": { "@type": "Person", "name": "Wanda Lambert", "url": "[about/founder page URL]" },
      "datePublished": "[ISO date]",
      "dateModified": "[ISO date]"
    },
    {
      "@type": "FAQPage",
      "mainEntity": [
        {
          "@type": "Question",
          "name": "[FAQ question 1]",
          "acceptedAnswer": { "@type": "Answer", "text": "[the 2–4 sentence answer]" }
        }
      ]
    }
  ]
}
```

## 10 · Internal links

2–4 links to related territory posts (the standing pillars in `research/content-topics.md` are the natural hubs). Descriptive anchor text, never "click here."

---

## Pre-publish checklist

- [ ] Direct answer in the first 3 sentences, standalone and quotable
- [ ] Every H2 is a question someone would type
- [ ] Each H2 opens with a 1–2 sentence answer before teaching
- [ ] At least 3 specific numbers; zero vague quantifiers
- [ ] One real story from the source script (not invented)
- [ ] FAQ present + schema
- [ ] Grade-7 readability (short sentences, no jargon)
- [ ] Zero hype-register phrases (no "secrets," "explode," revenue-screenshot energy, false scarcity)
- [ ] Claims check: nothing contradicts `research/positioning.md` claims discipline (e.g., never claim "no faith voice touches AI")
- [ ] Named author, credential, visible last-updated date
- [ ] CTA is one quiet, territory-appropriate step
- [ ] **Research Receipts block appended** (3–7 lines: finding → decision)
