---
author: claude
type: handoff
date: 2026-08-14
audience: Fable (running on Wanda's computer, with access to her local skill files)
---

# Handoff for Fable — wire the topic queue into the skills, and stop findings from sitting unused

Paste this whole file to Fable. Two jobs. Job 1 is a 5-minute paste. Job 2 is the standing fix for the bigger problem Wanda named: **research and scheduled-routine findings pile up in Drive and never turn into anything.**

---

## Background you need before touching anything

- **The queue lives in one file:** `research/content-topics.md` in the `Smart-Sales-Page` repo → the section called **THE QUEUE**. It holds all 15 gap-backed content topics with a live status each (`QUEUED → BRIEFED → SCRIPTED → DRAFTED → PUBLISHED`).
- **Why it exists:** the topics were researched (real SERP gaps, July 2026) but nothing carried them to the surfaces where Wanda actually starts creating. The list was a library, not a queue.
- **The one hard rule:** *one canonical source, edited in place.* Never copy the queue into a second document, tracker, or dashboard — **point at the file.** This repo has been burned by duplicate sources before (two retired "Offers One-Pager" sheets, a dead .xlsx workbook). Do not add another.

---

## JOB 1 — Put the queue-check rule into the content-planning skills

**Which skills.** Only the ones that *choose or propose a topic*:

- `daily-content-interview`
- `youtube-slide-deck-planner`
- `substack-article-optimizer`

**Skip `yt-to-blog`** — it is already wired inside the repo. Skip email, sales-page, voice, and formatting skills — they don't pick topics.

**How to do it, depending on what you can reach:**

- **If the skill files are on disk** (e.g. under a local `skills/` or `.claude/skills/` folder): edit each `SKILL.md` in place. Put the block below near the top of the skill's process/instructions — it must come **before** any step that proposes or picks a topic.
- **If the skills live only in claude.ai** (no file on disk): output the exact final text for Wanda to paste, **one skill at a time.** Wait for her to say she's done before giving the next one. Never dump all three at once.

**The block to add — verbatim, no rewording, no added examples:**

```
## Topic source — check the queue first

Before proposing or choosing any content topic: open content-topics.md
(repo copy, or the Project-knowledge copy) → THE QUEUE table → take the
highest QUEUED row unless Wanda names a different topic. State which row
you took. If the copy you can see looks older than ~2 weeks, say so and
ask Wanda to refresh it.
```

Change nothing else in the skill.

---

## JOB 2 — Make routine findings route somewhere (the real fix)

**The problem, stated plainly:** Wanda's scheduled routines (Monday Brief, AI+SEO News, competitor sweeps, audits) generate genuinely useful findings that land in Drive and die there. The repo already has a rule for half of this — CLAUDE.md Rule 5: *research produced in a session must be distilled into the matching `research/` file that same session, or it's considered lost.* What's missing is the same discipline for **routine outputs**, and a route for findings that are content ideas rather than research facts.

**Add this closing block to each scheduled routine's prompt/instructions:**

```
## Before you finish — route every finding

Each finding lands in exactly one of three places, named explicitly:

1. CONTENT IDEA → add or update a row in THE QUEUE (research/content-topics.md)
   with the target query and the gap it fills. Say which row.
2. RESEARCH FACT (competitor move, SERP shift, audience language, pricing) →
   distill it into the matching research/ file THIS session, per CLAUDE.md
   Rule 5. Say which file and what changed.
3. NOT ACTIONABLE → say so in one line, with why.

Finish with a line that reads: ROUTED: <one line per finding>
A finding with no route is not finished work.
```

Apply it to the recurring routines first — the Monday Brief and the AI+SEO News run are the two that produce findings most often.

---

## What NOT to do

- **Don't create a new list, tracker, board, or dashboard.** One queue, edited in place. If something seems to need a second home, say so and stop — that's Wanda's call, not a default.
- **Don't touch offers, prices, or client-facing URLs.** They come only from the live `SEND A LINK` tab of *LINKS HQ — CURRENT*. Never from memory, never from a skill file.
- **Don't edit CLAUDE.md's rules.** They're settled and adversarially tested.
- **Don't rewrite the skills while you're in there.** Add the block, leave everything else alone. Scope creep in a skill file is how the last drift happened.
- **Don't hand Wanda a wall of text.** She has ADD (repo Rule 0): one action per message, bolded, under ~150 words, everything else parked behind "say next."

---

## Report back like this

One line per skill or routine:

```
daily-content-interview   → edited on disk / text handed to Wanda / blocked (why)
youtube-slide-deck-planner → ...
substack-article-optimizer → ...
Monday Brief routine       → ...
AI+SEO News routine        → ...
```

Then one line: what's left, if anything.

---

## Context files worth reading first (repo)

| File | Why |
|---|---|
| `research/content-topics.md` | THE QUEUE + the wiring table naming every surface that must load it |
| `research/open-lanes.md` | the 15 SERP gaps behind the topics — the *why* under each row |
| `CLAUDE.md` | Rule 0 (ADD replies), Rule 1 (research loads first), Rule 5 (research must be distilled same session) |
| `deliverables/topic-brief-01-template-fatigue-2026-08-13.md` | what a queue row looks like once it's been pulled and briefed |
