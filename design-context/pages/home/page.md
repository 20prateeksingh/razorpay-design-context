---
slug: home
title: "Razorpay - Best Payment Solution for Online Payments India"
route: /
nav_label: "Landing"
url: https://razorpay.com/
template: /
collapsed: 1
captured: 2026-08-28T05:29:12.809Z
method: dom (facts) + labeled ai section (description)
---

# Landing

## What this page is
<!-- ai:begin method=ai — written by the describe step, NOT ground truth -->
Razorpay's marketing homepage and the root of the whole public site: a rotating hero promoting one product at a time, then a full directory of the payments, banking, payroll and credit lines, ending in a FAQ and a sign-up call.

### Purpose
Route a first-time visitor to whichever product line matches their intent, and establish credibility before they get there. The page carries no account state and performs no transaction; every path out of it leads either to a product marketing page or into sign-up.

### Location
Path `/` — the site root, and the destination of the wordmark from every other captured page. Nav label "Landing". It is the most linked-to page in the library: 36 of the 38 captured pages link back to it.

### Layout
```
┌───────────────────────────────────────────────────────────────┐
│ utility strip · international-payments promo · currency chips │
├───────────────────────────────────────────────────────────────┤
│ nav · wordmark │ 8 menus │ support · region · Login · Sign Up  │
├───────────────────────────────────────────────────────────────┤
│ HERO (carousel, arrow both sides)                             │
│   headline · subhead · [Sign Up Now] [Know More]              │
│   right: founder photograph + floating proof chips            │
├───────────────────────────────────────────────────────────────┤
│ product finder · "Get recommendations" + 6 intent chips       │
├───────────────────────────────────────────────────────────────┤
│ logo wall · customer marks, horizontally scrolling            │
├───────────────────────────────────────────────────────────────┤
│ Razorpay Vulcan banner · AI payments foundation model         │
├───────────────────────────────────────────────────────────────┤
│ "The all in one finance platform" · 5 pillars                 │
│ "Build AI Native" · agentic payments / studio / banking       │
│ per-pillar product grids (accept · payout · bank · payroll)   │
│ industries · innovations · developer section · no-code grid   │
│ testimonial carousel · FAQ (12 questions) · closing CTA       │
│ footer                                                        │
└───────────────────────────────────────────────────────────────┘
```

### Information displayed
| Element | Content | Location |
|---|---|---|
| Utility strip | "Accept International Payments", "Global cards, Apple Pay, Google Pay at lower fee", a rotating country flag (Australia in this capture, UAE in an earlier one) and currency chips | Above the nav |
| Primary nav | Agentic Stack · Payments · Banking+ · Payroll · Engage · Partners · Startups · Resources · Pricing | Header |
| Hero | Rotating headline. Captured slide: "Easy In-store Payments for founders defying all odds", subhead "Quick Payments \| Seamless Integration \| Top-Tier UPI Stack" | Top fold |
| Hero proof chips | "Salaries Disbursed", "Taxes Paid", "Reimbursements Settled", attributed to a named co-founder | Over the hero image |
| Product finder | "Start your search" plus Accept Payments · Make Payouts · Start Business Banking · Get Credit · Automate Payroll · Something else? | Below hero |
| Logo wall | Zomato, Blinkit, Zepto, Swiggy, Lenskart, Urban Company, Nykaa, Zerodha and others | Below the finder |
| Five pillars | Accept Payments · Make Payouts · Start Business Banking · Automate Payroll · Get Credit & Loans | Mid page |
| AI section | "Build AI Native" — Agentic Payments, Agent Studio, Payments for AI Builders, Agentic Business Banking | Mid page |
| Product grids | Payment Gateway, Payment Button, Payment Links, Razorpay POS, Payment Pages; API & Bulk Payouts, Source to Pay, Payout Links, Tax Payments; Current Account, Escrow Account, Forex Management, Accounting Integration; Payroll for Startups / CAs / Enterprises; Instant Settlements, RazorpayX Corporate Cards | Under each pillar |
| Industries | e-commerce, education, financial services, IT & SaaS, freelancers | Mid page |
| Innovations | MoneySaver Export Account, Turbo UPI, Line of Credit, Magic Checkout, Optimizer, Payouts Pro — each with a claimed metric | Mid page |
| Developer section | Integrations, API Reference, Webhooks, "Try it out for yourself" | Lower page |
| No-code grid | Payment Links, Payment Pages, Payment Buttons, Invoices, QR Code, Subscriptions | Lower page |
| Testimonials | 6 customer quotes in a carousel | Lower page |
| FAQ | 12 questions, from "What is Razorpay?" to "In which countries does Razorpay operate?" | Above the footer |

