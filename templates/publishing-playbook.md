# THE PUBLISHING PLAYBOOK
## The GHL publish process, gotchas, schema truth, and canonical facts

Use this before every post. `blog-post-template.md` governs the writing; this file governs Phases 2–5 (prep, build, verify, after), the gotchas table, schema, and the canonical-facts table.

---

# PHASE 0 — BEFORE WRITING A WORD

Skipping this phase is why posts get rebuilt from scratch.

### 1. Name the asset's job

| Job | What it does | Structure |
|---|---|---|
| **Ranking asset** | Targets a keyword, competes in search | Answer-first, tables, FAQ |
| **Authority asset** | Builds entity + E-E-A-T, gets cited by AI | Story-led, heavy Person schema |
| **Conversion asset** | Sells | Persuasion first, keyword secondary |

A podcast story is an **authority** asset. Don't dress it as a ranking asset.

### 2. Pull the keyword from demand, never from the content

Source it from the **Chloe Keyword Bank**, `research/content-topics.md`, or her VOC search language.

❌ Wrote a hurricane story → picked "starting over in your 50s" to fit it
✅ Picked "how to explain what you do" from the bank → built content to serve it

### 3. Search the keyword before committing

- **Who owns it?** "Starting over in your 50s" is BetterUp, LifeHack, established midlife blogs. Unwinnable from a new subdomain.
- **Does intent match?** Those searchers wanted retirement planning. Even ranking wouldn't have sold Get Off Mute.
- **What's the gap?** Everything ranking for "how to explain what you do" assumes you have *one* thing to compress. Nothing served the woman with 25 years across four roles. **That gap is the whole opening.**

### 4. Check the CTA matches the intent

A reader landing on this keyword must be one plausible step from the offer. If not, the keyword is wrong even if you could win it.

---

# PHASE 1 — WRITE IT

### Answer-first architecture

Models cite extractable passages. They don't cite stories.

- **Opening paragraph = a complete 40–60 word answer.** Must work if lifted out entirely.
- **Every H2 opens with the answer**, then adds voice.
- **Each section stands alone.**

### Include at least two of these

Tables, checklists, numbered processes, decision frameworks. **These are what get pulled into AI answers.** Prose alone rarely is.

### Story is evidence, not spine

One section. ~300 words. Positioned *after* the practical content, doing E-E-A-T work. If the story is the spine, it's an authority asset — label it and stop expecting it to rank.

### Voice rules

- **Symptom language, not solution language.** She searches "why isn't anyone buying," never "brand messaging help." "Messaging" is not banned — use it where it reads naturally, just don't let it displace symptom language at the top.
- Bold **4 things max**. It stops working when it's everywhere.
- No highlighter. Clashes with the brand, competes with bold.
- Dividers: 1–3, not between every H2.

---

# PHASE 2 — PREP BEFORE YOU TOUCH GHL

Have all of this open in one file. Fill everything. **Zero placeholders.**

- [ ] Post title (the H1)
- [ ] SEO title — **50–60 characters** (Google cuts at ~60)
- [ ] Meta description — 150–160 characters
- [ ] URL slug
- [ ] Category name + slug + description
- [ ] Keywords, **comma-separated on one line** — pasting the whole line works
- [ ] Cover image + filename + alt text
- [ ] Image generation prompts (block below)
- [ ] Body copy in markdown
- [ ] Schema JSON-LD, fully filled

### Image rules

- **Informational > decorative.** A formula graphic or comparison table gets pulled into image search and AI cards. A stock photo of a laptop does nothing but slow the page.
- Send anything with words to the image GPT first — it handles type well. Canva is the fallback only if type comes out wrong.
- Filenames: `lowercase-hyphens-with-keyword.webp`. Never `IMG_4471.png`.
- WebP if available — ~⅓ the size of PNG, and speed is a ranking factor.
- Cover images stay minimal-text: the cover doubles as the social/OG preview, and text-heavy previews are discouraged. The text-dense infographic stays inline.

### Image prompt block — required per image

```
IMAGE [n] — [cover / in-post]
Concept prompt:  the concept + any words that must appear. NOTHING about colors,
                 fonts, or style — the image GPT holds the brand and decides.
Context:         paste the post section the image supports, so the generator
                 understands the idea — it does a visibly better job with it.
Size:            cover 1200×630px (doubles as the social share image) · in-post 1200px wide
File name:       lowercase-hyphens-with-keyword.webp
Alt text:        describes the image, works the keyword in naturally, ≤125 chars
Caption:         in-post infographics only — one line under the graphic
```

---

# PHASE 3 — BUILD IN GHL (exact order)

### ⚠️ START HERE: **Sites → Blogs → click "Wanda Lambert Blog" → New Post**

**Do NOT click "Create blog."** That makes an entire second blog. It cost a whole build.

**Do NOT use the Content AI panel.** "Describe the blog post topic" is a prompt box for generating a new post — not the meta description. It overwrites your work.

Then, top to bottom:

| # | Field | Note |
|---|---|---|
| 1 | Post title | Becomes your H1 |
| 2 | URL slug | Replace the auto `new-blog-post-####`. Live URL is `/post/`, **not** `/blog/` |
| 3 | Category | Create here if new — needs label, slug, description |
| 4 | Author | |
| 5 | Canonical | Self-referencing or **blank**. Never point at a URL that doesn't exist |
| 6 | Keywords | Comma-separated on one line pastes fine ✅ |
| 7 | SEO Title | The short 50–60 char version |
| 8 | Post description | |
| 9 | Cover image + alt text | |
| 10 | Body | **Paste from below the H1** — GHL creates the H1 from the Title field. Two H1s is the one heading mistake that matters |
| 11 | Verify headings | Confirm H2s rendered as headings, not bold text |
| 12 | Publish | |

