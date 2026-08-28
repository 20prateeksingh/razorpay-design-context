---
slug: pricing
title: "Payment Gateway Charges - Simple & Transparent Pricing"
route: /pricing/
nav_label: "Pricing"
url: https://razorpay.com/pricing/
captured: 2026-08-28T05:30:15.187Z
method: dom (facts) + labeled ai section (description)
---

# Pricing

## What this page is
<!-- ai:begin method=ai — written by the describe step, NOT ground truth -->
The public pricing page, organised as four tabs (Payments, Business Banking, Payroll, Credit Solutions) with a per-method rate card and an enterprise contact route for anyone above five lakh monthly revenue.

### Purpose
State what Razorpay charges, method by method, and split the visitor into self-serve or sales-assisted. It is the page every product page points at when a visitor wants the number.

### Location
Path `/pricing/`, in the primary nav on every captured page, and linked from 27 pages in this library.

### Layout
```
┌────────────────────────────────────────────────────────────┐
│ nav (site standard)                                        │
├────────────────────────────────────────────────────────────┤
│ tab strip · Payments │ Business Banking │ Payroll │ Credit  │
├────────────────────────────────────────────────────────────┤
│ headline rate · "Start accepting payments at just …"       │
│ "platform fees for first 90 days" promo                    │
├────────────────────────────────────────────────────────────┤
│ method rate card — grouped rows, logos per group:          │
│   Cardless EMI · EMI (Credit/Debit) · Netbanking ·         │
│   Wallets · Pay Later · Credit Card on UPI                 │
│   each row: brand logos + "+N Others ›"                    │
│   footnote: "* Platform fee 2.15% + GST"                   │
├────────────────────────────────────────────────────────────┤
│ blue cross-sell panel · Payment Links / Pages /            │
│   Buttons / Invoices + device artwork                      │
├────────────────────────────────────────────────────────────┤
│ "Start accepting payments today" [Sign Up]                 │
│ ENTERPRISE PLAN · "Is your monthly revenue more than ₹5L?" │
│ startup custom-pricing block · banking block               │
│ testimonials · FAQ · closing CTA · footer                  │
└────────────────────────────────────────────────────────────┘
```

### Information displayed
| Element | Content | Location |
|---|---|---|
| Tabs | Payments · Business Banking · Payroll · Credit Solutions | Top |
| Promo | "platform fees for first 90 days" | Above the rate card |
| Cardless EMI | HDFC Bank, Kotak, ICICI Bank, Zest, Bank of Baroda, "+5 Others" | Rate card |
| EMI (Credit and Debit Card) | Visa, Mastercard, American Express, Diners Club International | Rate card |
| Netbanking | ICICI, Kotak, Axis, HDFC, SBI, "+67 Others" | Rate card |
| Wallets | MobiKwik, PayZapp, Freecharge, JioMoney, airtel, PayPal, "+4 Others" | Rate card |
| Pay Later | PayLater by ICICI, FlexiPay, LazyPay, Simpl | Rate card |
| Credit Card on UPI | RuPay | Rate card |
| Fee footnote | "* Platform fee 2.15% + GST" | Under the rate card |
| Enterprise | "Is your monthly revenue more than ₹5,00,000?" with a contact route | Mid page |
| Startup | "Custom Pricing Tailored to Your Startup" | Mid page |
| Banking | "Banking made awesome for business — speak to us & choose RazorpayX Account that's best for you" | Mid page |
| FAQ | "What are payment processing charges?", "Are you a developer?" | Above footer |

### Actions visible (not performed)
> Read-only capture. Listed from the captured UI, not clicked.

- **Four pricing tabs** — only the Payments tab is captured; the other three panels are not in this snapshot.
- **"+N Others ›" expanders** — six of them, all captured collapsed. The full bank and wallet lists behind them are not captured.
- **Sign Up** — appears twice.
- **Enterprise and startup contact routes** — forms or contact flows not captured.

### State captured
One state: the Payments tab, all method groups collapsed to their first few logos. Not captured: the Business Banking, Payroll and Credit Solutions tabs, or any expanded "+N Others" list. Those tabs are reachable by interaction only; the guided pass would be needed to record them.