### Actions visible (not performed)
> One-click capture is read-only — the actions below are listed from the captured UI, NOT clicked; destinations are stated only where a captured link proves them.

- **Sign Up / Sign Up Now** — header and hero. Destination not captured.
- **Login** — header. Destination not captured.
- **Know More** — hero secondary action, and the utility strip.
- **Hero carousel arrows** — previous / next slide. Only one slide is in this snapshot.
- **Product finder chips** — six intent filters. Behaviour not captured.
- **Nav menus** — eight top-level menus that expand; their expanded state is not in this snapshot.
- **FAQ questions** — 12 accordions, all captured collapsed.
- **Product cards** — each links to its own marketing page; the captured link graph proves 28 of these destinations.

### State captured
One state: the logged-out marketing page as first served, hero on the In-store Payments slide, every FAQ collapsed, every nav menu closed. States the UI implies but that are **not** captured: the other hero slides, the expanded nav menus, open FAQ answers, and anything behind Login or Sign Up. Reaching those needs the guided pass.

### Transitions (from the captured link graph)
| From | Action | To |
|---|---|---|
| Landing | Payments menu / product grid | `payment-gateway`, `payment-links-2`, `payment-pages`, `payment-buttons`, `pos`, `smart-collect`, `invoices`, `qr-code`, `subscriptions` |
| Landing | Banking+ menu | `x`, `x-current-accounts`, `x-escrow-accounts`, `x-payout-links`, `x-payouts-90f368`, `x-tax-payments`, `x-corporate-cards` |
| Landing | Payroll menu | `payroll` |
| Landing | Innovations cards | `magic`, `optimizer-intelligent-payments-routing`, `accept-international-payments` |
| Landing | Industries cards | `solutions-e-commerce`, `solutions-saas` |
| Landing | Developer section | `docs-api` |
| Landing | Nav · Engage / Partners / Startups / Pricing | `engage`, `partners`, `m-startup-perks`, `pricing` |
| Landing | Contact / demo | `demo` |

### Notes
- **Stands for 2 pages.** One further page shares the `/` template and was collapsed into this capture.
- **The hero is a carousel and the snapshot froze one slide.** Two captures a few hours apart caught different slides ("Automated Payroll Solution", then "Easy In-store Payments"), and the utility strip rotates country too. Treat the captured slide as one of several, never as the page's fixed content.
- **The testimonial block appears three times in `content.md`.** The same six quotes repeat; that is carousel markup duplicated in the DOM, not six times as many testimonials.
- **Two headings in `content.md` read as authoring artifacts** rather than copy: `Razorpay is built <for developers by developers>` and `<what html?>`. They are captured verbatim and are worth checking against the live page before reusing.
- **The page is 12,664px tall and `screenshot.png` holds the first 8,000px.** The full text is still in `content.md`; the lower third of the page has no screenshot evidence, so treat layout claims about the footer region as unverified.
<!-- ai:end -->

## Stands for
Represents **2 pages** sharing the layout `/` (1 not captured — same template).

## Files
[screenshot](screenshot.png) · [editable HTML](page.html) · [verbatim copy](content.md) · [style tally](computed-tokens.json) · [meta](meta.json)
_Screenshot shows the first 8000px of a 12664px page — the full page is still captured in [content.md](content.md)._

