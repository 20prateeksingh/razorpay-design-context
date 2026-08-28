# Razorpay Design Context

**Live: <https://razorpay-design-context.fly.dev>**

AI design output does not look like your product, because the model has never seen your product.
This is a tool that records a running website as fact, so the AI edits the real thing instead of
inventing a lookalike.

Here it is pointed at razorpay.com. **36 pages**, each kept with a screenshot, its exact words, its
underlying page, and a written description of what that page is and does. On top of the library sits
a chat panel that answers from it and draws wireframes on the real captured pages.

**Sixty seconds:** open the link, click **Ask this library** in the top bar, and ask it *"which pages
state pricing, and do the numbers agree?"* Then read the findings below. The dashboard opens in about
two seconds. The chat runs on Claude Opus 5 and is limited to 6 questions per visitor per hour,
because the key behind it is mine.

Or skip the interface: [every page, described](https://razorpay-design-context.fly.dev/INDEX.md) ·
[the same for machines](https://razorpay-design-context.fly.dev/registry.json) ·
[a captured page, served as recorded](https://razorpay-design-context.fly.dev/pages/card-tokenisation/page.html)

This repo is a fork of my own open-source project. [Provenance](#provenance) draws that line
precisely, so you do not have to go looking for it.

---

## What it found about razorpay.com

Measured from a capture on 2026-08-28. Every row links to its evidence on the live server.

| Finding | Evidence |
|---|---|
| **Three navigation designs are live on your site at once.** Four captured pages still run an older one, with an outlined "Log In" and no Agentic Stack menu: `card-tokenisation`, `payment-buttons`, `support-payments`, `x-payout-links`. The docs page is a third design system entirely. | [card-tokenisation](https://razorpay-design-context.fly.dev/pages/card-tokenisation/page.md) |
| **`card-tokenisation` is teal and magenta on dark navy**, a palette that appears nowhere else on the site. Not a capture error: template drift. It also skews the aggregate, so some of the greens in the Design language tab come from this one page. | [the page itself](https://razorpay-design-context.fly.dev/pages/card-tokenisation/page.html) |
| **`/capital/` lands on the RazorpayX Corporate Card page**, the same page as `/x/corporate-cards/`, flagged by the tool's own duplicate check. Precisely: the homepage's "Get Credit & Loans" pillar does not link to `/capital/`, it routes to `/capital/instant-settlements`. It is the bare `/capital/` root that resolves to a corporate card. | [x-corporate-cards](https://razorpay-design-context.fly.dev/pages/x-corporate-cards/page.md) |
| **Four separate surfaces state pricing.** `/pricing/`, plus inline pricing blocks on `payment-buttons`, `invoices` and `payments-app`, each with its own numbers and its own framing. | [payment-buttons](https://razorpay-design-context.fly.dev/pages/payment-buttons/page.md) |
| **Three of the four tabs on `/pricing/` have no captured evidence.** Business Banking, Payroll and Credit Solutions sit behind tab controls, and a crawl that never clicks cannot open a tab. The library says so rather than guessing. | [pricing](https://razorpay-design-context.fly.dev/pages/pricing/page.md) |
| **`/demo/` takes a real ₹1 payment.** Razorpay Checkout, the most valuable surface missing from this library, sits one click behind it. Nothing that refuses to click can reach it, because getting there means starting a payment. | [demo](https://razorpay-design-context.fly.dev/pages/demo/page.md) |
| **`/ai-builders/`, the page this application answers, is an orphan.** No captured page links to it and it is not in the nav. It was reached by typing the URL. | [ai-builders](https://razorpay-design-context.fly.dev/pages/ai-builders/page.md) |
| **`support-payments` closes with a Subscriptions call to action** on a support page, which reads as a content-management leftover rather than a decision. | [support-payments](https://razorpay-design-context.fly.dev/pages/support-payments/page.md) |

Scale: **36 pages** captured out of **262 addresses** found while crawling, all 36 with a written
description. The observed design language is **48 colours** that appear on two or more pages, and
text set at **24 different sizes**. The library scores its own readiness at **74**.

---

## The hard part

The usual way to give an AI your design context is a list of colours and fonts. It does not work: a
token list says what the constants are, not how they combine on a real page. Which of the four blues
is the primary button. How the hero stacks against the nav. What the page actually says. That exists
only in the running product.

So record the running product, whole. Which makes the files very large. A captured page carries its
own styles and images inside it, so it still works offline and stays editable, and on razorpay.com
that runs from under 1MB to about **24MB** for the corporate card page.

No AI can be handed a file that size. Not a tenth of it. So the AI never holds the page. It searches
for text and gets back at most 20 short matches, each with the precise address of where that text
sits. It then names one address and one change, and the edit is made on the server. Find-and-replace
rather than retyping the document, which is how a person would do it too.

That constraint is why wireframing on a real 24MB page works at all. It also made one dull decision
the most important in the project: the obvious way to read the page needed 752MB of memory for that
one file, and would have been killed on the small machine hosting this. The method it uses instead
reads the same file in a tenth of a second using 3.5MB.

---

## Saying nothing rather than guessing

Unmeasured is recorded as unmeasured. Every page description separates what was captured from what a
model wrote about it, and labels the second. Every page names the buttons that were visible but not
pressed, and the states not reached. And the rule survives into the design work: when the chat
rebuilt the pricing page as a wireframe, it tagged those three uncaptured tabs `NOT CAPTURED` instead
of inventing rates for them.

---

## Provenance

This is a fork of my own project,
[design-context-for-ai](https://github.com/20prateeksingh/design-context-for-ai) (MIT, first commit
2026-07-19). Roughly **112 commits predate this challenge**: the capture engine, the dashboard, the
page description format, and the wireframe skill.

**Ten commits on this branch were built for it:**

- the hosted read-only mode: it refuses every write, withholds the host's file paths, and asks search
  engines to stay away
- the AI chat panel, which replaced a copy-this-prompt button
- editing a page too large to load, described above
- a shared designs library, so two people wireframing the same page get round 1 and round 2 rather
  than colliding
- the deployment
- **three bugs found and fixed in the capture engine**, all of them by describing 36 pages and
  checking the result against the live site. The worst: the tool's own progress indicator was landing
  inside the file that calls itself the page's exact words, on all 36 pages, where nothing reading it
  could tell it apart from Razorpay's copy. The other two: closed navigation menus were being read as
  page content, and tall pages were photographing as blank white below the hero.

Check it: `git log --oneline upstream/main..HEAD`. The commit messages are the real record of what
was decided and why, and they are long on purpose.

---

## What it gets wrong

Kept here because the library documents its own failures next to its facts.

- **`/demo/` captures badly and it is unsolved.** The navigation menus paint over the page body. It
  reproduces every time, and the page loads correctly by hand, so the fault is in the capture. Four
  causes ruled out, best remaining lead written into the page.
- **`payment-buttons` was captured mid-render**, with loading indicators still on screen. Flagged as
  unusable as a design baseline rather than shipped quietly.
- **The dashboard's "borrowed your product's colour" is wrong, and the tool does not know it.** It
  picked `#0000EE`, which it saw 7,638 times across 22 pages. That is the browser's default link
  blue, not Razorpay's brand. Counting how often a colour appears cannot tell a brand colour from a
  browser default, and this is what that costs.
- 16 of the 36 screenshots stop at 8,000px. Each page says so, and the full text is captured anyway.

---

## Running it on your own product

The hosted demo is fixed and read only. To capture your own product, run it locally, where the
browser and the login are yours:

```bash
git clone https://github.com/20prateeksingh/razorpay-design-context.git
cd razorpay-design-context
tools/start.sh                                                  # deps, server, dashboard
node tools/capture.js --url https://example.com --logged-out    # public site: no login, no profile
```

Only the chat panel needs an `ANTHROPIC_API_KEY` (see `.env.example`). Everything else works without
one. Full documentation is in [`INSTALL.md`](INSTALL.md).

---

## About the hosted copy of razorpay.com

This site hosts captured copies of public razorpay.com pages, logged out, to demonstrate the tool. It
is **not affiliated with, endorsed by, or connected to Razorpay**. All captured content, markup,
imagery and copy remain the property of Razorpay Payments Private Limited.

The capture is read only. It follows links, never clicks buttons, never submits forms, and never
moves money. The one logged exception is dismissing a cookie banner.

Every response is marked `noindex, nofollow, noarchive, noimageindex` and `robots.txt` disallows
everything, because a hosted library is a near-complete copy of somebody else's website on a domain
that is not theirs. Fine as a demonstration, wrong as a search result. Happy to take it down on
request.

The tooling is MIT licensed. See [`LICENSE`](LICENSE).
