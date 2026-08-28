---
slug: x-payout-links
title: "Payout Links by RazorpayX | Instant, Easy & Secure Payments"
route: /x/payout-links/
url: https://razorpay.com/x/payout-links/
captured: 2026-08-28T05:39:01.575Z
method: dom (facts) + labeled ai section (description)
---

# Payout Links by RazorpayX | Instant, Easy & Secure Payments

## What this page is
<!-- ai:begin method=ai — written by the describe step, NOT ground truth -->
RazorpayX Payout Links: send money to someone whose bank details you do not have, by sending them a link they redeem. The page carries a live demo form that creates a real payout link.

### Purpose
Solve the case where a business owes money to a person it has no account details for — refunds, reimbursements, gig payouts. The recipient supplies their own destination, so the payer never collects bank details at all.

### Location
Path `/x/payout-links/`, reached from the Banking+ nav and the RazorpayX pages.

### Layout
```
┌────────────────────────────────────────────────────────────┐
│ nav — older template: no "Agentic Stack", "Log In"         │
├────────────────────────────────────────────────────────────┤
│ HERO (dark navy, angular line motifs both sides)           │
│   "Make instant payouts without bank details"              │
│   three proof chips: 100% secure payments ·                │
│     Share link via SMS or Mail · Customize your payout link│
│   [Sign Up →]                                              │
│   demo card · "Try making a Payout Link"                   │
│     Amount ₹1 (fixed) · Name · Phone No · Email ID         │
│     reCAPTCHA · [Create A Demo Payout Link]                │
├────────────────────────────────────────────────────────────┤
│ "How It Works" (dark section)                              │
│   four dashboard mockups in sequence:                      │
│   Razorpay Dashboard (create) → Razorpay Dashboard (share) │
│   → Customer Input (UPI or bank details) →                 │
│   Payout Confirmation ("Payment recieved")                 │
│ "Why Payout Links" · audience section · footer             │
└────────────────────────────────────────────────────────────┘
```

### Information displayed
| Element | Content | Location |
|---|---|---|
| Core proposition | "Make instant payouts without bank details" | Hero |
| Proof chips | 100% secure payments · Share link via SMS or Mail · Customize your payout link | Hero |
| Demo form | Amount fixed at ₹1, then Name ("Enter Your Name"), Phone No ("Enter your mobile Number"), Email ID ("Enter your Email ID"), a reCAPTCHA checkbox, and "Create A Demo Payout Link" | Hero card |
| How It Works | "RazorpayX Payout Links removes the friction, time, and effort required to collect bank account details to make payouts. Just enter the beneficiary's contact details and we do the rest — from sending the link to collect bank account/UPI details, processing the payout and giving you the confirmation!" | Mid page |
| Flow mockups | Create Link (name, contact, email) → Share Link (SMS or Email) → Customer Input (UPI ID or bank details) → Payout Confirmation with "Amount has been credited in your account successfully" | Mid page |

### Actions visible (not performed)
> Read-only capture. Listed from the captured UI, not clicked. **Nothing was typed into the demo form and Create A Demo Payout Link was not pressed** — the form is gated by a reCAPTCHA and would send real money.

- **Create A Demo Payout Link** — creates a live ₹1 payout link. Not exercised.
- **Sign Up**, and the standard header routes.

### State captured
One state: the demo form **empty and unsubmitted**, showing its placeholder text and an unchecked reCAPTCHA. The filled, validated and submitted states are not captured, and reaching them would mean transacting.

### Transitions (from the captured link graph)
| From | Action | To |
|---|---|---|
| Payout Links | Banking suite | `x` and the other `x-*` pages |
| Payout Links | Payments and commercial | the payments set, `payroll`, `pricing`, `demo` |

### Notes
- **An earlier version of this screen doc said the page was captured with its navigation menus stuck open. That was wrong.** The screenshot was always clean. What was actually happening: this page collapses its nav mega-menus by a method other than `display:none`, and the content extractor only skipped `display:none` and `visibility:hidden` — so every hidden menu label ("ACCEPT PAYMENTS OFFLINE", "FREE TOOLS", and ten more) landed in `content.md` as though it were page copy. The extractor now uses the browser's own `checkVisibility` and also skips zero-height clipped containers, and this page was the only one in the library affected.
- **The demo form is one of only two live interactive tools in this library**, alongside the QR generator on `qr-code`. Unlike that one, exercising this form moves real money.
- **Older navigation template**, like `card-tokenisation`, `payment-buttons` and `support-payments`.
<!-- ai:end -->

## Files
[screenshot](screenshot.png) · [editable HTML](page.html) · [verbatim copy](content.md) · [style tally](computed-tokens.json) · [meta](meta.json)

## On this page (headings, verbatim)
- Make instant payouts without bank details
- How It Works
- Why Payout Links
- RazorpayX Payout Links is built for businesses like you
- RazorpayX works with
- Offer a paymentsexperience people loveto talk about
- Among the best in its class
- Payout Links is a life saver
- Frequently Asked Questions

## Links to (captured pages)
- [home](../home/page.md)
- [payment-gateway](../payment-gateway/page.md)
- [payment-links-2](../payment-links-2/page.md)
- [payment-pages](../payment-pages/page.md)
- [payment-buttons](../payment-buttons/page.md)
- [qr-code](../qr-code/page.md)
- [smart-collect](../smart-collect/page.md)
- [subscriptions](../subscriptions/page.md)
- [accept-international-payments](../accept-international-payments/page.md)
- [pos](../pos/page.md)
- [optimizer-intelligent-payments-routing](../optimizer-intelligent-payments-routing/page.md)
- [x](../x/page.md)
- [demo](../demo/page.md)
- [x-current-accounts](../x-current-accounts/page.md)
- [x-escrow-accounts](../x-escrow-accounts/page.md)
- [x-forex](../x-forex/page.md)
- [x-tax-payments](../x-tax-payments/page.md) _(via template)_
- [x-corporate-cards](../x-corporate-cards/page.md)
- [x-vendor-payments](../x-vendor-payments/page.md)
- [payroll](../payroll/page.md)
- [partners](../partners/page.md)
- [solutions-saas](../solutions-saas/page.md)
- [solutions-e-commerce](../solutions-e-commerce/page.md)
- [support-payments](../support-payments/page.md)
- [invoices](../invoices/page.md)
- [docs-api](../docs-api/page.md)

## Linked from
- [accept-international-payments](../accept-international-payments/page.md)
- [card-tokenisation](../card-tokenisation/page.md)
- [demo](../demo/page.md)
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
- [x-payouts-90f368](../x-payouts-90f368/page.md)
- [x-tax-payments](../x-tax-payments/page.md)
- [x-vendor-payments](../x-vendor-payments/page.md)