## On this page (headings, verbatim)
- Advanced Payment Gateway
- International Payments
- Automated Payroll Solution
- Effortless Business Banking
- Easy In-store Payments
- for founders defying all odds
- The all in one finance platform you’ve been looking for
- Build AI Native
- Accept Payments
- Make Payouts
- Start Business Banking
- Automate Payroll
- Get Credit & Loans
- Build AI Native
- Agentic Payments
- Agent Studio
- Payments for AI Builders
- Agentic Business Banking
- Accept Payments
- Payment Gateway
- Payment Button
- Payment Links
- Razorpay POS
- Payment Pages
- Make Payouts
- API & Bulk Payouts
- Source to Pay
- Payout Links
- Tax Payments
- Start Business Banking
- Current Account
- Escrow Account
- Forex Management
- Accounting Integration
- Automate Payroll
- Payroll for Startups
- Payroll for CAs
- Payroll for Enterprises
- Get Credit & Loans
- Instant Settlements
- RazorpayX Corporate Cards
- Powering every industry. Powering all disruptors.
- Empower your e-commerce business
- Payments for your education business.
- Payments ecosystem for financial services
- Global Payment Solutions for IT & SaaS Providers
- The personalized payment solution for freelancers
- We have innovated at every instance, creating a disruption.
- MoneySaver Export Account
- Open a virtual account in 200+ countries, save up to 50% on international bank transfer charges. Receive ACH/SWIFT/SEPA/BACS payments
- Turbo UPI
- Experience a 5X faster checkout, achieve a 10% success rate boost, all without any redirections to UPI apps.
- Line of Credit
- Get a ₹50L collateral-free credit line with low 1.5% monthly interest, and no pre-closure fees.
- Magic Checkout
- Witness a 40% increase in conversions, enjoy a 5X quicker checkout process, and reduce RTOs by 50%.
- Optimizer
- Utilise 15+ payment gateways for all Aggregators, improve success rates by 10% with zero downtime, and cut charges/fees by 15-30%.
- Payouts Pro
- Automate real-time routing across multiple accounts, and achieve 99.9% success, prevent bank downtime disruptions.
- Razorpay is built <for developers by developers>
- Integrations
- API Reference
- Webhooks
- Try it out for yourself
- <what html?>
- Not a developer? Our No-Code products have you covered
- Payment Links
- Accept payments instantly: Share links via email, text, or social.
- Payment Pages
- Accept payments without coding on a custom-branded store
- Payment Buttons
- Effortlessly add a Pay Now button without any coding knowledge
- Invoices
- Generate GST invoices, get instant payments from customers
- QR Code
- Grow your business with your own, branded multi-feature QR code
- Subscriptions
- Automate subscriptions: Recurring payments via cards & UPI
- Razorpay grows with you!
- RazorpayX works for most of our needs - be it our salaries, be it our compliance, be it our payments to vendors And the biggest headache of all OTPs went away.
- In a few hours we were able to setup the entire Payroll Management on RazorpayX. We saved 500+ Hours and Achieved 40% Cost Reduction.
- Razorpay's revolving Line of Credit simplifies financial management, aiding inventory planning during cash flow gaps.
- Razorpay Magic Checkout is truly a magical solution. Our conversion rate has increased by 35% & our COD, RTO has drastically decreased.
- Razorpay simplifies cross-border bank transfers with the MoneySaver Exporter Account, reducing FIRC generation time from up to 5 days to seconds.
- We chose Razorpay because Razorpay is easy to setup, there are different options for my customers & millions of businesses already trust Razorpay.
- RazorpayX works for most of our needs - be it our salaries, be it our compliance, be it our payments to vendors And the biggest headache of all OTPs went away.
- In a few hours we were able to setup the entire Payroll Management on RazorpayX. We saved 500+ Hours and Achieved 40% Cost Reduction.
- Razorpay's revolving Line of Credit simplifies financial management, aiding inventory planning during cash flow gaps.
- Razorpay Magic Checkout is truly a magical solution. Our conversion rate has increased by 35% & our COD, RTO has drastically decreased.
- Razorpay simplifies cross-border bank transfers with the MoneySaver Exporter Account, reducing FIRC generation time from up to 5 days to seconds.
- We chose Razorpay because Razorpay is easy to setup, there are different options for my customers & millions of businesses already trust Razorpay.
- RazorpayX works for most of our needs - be it our salaries, be it our compliance, be it our payments to vendors And the biggest headache of all OTPs went away.
- In a few hours we were able to setup the entire Payroll Management on RazorpayX. We saved 500+ Hours and Achieved 40% Cost Reduction.
- Razorpay's revolving Line of Credit simplifies financial management, aiding inventory planning during cash flow gaps.
- Razorpay Magic Checkout is truly a magical solution. Our conversion rate has increased by 35% & our COD, RTO has drastically decreased.
- Razorpay simplifies cross-border bank transfers with the MoneySaver Exporter Account, reducing FIRC generation time from up to 5 days to seconds.
- We chose Razorpay because Razorpay is easy to setup, there are different options for my customers & millions of businesses already trust Razorpay.
- Frequently asked questions
- What is Razorpay?
- What services does Razorpay offer?
- What online payment solutions does Razorpay offer?
- What offline payment solutions does Razorpay offer?
- What international payment solutions does Razorpay offer?
- What are RazorpayX Payroll and Payouts?
- Which banks are supported by RazorpayX?
- What is Razorpay Rize?
- Is Razorpay safe and secure?
- Is Razorpay RBI approved and regulated?
- Does Razorpay provide customer support?
- Which companies use Razorpay’s products?
- In which countries does Razorpay operate?
- Supercharge your business with Razorpay

