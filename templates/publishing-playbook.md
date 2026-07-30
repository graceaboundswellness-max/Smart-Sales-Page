# THE PLAYBOOK
## Everything learned publishing your first post — in the order you'll need it

**Built:** July 28, 2026 (first live publish session) · **Stored in repo:** July 30, 2026
**Use this before every post.** It'll save you the two hours the first one took.

> Repo note: the lessons here are folded into `templates/blog-post-template.md` (writing) — this file remains the authority for the GHL publish steps (Phases 2–5), the gotchas table, schema truth, and canonical facts. One addendum was added after the original session: **Phase 2 → Image prompts** (it was missed in the original findings).

---

# PHASE 0 — BEFORE WRITING A WORD

**This is the phase that got skipped, and it's why the first post was rebuilt from scratch.**

### 1. Name the asset's job

| Job | What it does | Structure |
|---|---|---|
| **Ranking asset** | Targets a keyword, competes in search | Answer-first, tables, FAQ |
| **Authority asset** | Builds entity + E-E-A-T, gets cited by AI | Story-led, heavy Person schema |
| **Conversion asset** | Sells | Persuasion first, keyword secondary |

A podcast story is an **authority** asset. Don't dress it as a ranking asset.

### 2. Pull the keyword from demand, never from the content

Source it from the **Chloe Keyword Bank** or her VOC search language.

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

One section. ~300 words. Positioned *after* the practical content. Doing E-E-A-T work. If the story is the spine, it's an authority asset — label it and stop expecting it to rank.

### Voice rules that bit us

- ~~**"Messaging" is banned in symptom-aware body copy.**~~ **AMENDED 2026-07-30 (Wanda ruling): not a global ban.** Symptom language leads cold-reader sections (Chloe searches symptoms, not solutions); "messaging" is allowed where it reads naturally.
- **Symptom language, not solution language.** She searches "why isn't anyone buying," never "brand messaging help."
- Bold **4 things max**. It stops working when it's everywhere.
- No highlighter. Clashes with the brand, competes with bold.
- Dividers: 1–3, not between every H2.

---

# PHASE 2 — PREP BEFORE YOU TOUCH GHL

Have all of this open in one file. Fill everything. **Zero placeholders.**