### 🚫 Schema does NOT go in the post body

GHL sanitizes script tags there — they become text *about* a script tag, which Google ignores. The Custom HTML block prints **"Custom HTML/CSS/JavaScript"** as visible text to readers. **Schema goes at the blog level.**

---

# PHASE 4 — VERIFY

1. **Hard refresh** (Cmd+Shift+R). View Source caches aggressively and will lie to you.
2. **Look at the live page, not the source.** Scroll the bottom for stray code.
3. **Confirm the live URL** matches your canonical and schema.
4. Once schema is placed: **validator.schema.org**.
5. Open it on your phone.

---

# PHASE 5 — AFTER

- **Search Console → URL Inspection → Test Live URL, then Request Indexing.** The live test is the only trustworthy fetch check — never conclude "the site blocks bots" from an automated fetch without GSC's verdict.
- **Bing Webmaster Tools → URL Submission** — Bing feeds ChatGPT/Copilot answers; this is the GEO step.
- **Paste the post's LOG ROW into the content tracker** (every draft outputs one).
- Delete any placeholder blogs.
- Link to the post from your About page.
- **Link the new post FROM one older related post** — edit the old post, use a descriptive anchor, never "click here." Nothing sits orphaned, older posts pass authority forward, and every important page stays within two clicks of the homepage.
- **Blog must be in the site nav menu.** Nav link target is `https://blog.wandalambert.com/blog` (the index), NOT the bare subdomain, which returns 404. Posts sit at `/post/<slug>`. Verify the link resolves after any header edit.
- **Sitemap — one-time check, not per-post:** confirm GHL's XML sitemap is submitted in Search Console; re-verify only if the blog's structure changes.

---

# GHL GOTCHAS — the reference table

| Thing | Reality |
|---|---|
| "Create blog" | Makes a whole new blog site. **Almost never what you want** |
| "Describe the blog post topic" | AI generator prompt, not meta description |
| Blog post URL path | `/post/` not `/blog/` |
| Auto slug | `new-blog-post-####` — always replace |
| Canonical field | For cross-domain republishing. Blank is safer than wrong |
| Script tags in body | Sanitized to HTML entities. Won't work |
| Custom HTML block | Renders its label as visible text — leave the label blank |
| Blog name | Shows above every post title. Edited at **blog level**, not post level |
| RSS feed name | Separate field from blog name |
| Keywords field | Comma-separated single paste works ✅ |
| Categories | Have their own slug, description, and canonical |
| Meta keywords | Dead since 2009. Skip it |
| Image insertion | Through the editor → standard crawlable `<img>`, never background styling |

---

# SCHEMA TRUTH

| Type | Status | Verdict |
|---|---|---|
| **HowTo** | Rich results removed 2023 | No SERP benefit. Skip |
| **FAQPage** | Rich results removed May 2026 | No SERP benefit. Harmless to keep |
| **Article** | ✅ Still active | **The one that matters** — author display, sitelinks search box |
| **Person** | ✅ Entity data | Load it up: `knowsAbout`, `sameAs`, `birthPlace`, awards |
| **VideoObject** | Only if you host the video | Never claim someone else's |

**The key reframe:** the **visible** FAQ section does the AEO work. The schema was never the mechanism. AI Overviews require no special markup — only that structured data match visible text.

**Fill known fields, omit unknown ones.** `datePublished`, `sameAs`, and socials are *knowable* — leaving them out weakens the entity work. `publisher.logo` isn't required for non-AMP. **Never ship placeholders.**

---

# CATEGORIES = YOUR CONTENT PILLARS

| Category | Slug |
|---|---|
| Unbury Your Message | `unbury-your-message` |
| AI Without the Ick | `ai-without-the-ick` |
| Safe to Be Seen | `safe-to-be-seen` |

**Truth Over Hype is a thread, not a category.** Brand name on the label, search language in the description — that's where the keywords go, since category names carry little SEO weight.

---

# CANONICAL FACTS

| Fact | Correct |
|---|---|
| Distinguished Executive of the Year | **December 1999, age 28** (born Nov 1971) |
| Birthplace | **New York** — moved to Puerto Rico later |
| Hurricane Maria landfall | **September 20, 2017**. The 21st is the morning she saw the aftermath |
| Hair color brand | **L'Oréal Kérastase** |
| Get Off Mute | **Free AI tool, ~5 minutes** — not a 3-day mini-course |
| Facebook | `@wandaruizlambert` |
| Podcast host | Erica **Pasvar** |

**Rule for the age:** when recorded audio says a different number than the truth, **use the year, not the age** ("In December 1999"). Corrections go in the description, never the title. You can't fix someone else's YouTube captions — only the channel owner can — and your own domain and schema carry more entity weight anyway.

---

# NEXT POST — THE 60-SECOND VERSION

1. Pick the keyword from the Keyword Bank
2. Search it. Who owns it? Does intent match? What's the gap?
3. Name the asset's job
4. Write answer-first, two tables minimum, story ≤300 words
5. Fill the Phase 2 checklist completely, image prompts included
6. **Blogs → Wanda Lambert Blog → New Post** (never "Create blog")
7. Fields top to bottom, body pasted below the H1
8. Publish, hard refresh, check the live page
9. Search Console → Request Indexing