## Links to (captured pages)
- [accept-international-payments](../accept-international-payments/page.md)
- [engage](../engage/page.md)
- [m-startup-perks](../m-startup-perks/page.md)
- [pricing](../pricing/page.md)
- [x](../x/page.md)
- [x-payouts-90f368](../x-payouts-90f368/page.md)
- [x-tax-payments](../x-tax-payments/page.md) _(via template)_
- [x-current-accounts](../x-current-accounts/page.md)
- [x-escrow-accounts](../x-escrow-accounts/page.md) _(via template)_
- [x-corporate-cards](../x-corporate-cards/page.md)
- [solutions-e-commerce](../solutions-e-commerce/page.md)
- [solutions-saas](../solutions-saas/page.md)
- [optimizer-intelligent-payments-routing](../optimizer-intelligent-payments-routing/page.md)
- [docs-api](../docs-api/page.md)
- [payment-links-2](../payment-links-2/page.md)
- [payment-pages](../payment-pages/page.md)
- [payment-buttons](../payment-buttons/page.md)
- [invoices](../invoices/page.md)
- [qr-code](../qr-code/page.md)
- [subscriptions](../subscriptions/page.md)
- [payment-gateway](../payment-gateway/page.md)
- [pos](../pos/page.md)
- [smart-collect](../smart-collect/page.md)
- [payroll](../payroll/page.md)
- [partners](../partners/page.md) _(via template)_
- [demo](../demo/page.md)
- [x-payout-links](../x-payout-links/page.md)

## Linked from
- [accept-international-payments](../accept-international-payments/page.md)
- [ai-builders](../ai-builders/page.md)
- [card-tokenisation](../card-tokenisation/page.md)
- [demo](../demo/page.md)
- [engage](../engage/page.md)
- [invoices](../invoices/page.md)
- [m-startup-perks](../m-startup-perks/page.md)
- [magic](../magic/page.md)
- [optimizer-intelligent-payments-routing](../optimizer-intelligent-payments-routing/page.md)
- [partners](../partners/page.md)
- [payment-buttons](../payment-buttons/page.md)
- [payment-gateway](../payment-gateway/page.md)
- [payment-links-2](../payment-links-2/page.md)
- [payment-pages](../payment-pages/page.md)
- [payments-app](../payments-app/page.md)
- [payroll](../payroll/page.md)
- [pos](../pos/page.md)
- [pricing](../pricing/page.md)
- [qr-code](../qr-code/page.md)
- [smart-collect](../smart-collect/page.md)
- [solutions-e-commerce](../solutions-e-commerce/page.md)
- [solutions-saas](../solutions-saas/page.md)
- [subscriptions](../subscriptions/page.md)
- [support-payments](../support-payments/page.md)
- [upi-autopay](../upi-autopay/page.md)
- [x](../x/page.md)
- [x-corporate-cards](../x-corporate-cards/page.md)
- [x-current-accounts](../x-current-accounts/page.md)
- [x-escrow-accounts](../x-escrow-accounts/page.md)
- [x-forex](../x-forex/page.md)
- [x-payout-links](../x-payout-links/page.md)
- [x-payouts-90f368](../x-payouts-90f368/page.md)
- [x-tax-payments](../x-tax-payments/page.md)
- [x-vendor-payments](../x-vendor-payments/page.md)