- [ ] Post title (the H1)
- [ ] SEO title — **50–60 characters** (first post's was 76; Google cuts at ~60)
- [ ] Meta description — 150–160 characters
- [ ] URL slug
- [ ] Category name + slug + description
- [ ] Keywords, **comma-separated on one line** — pasting the whole line works
- [ ] Cover image + filename + alt text
- [ ] **Image generation prompts (see addendum below)**
- [ ] Body copy in markdown
- [ ] Schema JSON-LD, fully filled

### Image rules

- **Informational > decorative.** A formula graphic or comparison table gets pulled into image search and AI cards. A stock photo of a laptop does nothing but slow the page.
- ~~**Image generators mangle text.** Anything with words → Canva.~~ **CORRECTED 2026-07-30:** the image GPT handled type excellently on the first live run. Send everything to it first; Canva is the fallback only if type comes out wrong.
- Filenames: `lowercase-hyphens-with-keyword.webp`. Never `IMG_4471.png`.
- WebP if available — ~⅓ the size of PNG, and speed is a ranking factor.

### ⭐ ADDENDUM — Image generation prompts (missed in the original findings)

Every post draft must include, per image:

```
IMAGE [n] — [cover / in-post]
Concept prompt:  the concept + any words that must appear. NOTHING about colors,
                 fonts, or style — the image GPT holds the brand and decides.
                 (Lesson: a prompt specified "cream," which isn't a brand color.)
Context:         paste the post section the image supports, so the generator
                 understands the idea — it does a visibly better job with it.
Size:            cover 1200×630px (doubles as the social share image) · in-post 1200px wide
File name:       lowercase-hyphens-with-keyword.webp
Alt text:        describes the image, works the keyword in naturally, ≤125 chars
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

GHL sanitizes script tags there — becomes `&lt;script&gt;`, text *about* a script tag, which Google ignores. The Custom HTML block prints **"Custom HTML/CSS/JavaScript"** as visible text to readers. **Schema goes at the blog level.**

---

# PHASE 4 — VERIFY

1. **Hard refresh** (Cmd+Shift+R). View Source caches aggressively and will lie to you.
2. **Look at the live page, not the source.** Scroll the bottom for stray code.
3. **Confirm the live URL** matches your canonical and schema.
4. Once schema is placed: **validator.schema.org**.
5. Open it on your phone.

---

# PHASE 5 — AFTER

- Search Console → URL Inspection → **Test Live URL, then Request Indexing** (the live test is the ONLY trustworthy fetch check — an automated fetch on 2026-07-30 got a 403 that turned out to be the checking sandbox's own network policy, not the blog; never conclude "the site blocks bots" without GSC's verdict)
- **Bing Webmaster Tools → URL Submission** — Bing feeds ChatGPT/Copilot answers; this is the GEO step
- **Paste the post's LOG ROW into the content tracker** (the writing project outputs it with every draft)
- Delete any placeholder blogs
- Link to the post from your About page
- **Blog must be in the site nav menu** (discovered 2026-07-30: posts were live with no nav path to them — invisible to visitors AND to crawlers following internal links). The blog lives on the subdomain — nav link points to `https://blog.wandalambert.com`. One-time fix, then verify the link survives any header edit.

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
| Custom HTML block | Renders its label as visible text |
| Blog name | Shows above every post title. Edited at **blog level**, not post level |
| RSS feed name | Separate field from blog name |
| Keywords field | Comma-separated single paste works ✅ |
| Categories | Have their own slug, description, and canonical |
| Meta keywords | Dead since 2009. Skip it |

---

# SCHEMA TRUTH, 2026

| Type | Status | Verdict |
|---|---|---|
| **HowTo** | Rich results removed **Sept 2023** | No SERP benefit. Skip |
| **FAQPage** | Rich results removed **May 7, 2026** | No SERP benefit. Harmless to keep |
| **Article** | ✅ Still active | **The one that matters** — author display, sitelinks search box |
| **Person** | ✅ Entity data | Load it up: `knowsAbout`, `sameAs`, `birthPlace`, awards |
| **VideoObject** | Only if you host the video | Never claim someone else's |

**The key reframe:** the **visible** FAQ section still does the AEO work. The schema was never the mechanism. Google's own AI guidance: no special markup required for AI Overviews — only that structured data match visible text.

**Fill known fields, omit unknown ones.** `datePublished`, `sameAs`, socials are *knowable* — leaving them out weakens the entity work. `publisher.logo` isn't required for non-AMP. **Never ship placeholders.**

---

# CATEGORIES = YOUR CONTENT PILLARS

| Category | Slug |
|---|---|
| Unbury Your Message | `unbury-your-message` |
| AI Without the Ick | `ai-without-the-ick` |
| Safe to Be Seen | `safe-to-be-seen` |

**Truth Over Hype is a thread, not a category.** Brand name on the label, search language in the description (that's where the keywords go — category names carry little SEO weight).

---

# CANONICAL FACTS — corrected 2026-07-28

| Fact | Correct |
|---|---|
| Distinguished Executive of the Year | **December 1999, age 28** (born Nov 1971) |
| Birthplace | **New York** — moved to Puerto Rico later |
| Hurricane Maria landfall | **September 20, 2017**. The 21st is the morning you saw the aftermath |
| Hair color brand | **L'Oréal Kérastase** |
| Get Off Mute | **Free AI tool, ~5 minutes** — not a 3-day mini-course |
| Facebook | `@wandaruizlambert` |
| Podcast host | Erica **Pasvar** |

**Rule for the age:** when recorded audio says a different number than the truth, **use the year, not the age** ("In December 1999"). Correction goes in the description, never the title. You can't fix someone else's YouTube captions — only the channel owner can; your own domain and schema carry more entity weight anyway.

---

# NEXT POST — THE 60-SECOND VERSION

1. Pick keyword from the Keyword Bank
2. Search it. Who owns it? Does intent match? What's the gap?
3. Name the asset's job
4. Write answer-first, two tables minimum, story ≤300 words
5. Fill the Phase 2 checklist completely (including image prompts)
6. **Blogs → Wanda Lambert Blog → New Post** (never "Create blog")
7. Fields top to bottom, body pasted below the H1
8. Publish, hard refresh, check the live page
9. Search Console → Request Indexing
