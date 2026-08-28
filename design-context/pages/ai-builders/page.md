---
slug: ai-builders
title: "AI Builder Jobs at Razorpay | Hiring AI Talent"
route: /ai-builders/
url: https://razorpay.com/ai-builders/
captured: 2026-08-28T05:31:35.536Z
method: dom (facts) + labeled ai section (description)
---

# AI Builder Jobs at Razorpay | Hiring AI Talent

## What this page is
<!-- ai:begin method=ai — written by the describe step, NOT ground truth -->
A standalone dark-themed recruiting page for Razorpay's AI Builders hiring drive, deliberately styled apart from the rest of the site and pointing at an external Typeform rather than a normal job application.

### Purpose
Recruit AI engineers by asking for shipped work instead of a CV. Its own line for this is "No resume theatre. Just show us what you've built." It sets eligibility, describes a three-step process, and lists the AI products Razorpay teams have already shipped.

### Location
Path `/ai-builders/`. **It is an orphan in this library** — no captured page links to it, and it does not appear in the site's primary nav. It was reached by direct URL. Its only outbound link is back to the homepage.

### Layout
```
┌────────────────────────────────────────────────────────────┐
│ dark page-local nav · "Razorpay / ai builders"             │
│   Eligibility · Process · Our AI Wins · [Apply Now]        │
├────────────────────────────────────────────────────────────┤
│ HERO (dark, dot-matrix ground)                             │
│   serif headline, mixed roman + italic:                    │
│   "Hiring The Most *Obsessed AI Builders*                  │
│    To Solve The Toughest Problems"                         │
│   [Apply Now]                                              │
│   hero image · three builders at desks, blue accent blocks │
├────────────────────────────────────────────────────────────┤
│ manifesto paragraph (light grey on black, large)           │
│ What this is · Who should apply · Process (3 steps)        │
│ "We're doing a lot with AI. We still don't think it's      │
│  enough." — shipped AI work                                │
│ "Looking for Other Roles?" · footer                        │
└────────────────────────────────────────────────────────────┘
```

### Information displayed
| Element | Content | Location |
|---|---|---|
| Page-local nav | Eligibility, Process, Our AI Wins, Apply Now — this page does not carry the site's standard nav | Header |
| Headline | "Hiring The Most Obsessed AI Builders To Solve The Toughest Problems", set in a serif face with the middle clause in italic | Hero |
| Manifesto | "The AI era has created a new generation of exceptional builders… Come build with us. Here's what life at Razorpay looks like." | Below hero |
| What this is | A role for turning ambiguous business and product problems into working AI systems, prototypes, automations and agentic experiences | Section |
| Who should apply | People who "see every workflow as an agent loop", "speak in prompts and GitHub links", and can show shipped or seriously prototyped projects | Section |
| Process | Three steps: fill the form, submit your project or GitHub, a call within 48 hours if it has signal | Section |
| Our AI wins | Slash, Call-E, AI-led marketing campaigns, Agentic Platform, Agentic Payments, Agent Studio | Section |
| Positioning line | "No resume theatre. Just show us what you've built." | Section |

### Actions visible (not performed)
> Read-only capture. Listed from the captured UI, not clicked.

- **Apply Now** — appears in the header and the hero. Both point off-site to a Typeform; the form itself is outside this library and was not captured.
- **Anchor nav** — Eligibility, Process, Our AI Wins scroll within the page.
- **Looking for Other Roles?** — routes to the general careers surface, not captured.

### State captured
One state: the page as first served. Not captured: the Typeform application flow, which lives on another host.

### Transitions (from the captured link graph)
| From | Action | To |
|---|---|---|
| AI Builders | Wordmark | `home` |
| AI Builders | Apply Now | external Typeform — off-origin, not captured |

### Notes
- **Two headings came back scrambled**: `mquto m4Ika h lOj mtjq xro bZ Z111r byHGt lnIYP ItAe AXo7XUe` and `dzXpiOsu yxl BsrrdOIx`. These are not corrupt data — the page animates text by cycling random glyphs before settling, and the snapshot froze mid-decode. Read them as "captured mid-animation", and take the real strings from the rendered screenshot instead.
- **This page is visually a different product from the rest of the site.** Dark ground, a serif display face with italics, a page-local nav, and a dot-matrix texture. Nothing else in this library looks like it, so it should not be used as evidence of Razorpay's house style.
- **Flagged as an orphan by the kit's hygiene check** — no inbound link from any captured page. That is accurate: it is a campaign page reached from outside the site.
<!-- ai:end -->

## Files
[screenshot](screenshot.png) · [editable HTML](page.html) · [verbatim copy](content.md) · [style tally](computed-tokens.json) · [meta](meta.json)

## On this page (headings, verbatim)
- Hiring the most obsessed AI Builders to solve the toughest problems
- What this is
- Who should apply
- Process
- We’re doing a lot with AI. We still don’t think it’s enough.
- Hiring The Most Obsessed AI Builders To Solve The Toughest Problems
- No resume theatre. Just show us what you’ve built.
- We’re doing a lot with AI. We still don’t think it’s enough.
- Looking for Other Roles?
- Razorpay /ai builders

## Links to (captured pages)
- [home](../home/page.md)
