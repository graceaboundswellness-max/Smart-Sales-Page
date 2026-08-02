# Website Build Requirements — standing rules for any rebuild

Wanda's rulings, recorded so a future build session inherits them instead of rediscovering them. **Read this before building or rebuilding any page on wandalambert.com** (smart-sales-page rebuild, new funnels, new site sections).

## 1. Navigation MUST be a Global Section — non-negotiable (ruling 2026-07-30)

**Requirement:** build the header/nav ONCE as a **Global Section** and apply it to every page. Never per-page copies.

**Why this is law now:** on 2026-07-30 the blog link had to be added by hand to four separate pages (home, about, contact, confirmation-message-after-submit) because each page carried its own header copy. The legal pages (privacy, disclaimer, terms) still have no nav at all — same root cause. Per-page headers guarantee drift: one page always gets missed, and every future nav change repeats the manual work.

**How (GHL, verified 2026-07-30):** Website Builder → build the header with the **Navigation Menu** element → save it as a **Global Section** → on each page: Add Section → choose the global header from the Global Sections list. Editing the global section then updates every page at once.

**Applies to the footer too** — same reasoning, same fix.

## 2. Nav must include the Blog, and the Blog lives on a subdomain

- **Blog link target: `https://blog.wandalambert.com/blog`** — the live blog INDEX. ⚠️ **CORRECTED 2026-08-02:** the bare subdomain `https://blog.wandalambert.com` **returns 404** (verified in LINKS HQ — CURRENT, FIX-IT priority 3: "Redirect the bare blog subdomain to /blog"). The nav link added 2026-08-02 used the bare subdomain and must be re-pointed to `/blog` or the redirect must be built.
- Individual posts live at `/post/<slug>` (e.g. `/post/how-to-explain-what-you-do`), which is a different path from the index.
- **Open in New Tab: OFF.** It's her own property; a surprise new tab loses the 55+ reader who then can't find her way back.
- Blog posts live at `/post/<slug>`, NOT `/blog/`.

## 3. Legal pages need nav + logo (open item from the fix-it list)

Privacy Policy, Disclaimer, Terms & Conditions must carry a top row with the logo (left) and nav menu (right) so a visitor can get back. A global nav section solves this automatically — another reason for rule 1.

## 4. Nav styling — pink is DELIBERATE, do not "fix" it

Menu items turn **pink on click/active state** while resting items are black. This is intentional brand behavior, confirmed by Wanda 2026-07-30. Any future audit that flags the pink item as an inconsistency is wrong — leave it.

## 5. Current manual state (as of 2026-07-30, until the global rebuild)

Pages that HAVE the Blog nav link, added by hand:
- Home
- About
- Contact
- Confirmation-message-after-submit

Pages that DO NOT yet have it: the legal pages (privacy-policy, disclaimer, terms-and-conditions), and any funnel step pages with their own headers. These get fixed by the global-section rebuild rather than more manual passes.
