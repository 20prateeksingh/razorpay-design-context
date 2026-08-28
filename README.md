# Razorpay Design Context

**Live: <https://razorpay-design-context.fly.dev>**

A hosted, read-only library of **36 razorpay.com pages**, each captured as an editable snapshot with
a screenshot, its verbatim copy and a written screen doc, plus an **AI agent** that answers from that
library and wireframes changes directly on the real page markup.

Built for Razorpay's AI Builders drive. It is a **fork** of my own open-source project, and
[Provenance](#provenance-what-predates-this-and-what-does-not) draws that line precisely: what
existed before, and what the eight commits on this branch added.

**If you have three minutes:** open the live link, click **Ask this library** in the top bar and ask
it something about pricing, then read the [findings](#what-it-found-about-razorpaycom) and
[the size constraint](#the-constraint-that-shaped-everything-a-24mb-page-cannot-enter-a-context-window)
below. The chat is rate limited to 6 questions per address per hour, because the key behind it is
mine.

Or go straight to the raw material:
[`INDEX.md`](https://razorpay-design-context.fly.dev/INDEX.md) (every page, described) ·
[`registry.json`](https://razorpay-design-context.fly.dev/registry.json) (the same for machines) ·
[a captured page as it was served](https://razorpay-design-context.fly.dev/pages/card-tokenisation/page.html)

---

## The problem

AI design output does not look like your product, because the model has never seen your product.

The usual answer is a token list. It does not work. A token list says what the constants are, not
how they combine on a real page: which of the four blues is the primary button, how the hero stacks
against the nav, which components repeat, what the page actually says. That information only exists
in the rendered product.

So capture the product instead. Crawl it logged out and read only, keep every page as editable
markup plus a screenshot plus its verbatim copy, write a screen doc for each one, and hand an agent
tools to read and edit that library. The design work then starts from the product, not from a
description of it.

---

## What it found about razorpay.com

This is the part worth your time. Everything here was measured from the capture of 2026-08-28, and
every row links to the evidence on the live server.

| Finding | Evidence |
|---|---|
| **Three navigation templates are live at once.** Four captured pages still run the pre-Agentic-Stack nav with an outlined "Log In": `card-tokenisation`, `payment-buttons`, `support-payments`, `x-payout-links`. `docs-api` is a third design system entirely. | [card-tokenisation](https://razorpay-design-context.fly.dev/pages/card-tokenisation/page.md) |
| **`card-tokenisation` is in a teal and magenta palette on dark navy that appears nowhere else on the site.** It is not a capture error, it is template drift. It also pollutes the aggregate: some of the greens and teals in the Design language tab come from that one page. | [the page itself](https://razorpay-design-context.fly.dev/pages/card-tokenisation/page.html) |
| **`/capital/` serves the RazorpayX Corporate Card page**, byte for byte identical to `/x/corporate-cards/` at 24,536 KB, flagged by the kit's own duplicate check. The homepage's fifth pillar is labelled "Get Credit & Loans", so the credit namespace resolves to a corporate card. The pillar itself routes past that root into `/capital/instant-settlements`, which was never downloaded. | [x-corporate-cards](https://razorpay-design-context.fly.dev/pages/x-corporate-cards/page.md) |
| **Four separate surfaces state pricing.** `/pricing/` plus inline pricing blocks on `payment-buttons`, `invoices` and `payments-app`, each with its own numbers and its own framing. | [payment-buttons](https://razorpay-design-context.fly.dev/pages/payment-buttons/page.md) |
| **Three of `/pricing/`'s four tabs have no captured evidence at all.** Business Banking, Payroll and Credit Solutions sit behind tab controls, and a read-only crawl cannot click a tab. The library says so instead of guessing. | [pricing](https://razorpay-design-context.fly.dev/pages/pricing/page.md) |
| **`/demo/` takes a real ₹1 payment.** Razorpay Checkout, the most valuable unreached surface in this library, sits one click behind it, and nothing read-only can reach it: getting there means starting a payment. It needs a human-driven pass. | [demo](https://razorpay-design-context.fly.dev/pages/demo/page.md) |
| **`/ai-builders/`, the page this application answers, is an orphan.** No captured page links to it and it is not in the primary nav. It was reached by typing the URL. It also runs a page-local dark theme shared with nothing else. | [ai-builders](https://razorpay-design-context.fly.dev/pages/ai-builders/page.md) |
| **`support-payments` closes with a Subscriptions call to action** on a support page, which reads as a content-management artifact rather than a decision. | [support-payments](https://razorpay-design-context.fly.dev/pages/support-payments/page.md) |

Scale of the capture: **36 pages** captured from **262 URLs discovered**, across **5 layout
templates**, all 36 with a written screen doc. The observed design language is **48 colours** that
appear on two or more pages (181 single-page values were dropped as noise) and a **24-step type
ramp**. Context readiness scores **74**.

---

## The constraint that shaped everything: a 24MB page cannot enter a context window

A captured `page.html` is the real page with its stylesheets and images inlined, so it survives
offline and stays editable. On razorpay.com that runs from **0.8MB to 24MB**. The largest,
`x-corporate-cards`, is 25,125,273 bytes. The whole library is 253MB on disk.

No model can read that. Not a fragment of it. So the agent never sees the document:

- **`find_in_page`** parses the snapshot server-side and returns at most **20 matches**, each a
  200-character snippet plus a short CSS selector. Selectors are built to a maximum of three levels
  and every candidate is tested against the live document before it is handed back. When three
  levels are not unique (normal on a component-framework page, where fifteen accordion panels share
  one generated class) it is pinned positionally with `:eq(n)`.
- **`edit_wireframe`** takes a selector, an operation (`replace_inner`, `insert_after`,
  `insert_before`, `remove`, `set_attr`) and an HTML fragment. The DOM surgery happens on the
  server. The model writes the fragment and never holds the page.

The parser choice is load-bearing, not taste. cheerio defaults to parse5, which allocates **752MB
of heap** on the 24MB snapshot. Pinned to htmlparser2 the same file parses in 100ms for **3.5MB**,
and round-trips with a 1.1KB difference across 25MB. On the hosted machine that is the difference
between a wireframe and an out-of-memory kill, which is why both packages are pinned exactly in the
Dockerfile rather than by range.

The agent's full toolset is seven tools: `list_pages`, `read_page_doc`, `read_design_language`,
`find_in_page`, `start_wireframe`, `edit_wireframe`, `render_wireframe`. Loop cap 12 iterations,
8192 tokens per turn. Source: [`tools/chat.js`](tools/chat.js).

---

## Measured or absent

The library's one rule is that it says nothing rather than guessing, and it holds all the way
through to generated design work.

- Every screen doc separates captured fact from model-written prose. The written analysis sits
  between `ai:begin` / `ai:end` markers and is labelled `method: ai`. `tools/describe-write.js`
  refuses to write a doc if it cannot find exactly one marker pair, because the one way to wreck a
  library during the describe step is an edit that lands outside the markers and overwrites a
  captured fact.
- Each page doc lists **actions visible but not performed**, and **states not captured**, by name.
- The agent's system prompt makes the same rule explicit: ground every claim in a tool result, never
  fill a gap from general knowledge about Razorpay or about payments.
- It survives into artifacts. During verification, a wireframe of the pricing page rebuilt it as a
  four-column comparison and tagged the three uncaptured tabs `NOT CAPTURED` rather than inventing
  them (recorded in commit `fce1573`).

Captured page text is scraped third-party marketing copy, so it is untrusted input. Every tool
result carrying it is fenced in `<library_content>` tags, any literal closing tag inside the body is
defanged first so captured text cannot close the fence and speak as the operator, and the system
prompt states that text inside a fence is data and never an instruction.

---

## Three capture bugs found and fixed

All three were found by describing the 36-page capture and checking the result against the live
site. Commit `7b0a792`.

1. **The kit's own progress pill was landing in the "verbatim copy" of every page.** `page.html`
   stripped every `[id^="__dck"]` node before serialising; `extractContent` never did. The
   instrument's own caption sat in the file that calls itself a verbatim record of the product, on
   all 36 pages, where no AI reading it could tell it from Razorpay's words.
2. **Closed navigation was read as page copy.** A mega-menu is often not `display:none` but
   `opacity:0` or clipped to zero height, so on `/x/payout-links` twelve menu labels appeared as
   though the page said them. The obvious fix is worse than the bug: excluding everything at
   `opacity:0` also drops scroll-reveal sections, and `checkVisibility`'s `checkVisualCollapse`
   drops anything under `content-visibility`, which Framer puts on every offscreen section. Together
   they cut the homepage from about 120 headings to 10 and `payment-gateway` from about 70 to 34,
   deleting the hero and every feature block. Marketing pages hide content to reveal it, navigation
   hides content to keep it closed, so the test is scoped to `nav`, `header` and `[role=navigation]`.
3. **Tall pages photographed as blank white.** Above 8000px the capture resized the viewport to
   1440x8000 and shot in one pass, which re-runs layout and can leave scroll-reveal sections unfired.
   `/x/` went from 793 painted elements to 125 and produced blank white below the hero,
   deterministically, while `content.md` held all 15,990px of its text. Scrolling afterwards does not
   recover them. The painted-element count is now measured either side of the resize and a collapse
   falls back to a stitched full-page shot. **Seven of 36 pages needed it.**

---

## How the hosted mode works

The kit was built to run on one designer's machine, where whoever is driving it owns the workspace
and every write is theirs. None of that holds on a public URL, so `DCK_HOSTED=1` changes four things
and nothing else ([`tools/map.js`](tools/map.js)):

| Hosted change | Check it |
|---|---|
| Binds `0.0.0.0`, takes its port from the environment | it is answering you at all |
| Stops reporting `workspacePath`, which is an absolute path on someone's disk | `curl .../api/status` returns `"hosted":true` and no path |
| **Refuses every POST.** An allowlist of none, not a blocklist, so a write endpoint added later is refused by default rather than quietly exposed | `curl -X POST .../api/figma-copy` returns 403 |
| Asks crawlers to stay out | `X-Robots-Tag: noindex, nofollow, noarchive, noimageindex` on every response, plus `robots.txt` with `Disallow: /` |

`/api/chat` is the single deliberate exception to the POST refusal, because it does write: a
rendered wireframe lands in a shared designs tree and stays there for everyone. The hole is drawn as
narrowly as it goes. Every write is rebuilt from `DCK_DESIGNS_DIR` and re-checked against it after
normalisation, and chat refuses to start at all if that directory overlaps the captured library. The
library is somebody else's site recorded as fact, and a stranger on the internet must not move a byte
of it.

Rate limits are 6 requests per address per hour and 150 a day, because the key behind the panel is
one person's.

**Deployment.** A single Fly machine in `sin` (`bom` is deprecated and refuses new machines, which
surfaces as a deploy that prints a release, exits 0, and leaves zero machines running). The 250MB
library is baked into the image rather than mounted, so the demo opens instantly and depends on no
volume and no network fetch. Designs go on a volume at `/data`, which is why there is exactly one
machine: a volume attaches to one, and two machines would give the team two silently different
libraries. `auto_stop_machines = "suspend"`, so an idle demo costs nothing and resumes in about a
second. The image installs exactly two packages and deliberately not with `npm ci`, which would drag
Playwright into a server whose entire design is that it cannot drive a browser.

---

## Provenance: what predates this, and what does not

This repo is a fork of [`20prateeksingh/design-context-for-ai`](https://github.com/20prateeksingh/design-context-for-ai)
(the Design Context Kit, MIT, first commit 2026-07-19), wired here as the `upstream` remote. Being
straight about that is more useful than letting you find it.

**Predates this challenge.** The capture engine (`tools/capture.js`), the dashboard and its atlas,
map and design-language panes, the page-doc format, the wireframe-on-snapshot skill and its
`lofi-check.js` gate, and Copy for Figma. Roughly 112 commits of prior work.

**Built for this challenge**, in the eight commits from `7b0a792` to `84c0b84`:

| Built here | Where |
|---|---|
| Hosted read-only mode: bind, POST refusal, path withholding, noindex, and a dashboard that hides the controls it can no longer back | `tools/map.js`, `tools/dashboard-template.html` |
| **The AI chat panel**, replacing the kit's copy-a-prompt calls to action. Locally nothing changes: the intent lookup returns null unless the page is hosted, so every button still copies its prompt. Six intents open the chat; five cannot become chat and say so, because they drive a real browser on the host's machine, with the command still one click away | `tools/chat.js` (1,379 lines, new), `tools/dashboard-template.html` |
| **Selector-scoped wireframe editing**, the mechanism that lets an agent edit a document it can never load | `tools/chat.js` |
| Shared permanent designs library on a volume, with rounds claimed off disk via `mkdir -p` so two people wireframing the same page get round-1 and round-2 instead of colliding. Session ids are deliberately not published on `/api/designs`: a session id is a live handle that would resume somebody else's conversation | `tools/chat.js`, `fly.toml`, `docker-entrypoint.sh` |
| Containerisation and deploy | `Dockerfile`, `fly.toml`, `docker-entrypoint.sh` |
| **Three capture-engine bug fixes** and `tools/describe-write.js` | `tools/capture.js`, `tools/describe-write.js` |
| The captured razorpay.com library itself: 36 pages, 36 screen docs | `design-context/` |

Outside the captured library, the fork is 13 files, 2,868 insertions and 63 deletions against
`upstream/main`. Verify it yourself:

```bash
git remote add upstream https://github.com/20prateeksingh/design-context-for-ai.git && git fetch upstream
git diff --stat upstream/main...HEAD -- . ':!design-context' ':!wireframes'
git log --oneline upstream/main..HEAD
```

The commit messages are the real record of what was decided and why. They are long on purpose.

---

## Known defects, stated rather than hidden

The library documents its own failures in the same place it documents its facts.

- **`demo` captures badly and it is unresolved.** The navigation mega-menus paint over the page body
  and the product area is lost. It reproduces every time. Ruled out so far: the cookie-dismiss click,
  viewport width, missing reduced-motion, and the lazy-scroll settle. The page renders correctly on a
  manual load at the same viewport, so the fault is in the capture path. The most promising lead is
  recorded in the page doc.
- **`payment-buttons` captured mid-render**, with two loading indicators still in the DOM after
  several retries. Flagged as unusable as a design baseline rather than shipped quietly.
- **16 of 36 screenshots are truncated at 8000px.** Each page doc says so and names the full page
  height; the full text is still in `content.md`.
- **Two page docs reference sibling captures that were folded out.** `x-corporate-cards` says
  `/capital/` is "stored separately as `capital`", and `payment-links-2` says the same about
  `payment-links`. Both duplicates were removed before shipping and the note text was not updated.
  The underlying findings still stand (`/capital/` did return the byte-identical page), but the
  sentences are stale.
- `docs-api` is one page of a documentation site, which is not the documentation. Its computed styles
  still feed the aggregate design language, so a share of the palette comes from a surface that
  follows different rules. The page doc says so.

---

## Run it yourself

The hosted demo is fixed and read only. To capture your own product you run the kit locally, where
the browser and the login are yours:

```bash
git clone https://github.com/20prateeksingh/razorpay-design-context.git
cd razorpay-design-context
tools/start.sh                                                  # deps, server, dashboard
node tools/capture.js --url https://example.com --logged-out    # public site: no login, no profile
```

The chat panel needs an `ANTHROPIC_API_KEY` (see `.env.example`). Nothing else does: the library, the
atlas, the map, the design language and Copy for Figma all work with no key at all, and the dashboard
serves the whole library on a machine that ran no `npm install`.

To run the hosted mode locally, exactly as deployed:

```bash
docker build -t dck . && docker run -p 8080:8080 -e ANTHROPIC_API_KEY=sk-ant-... dck
```

Full kit documentation, including capture options and the Windows path, is in
[`INSTALL.md`](INSTALL.md) and the [upstream README](https://github.com/20prateeksingh/design-context-for-ai).

---

## About the hosted copy of razorpay.com

This site hosts captured copies of public razorpay.com pages, logged out, for the purpose of
demonstrating this tool. It is **not affiliated with, endorsed by, or connected to Razorpay**. All
captured content, markup, imagery and copy remain the property of Razorpay Payments Private Limited.

The capture is read only: it follows links, never clicks buttons, never submits forms, and never
moves money. The one logged exception is dismissing a cookie banner.

Every response carries `X-Robots-Tag: noindex, nofollow, noarchive, noimageindex` and `robots.txt`
disallows everything, because a hosted library is a near-complete copy of somebody else's website
served from a domain that is not theirs. That is fine as a demonstration and wrong as a search
result. Happy to take it down on request.

The tooling is MIT licensed. See [`LICENSE`](LICENSE).
