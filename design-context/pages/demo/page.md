---
slug: demo
title: "Best Payment Gateway in India to Accept Online Payments"
route: /demo/
url: https://razorpay.com/demo/
captured: 2026-08-28T05:32:11.135Z
method: dom (facts) + labeled ai section (description)
---

# Best Payment Gateway in India to Accept Online Payments

## What this page is
<!-- ai:begin method=ai — written by the describe step, NOT ground truth -->
A live demo storefront that sells a "Fine Tshirt" for ₹1 to show Razorpay Checkout working end to end. The transaction is real and auto-refunded. Its capture in this library is broken and should not be used as visual evidence.

### Purpose
Let a prospective merchant experience Checkout as a buyer, without signing up. The page states plainly: "This is a real transaction, and the money will be auto-refunded to your account in 4-5 days."

### Location
Path `/demo/`, linked from most product pages and from the footer as "Checkout Demo".

### Layout
> Taken from a manual verification load, **not** from this library's screenshot, which is broken. See Notes.

```
┌────────────────────────────────────────────────────────────┐
│ nav (site standard)                                        │
├────────────────────────────────────────────────────────────┤
│ product page, two columns, generous whitespace             │
│  ┌ thumbs ┐ ┌ main image ─────┐  Fine Tshirt               │
│  │  [tee] │ │                 │  ★★★★★                     │
│  │  [tee] │ │   blue t-shirt  │  ₹ 1.00                    │
│  │  [tee] │ │   illustration  │  description paragraph     │
│  └────────┘ └─────────────────┘  [Pay with Razorpay]       │
│                                  *real transaction, auto-  │
│                                   refunded in 4-5 days     │
│  "You can find instructions for integrating checkout       │
│   form here"                                               │
├────────────────────────────────────────────────────────────┤
│ FOOTER — the fullest sitemap on the site                   │
└────────────────────────────────────────────────────────────┘
```

### Information displayed
| Element | Content | Location |
|---|---|---|
| Product | "Fine Tshirt", five stars, ₹ 1.00 | Right column |
| Description | "Razorpay provides an end-to-end online payments solution . For International payments, we accept Credit Cards, Debit Cards and PayPal wallet. We support nearly 100 major currencies from across the globe." | Right column |
| Disclaimer | "*This is a real transaction, and the money will be auto-refunded to your account in 4-5 days." | Under the button |
| Integration link | "You can find instructions for integrating checkout form here" | Below the product |
| Footer, Accept Payments | Payment Aggregator, Payment Gateway, Payment Pages, Payment Links, Razorpay POS (NEW), QR Codes, Subscriptions, Smart Collect, Optimizer, Instant Settlements | Footer |
| Footer, More | Route, Invoices, Freelancer Payments, International Payments, Flash Checkout, UPI, ePOS, Checkout Demo | Footer |
| Footer, Free Tools | GST Calculator, GST Number Search, GST Search by PAN, ROI Calculator, CAGR Calculator, EBITDA Calculator, Business Directory | Footer |
| Registered address | Razorpay Payments Private Limited, 1st Floor, SJR Cyber, 22 Laskar Hosur Road, Adugodi, Bengaluru, 560030, Karnataka, India — CIN U62099KA2024PTC188982 | Footer |

### Actions visible (not performed)
> Read-only capture. Listed from the captured UI, not clicked.

- **Pay with Razorpay** — opens Razorpay Checkout and takes a real ₹1 payment. **Not clicked, and it must not be**: the kit never drives a product, and this control moves money. Checkout itself is therefore absent from this library.

### State captured
One broken state. The product body did not render into the screenshot; the navigation mega-menus painted over the top of the page instead. `content.md` yielded one content heading, "Fine Tshirt". The footer region is correct.

### Transitions (from the captured link graph)
The 30 outbound links recorded here come from the footer and the mis-rendered menus, not from the page's own body. Treat this page's edges on the map as navigation chrome rather than genuine page relationships.

### Notes
- **This capture is a known, unresolved defect.** It reproduces every time. Ruled out so far: the cookie-dismiss click (re-captured with `--no-dismiss`, unchanged), viewport width, missing reduced-motion (added, unchanged), and the lazy-scroll settle. Loading the page manually at the same viewport renders it correctly, so the fault is in the capture path rather than the page.
- **The page is only 1,757px tall**, so it takes the plain `fullPage` route rather than the stitched or resized ones. A viewport-only screenshot of it renders correctly, which is the most promising lead for whoever picks this up.
- **Razorpay Checkout is the most valuable unreached surface in this library**, and it is one click behind this page. It cannot be captured by the read-only crawl, because reaching it means starting a payment. A guided pass driven by a human is the only honest route to it.
- **The footer here is the fullest sitemap in the library** and names products with no captured page of their own: Route, Instant Settlements, Source to pay, Freelancer Payments, Flash Checkout, ePOS, Knowledge base.
<!-- ai:end -->

## Files
[screenshot](screenshot.png) · [editable HTML](page.html) · [verbatim copy](content.md) · [style tally](computed-tokens.json) · [meta](meta.json)

## On this page (headings, verbatim)
- Fine Tshirt

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

## Linked from
- [accept-international-payments](../accept-international-payments/page.md)
- [card-tokenisation](../card-tokenisation/page.md)
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
