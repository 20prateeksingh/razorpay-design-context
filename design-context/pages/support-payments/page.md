---
slug: support-payments
title: "Contact Razorpay Customer Care – Razorpay Support"
route: /support/payments/
url: https://razorpay.com/support/payments/
template: /support/:slug
collapsed: 4
captured: 2026-08-28T05:30:52.153Z
method: dom (facts) + labeled ai section (description)
---

# Support Details

## What this page is
<!-- ai:begin method=ai — written by the describe step, NOT ground truth -->
The support entry point, built as a persona router: five role cards that ask who you are before offering any help content, on an older template than the rest of the site.

### Purpose
Sort an incoming visitor into the right support path before showing them anything. No knowledge-base content appears on this page itself; it exists purely to branch.

### Location
Path `/support/payments/`, reached from the header support control and from `/pricing/`. It is the only support-surface page in this library.

### Layout
```
┌────────────────────────────────────────────────────────────┐
│ nav — OLDER TEMPLATE: no "Agentic Stack", "Log In"         │
│ HERO (angular blue/violet wedge, right)                    │
│   "Hi, I am a..." + rule                                   │
│   "How do we know you?"                                    │
│   persona cards, 2-column:                                 │
│     [Customer]          [Existing Merchant]                │
│     [Existing Partner]  [Prospective Client]               │
│     [Cybercrime Officer]                                   │
│   right: headset-and-monitor illustration                  │
├────────────────────────────────────────────────────────────┤
│ large empty region                                         │
├────────────────────────────────────────────────────────────┤
│ blue CTA band · "Start Doing More with Razorpay            │
│   Subscriptions" · Quick Onboarding · Unlimited Plans ·    │
│   Unlimited Subscriptions · 24x7 Support · [Sign Up]       │
│ footer                                                     │
└────────────────────────────────────────────────────────────┘
```

### Information displayed
| Element | Content | Location |
|---|---|---|
| Prompt | "Hi, I am a…" with the sub-line "How do we know you?" | Hero |
| Customer | "I recently paid online via Razorpay" | Persona card |
| Existing Merchant | "I currently use Razorpay for my business" | Persona card |
| Existing Partner | "I am a Razorpay partner for my customers" | Persona card |
| Prospective Client | "I want to use Razorpay for my business" | Persona card |
| Cybercrime Officer | "I need some information from Razorpay" | Persona card |
| Closing band | "Start Doing More with Razorpay Subscriptions", with Quick Onboarding, Unlimited Plans, Unlimited Subscriptions, 24x7 Support | Lower page |

### Actions visible (not performed)
> Read-only capture. Listed from the captured UI, not clicked.

- **Five persona cards** — each branches to a different support path. **None of those destinations are captured**, so the library knows the router exists and nothing about where it leads.
- **Sign Up** in the closing band.

### State captured
One state: the router before any persona is chosen. Every downstream support surface is unmeasured.

### Transitions (from the captured link graph)
| From | Action | To |
|---|---|---|
| Support | Header and footer navigation | `home`, `pricing`, and the product set |
| Support | Persona cards | not captured |

### Notes
- **A "Cybercrime Officer" persona sits in the main support router.** That is an unusual and specific audience to surface at the top level, and worth knowing about before anyone redesigns this page.
- **The closing call to action is for Subscriptions**, which has nothing to do with support. A product CTA block appears to have been dropped onto a support page; it reads as a content-management artifact rather than a deliberate choice.
- **Older navigation template**, like `card-tokenisation` and `payment-buttons`.
- **The middle of the page is empty** in the capture. Given the router is the whole page, that may be accurate rather than a capture failure, but it is worth a second look.
<!-- ai:end -->

## Stands for
Represents **5 pages** sharing the layout `/support/:slug` (4 not captured — same template).

## Files
[screenshot](screenshot.png) · [editable HTML](page.html) · [verbatim copy](content.md) · [style tally](computed-tokens.json) · [meta](meta.json)

## On this page (headings, verbatim)
- Hi, I am a...
- Start Doing More with Razorpay Subscriptions

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
- [payment-buttons](../payment-buttons/page.md)
- [x](../x/page.md)
- [x-payout-links](../x-payout-links/page.md)
- [demo](../demo/page.md)
- [x-current-accounts](../x-current-accounts/page.md)
- [x-escrow-accounts](../x-escrow-accounts/page.md)
- [x-forex](../x-forex/page.md)
- [x-tax-payments](../x-tax-payments/page.md) _(via template)_
- [x-corporate-cards](../x-corporate-cards/page.md)
- [pricing](../pricing/page.md)
- [payroll](../payroll/page.md)
- [engage](../engage/page.md)
- [partners](../partners/page.md)
- [docs-api](../docs-api/page.md)
- [solutions-saas](../solutions-saas/page.md)
- [solutions-e-commerce](../solutions-e-commerce/page.md)
- [smart-collect](../smart-collect/page.md)
- [invoices](../invoices/page.md)

## Linked from
- [card-tokenisation](../card-tokenisation/page.md)
- [demo](../demo/page.md)
- [invoices](../invoices/page.md)
- [optimizer-intelligent-payments-routing](../optimizer-intelligent-payments-routing/page.md)
- [payment-buttons](../payment-buttons/page.md)
- [payments-app](../payments-app/page.md)
- [pricing](../pricing/page.md)
- [solutions-e-commerce](../solutions-e-commerce/page.md)
- [solutions-saas](../solutions-saas/page.md)
- [subscriptions](../subscriptions/page.md)
- [x-forex](../x-forex/page.md)
- [x-payout-links](../x-payout-links/page.md)
- [x-tax-payments](../x-tax-payments/page.md)
