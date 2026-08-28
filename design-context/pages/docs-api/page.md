---
slug: docs-api
title: "API Reference Guide - Razorpay"
route: /docs/api
url: https://razorpay.com/docs/api
template: /docs/:slug
collapsed: 15
captured: 2026-08-28T05:32:18.975Z
method: dom (facts) + labeled ai section (description)
---

# API Reference Guide - Razorpay

## What this page is
<!-- ai:begin method=ai — written by the describe step, NOT ground truth -->
The API Reference Guide from Razorpay's developer documentation, and the only page in this library that is not part of the marketing site. It is a different product with a different design system.

### Purpose
Orient a developer to the API: gateway URL, reference index, related links. Almost no captured content, because the documentation body loads into a client-side app the crawl did not reach.

### Location
Path `/docs/api/`, reached from the developer sections of the homepage and product pages. **Only 5 outbound links**, by far the fewest in the library, because documentation navigation is internal to the docs app rather than site-wide.

### Layout
```
┌────────────────────────────────────────────────────────────┐
│ docs chrome (NOT the marketing site's nav)                 │
│  ┌ Documentation Index ┐ ┌ content ──────┐ ┌ On this page ┐│
│  │ (left sidebar)      │ │ API Reference │ │ (right rail) ││
│  │                     │ │   Guide       │ │              ││
│  │                     │ │ API Gateway   │ │              ││
│  │                     │ │   URL         │ │              ││
│  │                     │ │ Related       │ │              ││
│  │                     │ │   Information │ │              ││
│  └─────────────────────┘ └───────────────┘ └──────────────┘│
└────────────────────────────────────────────────────────────┘
```

### Information displayed
| Element | Content | Location |
|---|---|---|
| Documentation Index | The docs sidebar | Left rail |
| On this page | In-page anchor list | Right rail |
| Body | "API Reference Guide", "API Gateway URL", "Related Information" | Centre |

### Actions visible (not performed)
> Read-only capture. Listed from the captured UI, not clicked.

- Sidebar and anchor navigation, neither expanded in this snapshot.

### State captured
One state, and a thin one. Three body headings came through, two of them carrying a leading zero-width character (`​ API Gateway URL`), which is typical of anchor-link markup in a docs generator.

### Transitions (from the captured link graph)
| From | Action | To |
|---|---|---|
| API docs | Back to marketing | `home` and four others |

### Notes
- **This page is on a different design system from every other page in the library.** Three-column docs chrome, no marketing nav, no footer sitemap. Its computed styles feed the Design language tab alongside 37 marketing pages, so a share of the aggregate palette and type ramp comes from a surface that follows different rules.
- **The documentation content itself is essentially uncaptured.** One page of a docs site is not the docs. If developer-facing design work is the goal, this library is not a usable baseline for it and the docs need a capture of their own.
- **The `/docs/:slug` frontier group holds `webhooks` and `playground` unfetched.**
<!-- ai:end -->

## Stands for
Represents **16 pages** sharing the layout `/docs/:slug` (15 not captured — same template).

## Files
[screenshot](screenshot.png) · [editable HTML](page.html) · [verbatim copy](content.md) · [style tally](computed-tokens.json) · [meta](meta.json)

## On this page (headings, verbatim)
- Documentation Index
- On this page
- API Reference Guide
- ​ API Gateway URL
- ​ Related Information

## Links to (captured pages)
- [payment-gateway](../payment-gateway/page.md)
- [payment-links-2](../payment-links-2/page.md)
- [x](../x/page.md)
- [payroll](../payroll/page.md)
- [pricing](../pricing/page.md)

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
- [x-payout-links](../x-payout-links/page.md)
- [x-payouts-90f368](../x-payouts-90f368/page.md)
- [x-tax-payments](../x-tax-payments/page.md)
- [x-vendor-payments](../x-vendor-payments/page.md)
