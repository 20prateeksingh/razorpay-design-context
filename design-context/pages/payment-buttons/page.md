---
slug: payment-buttons
title: "Collect Payments Online on Websites, Blogs with Payment Buttons"
route: /payment-buttons/
url: https://razorpay.com/payment-buttons/
captured: 2026-08-28T05:34:01.894Z
method: dom (facts) + labeled ai section (description)
---

# Collect Payments Online on Websites, Blogs with Payment Buttons

## What this page is
<!-- ai:begin method=ai — written by the describe step, NOT ground truth -->
The Payment Buttons product page: a copy-paste snippet that puts a Pay Now button on any site, and the clearest example in this library of a page on an older template than the rest of the site.

### Purpose
Sell the lowest-effort way to take a payment: create a button, copy two lines of HTML, paste. It also carries its own inline pricing block rather than deferring to `/pricing/`.

### Location
Path `/payment-buttons/`, reached from the Payments nav, the homepage no-code grid and the no-code cross-sell blocks.

### Layout
```
┌────────────────────────────────────────────────────────────┐
│ nav — OLDER TEMPLATE: no "Agentic Stack" item, outlined    │
│       "Log In", different wordmark treatment               │
│ HERO (blue angular ground, right)                          │
│   "Create, Copy & Collect With Payment Button"             │
│   [Sign up now →] [View Documentation]                     │
│   "Introducing Subscription on payment buttons" + NEW tag  │
│   right: embedded YouTube player                           │
│ "Say hello to the powerful Payment Button"                 │
│   dark code sample card (<form> + <script> snippet)        │
│   [Run the code]                                           │
│ live demo · feature grid (6) · DIY creation section        │
│ inline pricing · Standard Plan 2%* · setup fee ·           │
│   annual maintenance · Customized Plan                     │
│ FAQ · closing CTA · footer                                 │
└────────────────────────────────────────────────────────────┘
```

### Information displayed
| Element | Content | Location |
|---|---|---|
| Hero | "Start accepting one time and subscription payments on your website in less than 5 minutes. Thousands of NGOs, SMEs, and freelancers are collecting payments by adding a payment button to their website on their own." | Top fold |
| Video | Embedded YouTube player titled around "With One Button Accept one time and recurring… Payments" | Top fold, right |
| Code sample | A `<form>` with `<script src="https://cdn.razorpay.com/static/widget/payment-button.js">` and `data-payment_button_id`, `data-button_text = "Buy Now"`, `data-button_theme = "brand-color"` | Mid page |
| Features | Creating powerful websites · No integration needed · International payments · Looks Great On Mobile · Wide Compatibility · Powered By Razorpay | Mid page |
| Pricing | "No Extra Charges Applicable", Standard Plan at 2%* Razorpay platform fee, One-Time Setup Fee, Annual Maintenance Fee, Customized Plan | Lower page |

### Actions visible (not performed)
> Read-only capture. Listed from the captured UI, not clicked.

- **Run the code** — an in-page sandbox that renders the snippet. Its result is not captured.
- **Watch on YouTube / play** — third-party embed, off-origin.
- **Sign up now**, **View Documentation**, **Know more** on the subscriptions banner.
- **"Catch Payment Buttons Live In Action"** — a live demo block whose interactive state is not captured.

### State captured
One state, and **it is not a clean one**. See Notes: the kit's hygiene check found two loading indicators still visible in the captured DOM, so this page was snapshotted mid-render.

### Transitions (from the captured link graph)
| From | Action | To |
|---|---|---|
| Payment Buttons | No-code cross-sell | `payment-links-2`, `payment-pages`, `invoices`, `qr-code`, `smart-collect` |
| Payment Buttons | Core payments and banking | `payment-gateway`, `subscriptions`, `pos`, `x` and the `x-*` set |
| Payment Buttons | Commercial | `pricing`, `demo`, `docs-api` |

### Notes
- **Captured mid-render — treat this snapshot with suspicion.** `tools/hygiene.js` reports two loading indicators still present in the DOM. Anything that was still streaming in when the shutter fell is missing or half-drawn. Re-capture before using this page as a design baseline.
- **This page runs an older navigation template than the rest of the site.** No "Agentic Stack" entry, an outlined "Log In" rather than the standard "Login", and a different header treatment. It is real evidence of template drift across the marketing site, not a capture error.
- **It states its own pricing inline** (2%* platform fee, setup and maintenance lines) where sibling pages send the visitor to `/pricing/`. Two sources of pricing truth on one site.
- **It embeds third-party YouTube.** The only captured page in this library that does.
<!-- ai:end -->

## Files
[screenshot](screenshot.png) · [editable HTML](page.html) · [verbatim copy](content.md) · [style tally](computed-tokens.json) · [meta](meta.json)
_Screenshot shows the first 8000px of a 9336px page — the full page is still captured in [content.md](content.md)._

## On this page (headings, verbatim)
- Create, Copy & Collect With Payment Button
- Say hello to the powerful Payment Button
- Introducing Razorpay Subscriptions On Payment Button
- Catch Payment Buttons Live In Action
- Power of a Payment Gateway, At The Touch Of A Button
- Creating powerful websites
- No integration needed
- International payments
- Looks Great On Mobile
- Wide Compatibility
- Powered By Razorpay
- Simple Do-It-Yourself Payment Button Creation
- Create from a template or start from scratch
- Frequently Asked Questions
- No Extra Charges Applicable
- Standard Plan
- 2%*
- Razorpay platform fee
- One-Time Setup Fee
- Annual Maintenance Fee
- Customized Plan
- Start doing more with Razorpay Payment Button

## Links to (captured pages)
- [home](../home/page.md)
- [payment-gateway](../payment-gateway/page.md)
- [payment-links-2](../payment-links-2/page.md)
- [payment-pages](../payment-pages/page.md)
- [qr-code](../qr-code/page.md)
- [subscriptions](../subscriptions/page.md)
- [optimizer-intelligent-payments-routing](../optimizer-intelligent-payments-routing/page.md)
- [pos](../pos/page.md)
- [accept-international-payments](../accept-international-payments/page.md)
- [engage](../engage/page.md)
- [pricing](../pricing/page.md)
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
- [smart-collect](../smart-collect/page.md)
- [partners](../partners/page.md) _(via template)_
- [invoices](../invoices/page.md)
- [demo](../demo/page.md)

## Linked from
- [accept-international-payments](../accept-international-payments/page.md)
- [card-tokenisation](../card-tokenisation/page.md)
- [demo](../demo/page.md)
- [engage](../engage/page.md)
- [home](../home/page.md)
- [invoices](../invoices/page.md)
- [m-startup-perks](../m-startup-perks/page.md)
- [optimizer-intelligent-payments-routing](../optimizer-intelligent-payments-routing/page.md)
- [partners](../partners/page.md)
- [payment-gateway](../payment-gateway/page.md)
- [payment-links-2](../payment-links-2/page.md)
- [payment-pages](../payment-pages/page.md)
- [payments-app](../payments-app/page.md)
- [payroll](../payroll/page.md)
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
