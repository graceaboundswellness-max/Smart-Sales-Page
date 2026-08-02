# CoWork Prompt — Verify & Refresh the Master Links Sheet

> # ⛔ SUPERSEDED 2026-08-02 — DO NOT RUN
>
> This prompt targeted "WANDA LINKS HQ — MASTER," a consolidation workbook that was **retired**. It also instructs CoWork to build an **OFFERS ONE-PAGER** tab — now explicitly retired as a duplicate — and it quotes prices ($97, $17) that are no longer true (Breakthrough Message Session is $297; Messaging Made Easy was retired 2026-07-30).
>
> **Current authority:** `LINKS HQ — CURRENT` → `SEND A LINK` tab —
> `https://docs.google.com/spreadsheets/d/1uPHmG_-F7qlVF6Cxe6OkNOAV4c3ma3HISWseLzqxX48/edit`
>
> That sheet was verified on 2026-07-30 (≈45 public URLs personally loaded) and carries its own prioritised **FIX-IT LIST**. The remaining verification work is authenticated GHL / funnelscake payment / bit.ly links, which require Wanda's login. **Work that sheet's FIX-IT LIST top-down instead of running this prompt.**
>
> Kept for history per the never-delete rule.

**How to use:** open CoWork, paste everything below the line as your first message. It's self-contained — CoWork does not need this conversation's history.

---

I need you to verify and refresh a link-tracking spreadsheet in my Google Drive. It was consolidated from an older, stale sheet, so most statuses and dates are out of date. Your job is to make every row true as of today, and to ask me only about the things you genuinely cannot determine yourself.

## The file

**"WANDA LINKS HQ — MASTER"** in my Google Drive (a Google Sheet; if you find both an .xlsx and a Google Sheet version, use the Google Sheet). Tabs: START HERE · PINNED · OFFERS · WEBSITE PAGES · SUBSTACK · CONTENT TRACKER · AI ASSETS · FIX-IT LIST · PIXELS & CODE · ARCHIVE.

Status vocabulary already in use — keep it exactly, do not invent new values:
`LIVE — CURRENT` · `LIVE — TRANSITIONING` · `NOT LIVE YET` · `NEEDS CHECK` · `RETIRED — KEEP FOR REFERENCE`
On the FIX-IT LIST tab only: `TO DO` / `DONE`.

## Hard rules

1. **Never delete a row.** Anything dead or superseded moves to the ARCHIVE tab with a note. Preserving history is the point.
2. **Never invent a verification.** If you did not personally load a URL or see the asset, do not stamp it verified. Leave `NEEDS CHECK` and say why in NOTES.
3. **Stamp what you check.** Put today's real date in LAST VERIFIED for every row you actually tested. Rows you couldn't test keep their old date (or stay blank) so I can see the difference at a glance.
4. **Don't restructure the workbook.** Same tabs, same columns, same header rows. You're updating cell values, not redesigning.

## What to do, in order

**Step 1 — Test every public URL.** Every `wandalambert.com/*`, `blog.wandalambert.com/*`, `hub.wandalambert.com/*`, `wandalambert.substack.com/*`, and `bit.ly` link on the PINNED, OFFERS, WEBSITE PAGES, and SUBSTACK tabs. Load each one in a real browser (not a plain HTTP fetch — the site sits behind bot protection that returns 403 to automated fetchers even when the page is perfectly fine for humans). For each, record:
- Does it load for a human? Any redirect — and to where?
- Is it the page the row claims it is (right offer, right price, right headline)?
- Set STATUS accordingly, stamp LAST VERIFIED with today's date, and note anything surprising (wrong price, dead page, unexpected redirect, placeholder text).

Two rows are flagged as 404s from a previous check — confirm whether they still 404: `/opt-in` and `/messaging-reset-signup-form`.

**Step 2 — Check the offer prices actually match.** The OFFERS tab lists prices (FREE, $7, $17, $27, $37/mo or $370/yr, $97, from $1,200, plus DFY payment links from $995 to $3,125). Compare each stated price against what the live page and checkout actually say. **Price mismatches are the highest-value thing you can find here** — flag every one loudly in NOTES, and list them at the top of your final report.

**Step 3 — Work the FIX-IT LIST tab (17 rows).** For each row, determine whether it's already done:
- Anything checkable on the public site (example: "Add 'Blog' to site nav → https://blog.wandalambert.com" — just load wandalambert.com and look at the nav; "Legal pages need a logo + nav row at top" — load the legal pages and look; "Redirect the two 404s") → check it yourself and set `DONE` or `TO DO` with today's date.
- Anything requiring my GoHighLevel login, my Search Console, my Bing Webmaster, or a judgment call only I can make → leave it `TO DO` and add it to your questions list for me.

**Step 4 — Sanity-check the CONTENT TRACKER tab.** It has one row for a blog post published 2026-07-29 (`how-to-explain-what-you-do`) plus two Substack articles. Confirm each URL loads, and confirm the blog post appears on the blog's index page.

**Step 5 — Report back in ONE batch.** Do not interview me question by question. Give me:
- **Price mismatches** (if any) — most important, first.
- **Dead or broken links** — what's broken, and whether it should be fixed or archived.
- **What you changed** — a short list of rows whose status you updated, and to what.
- **One numbered list of questions for me** — only things you genuinely could not determine (needs my login, or needs my decision). Phrase each so I can answer with a fragment: "1. Self-Love Journal — the $7 page loads but I can't tell if the delivery emails exist. Still selling this, or archive it?"

## One thing to build while you're in there

The OFFERS tab is nearly a usable "offers one-pager" — I need that as a knowledge file for two AI projects. After verification, add a tab called **OFFERS ONE-PAGER** containing only the current, client-facing offers (one row per offer, no admin/edit links): offer name · price · exact client-facing link · one-sentence description of what the buyer actually gets · last-verified date. Skip anything retired or not-live-yet. Keep it to one screen. This tab is the single source of truth my AI projects will quote from, so accuracy matters more than completeness — leave out anything you couldn't verify.