### Transitions (from the captured link graph)
| From | Action | To |
|---|---|---|
| Pricing | Cross-sell panel | `payment-links-2`, `payment-pages`, `payment-buttons`, `invoices` |
| Pricing | Payments products | `payment-gateway`, `qr-code`, `magic`, `subscriptions`, `optimizer-intelligent-payments-routing`, `pos`, `accept-international-payments`, `smart-collect` |
| Pricing | Banking and payroll | `x`, `x-current-accounts`, `x-payout-links`, `x-escrow-accounts`, `x-forex`, `x-tax-payments`, `x-vendor-payments`, `x-corporate-cards`, `capital`, `payroll` |
| Pricing | Support and sales | `support-payments`, `demo`, `partners` |

### Notes
- **Three of the four pricing tabs have no captured evidence at all.** This library can answer questions about payments pricing and not about banking, payroll or credit pricing. Treat their absence as unmeasured, not as "no pricing exists".
- **Every rate group is truncated behind a "+N Others" control**, including "+67 Others" for netbanking. The captured page names only the first few brands per method.
- **The headline rate itself sits in an element the heading extract did not capture** ("Start accepting payments at just" is followed by the figure in the live DOM). Read `content.md` rather than the heading list if the number matters.
- Page is 9,877px; `screenshot.png` covers the first 8,000px.
<!-- ai:end -->

## Files
[screenshot](screenshot.png) · [editable HTML](page.html) · [verbatim copy](content.md) · [style tally](computed-tokens.json) · [meta](meta.json)
_Screenshot shows the first 8000px of a 9877px page — the full page is still captured in [content.md](content.md)._

## On this page (headings, verbatim)
- Payments
- Business Banking
- Payroll
- Credit Solutions
- Start accepting payments at just
- platform fees for first 90 days
- Custom Pricing Tailored to Your Startup
- Is your monthly revenue more than ₹5,00,000?
- Banking made awesome for business
- Speak to us & choose RazorpayX Account that's best for you.
- • An experience people love to talk about •
- Frequently Asked Questions
- What are payment processing charges?
- Are you a developer?
- Supercharge your business with Razorpay

## Links to (captured pages)
- [home](../home/page.md)
- [payment-gateway](../payment-gateway/page.md)
- [payment-links-2](../payment-links-2/page.md)
- [payment-buttons](../payment-buttons/page.md)
- [payment-pages](../payment-pages/page.md)
- [qr-code](../qr-code/page.md)
- [subscriptions](../subscriptions/page.md)
- [optimizer-intelligent-payments-routing](../optimizer-intelligent-payments-routing/page.md)
- [pos](../pos/page.md)
- [accept-international-payments](../accept-international-payments/page.md)
- [engage](../engage/page.md)
- [x-current-accounts](../x-current-accounts/page.md)
- [payroll](../payroll/page.md)
- [x](../x/page.md)
- [x-payout-links](../x-payout-links/page.md)
- [x-escrow-accounts](../x-escrow-accounts/page.md)
- [x-forex](../x-forex/page.md)
- [x-tax-payments](../x-tax-payments/page.md) _(via template)_
- [x-corporate-cards](../x-corporate-cards/page.md)
- [partners](../partners/page.md)
- [docs-api](../docs-api/page.md)
- [solutions-saas](../solutions-saas/page.md)
- [solutions-e-commerce](../solutions-e-commerce/page.md)
- [support-payments](../support-payments/page.md)
- [invoices](../invoices/page.md)
- [x-vendor-payments](../x-vendor-payments/page.md)
- [smart-collect](../smart-collect/page.md)
- [partners](../partners/page.md) _(via template)_
- [demo](../demo/page.md)

## Linked from
- [accept-international-payments](../accept-international-payments/page.md)
- [card-tokenisation](../card-tokenisation/page.md)
- [demo](../demo/page.md)
- [docs-api](../docs-api/page.md)
- [engage](../engage/page.md)
- [home](../home/page.md)
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
- [x-payouts-90f368](../x-payouts-90f368/page.md)
- [x-tax-payments](../x-tax-payments/page.md)
- [x-vendor-payments](../x-vendor-payments/page.md)
