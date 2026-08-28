---
slug: qr-code
title: "UPI QR Code Generator for Payments | Razorpay QR Solutions"
route: /qr-code/
url: https://razorpay.com/qr-code/
captured: 2026-08-28T05:35:52.359Z
method: dom (facts) + labeled ai section (description)
---

# UPI QR Code Generator for Payments | Razorpay QR Solutions

## What this page is
<!-- ai:begin method=ai — written by the describe step, NOT ground truth -->
The QR code product page, and the only page in this library that ships a working tool: a free UPI QR generator that produces a downloadable code in the page, used as the lead magnet for the paid product behind it.

### Purpose
Two jobs at once. Give away a genuinely useful UPI QR generator to anyone who lands here, then convert the ones who want tracking and branding into Razorpay accounts ("Want to track your payments via QR Codes?").

### Location
Path `/qr-code/`, reached from the Payments nav and the homepage no-code grid.

### Layout
```
┌────────────────────────────────────────────────────────────┐
│ nav (site standard)                                        │
│ HERO · "Accept instant payments with Razorpay QR codes"    │
│   [Sign up →] [Generate Free QR Code]                      │
│   right: shopkeeper photo + branded QR card artwork        │
│ logo wall · Bombay Shirt Company, mokobara, Snitch,        │
│   Heads Up For Tails, nish, bummer, GIVA                   │
├────────────────────────────────────────────────────────────┤
│ FREE UPI QR CODE GENERATOR — a live three-column tool      │
│  ┌ steps ──────┐ ┌ form ─────────────┐ ┌ preview ───────┐  │
│  │ 1 Enter     │ │ Your Name (Payee) │ │ QR Code        │  │
│  │ 2 Get code  │ │ Your UPI ID (VPA) │ │ Preview        │  │
│  │ 3 Download  │ │ Amount · Remarks  │ │ [QR image]     │  │
│  │             │ │ [Generate QR]     │ │                │  │
│  └─────────────┘ └───────────────────┘ └────────────────┘  │
│   "Scan and Pay with 60+ UPI Apps" + app marks             │
├────────────────────────────────────────────────────────────┤
│ why-use grid (6) · use cases (5) · testimonials (2)        │
│ cross-sell · Blogs & Resources · footer                    │
└────────────────────────────────────────────────────────────┘
```

### Information displayed
| Element | Content | Location |
|---|---|---|
| Hero | "Generate unlimited QR codes in seconds — be it UPI QR, Bharat QR, or Merchant QR codes" | Top fold |
| Generator form | Your Name (Payee) with placeholder "e.g. Acme Fresh Produce", Your UPI ID (VPA) with placeholder "yourname@okabi", Amount (Optional) defaulting to 100, Remarks (Optional) "For Invoice #123" | Tool, centre column |
| Generator steps | 1 Enter Your Details · 2 Get Your QR Code · 3 Download and Share | Tool, left column |
| Generator preview | "QR Code Preview" panel with the hint "Fill in your details and click Generate QR" | Tool, right column |
| Supported apps | "Scan and Pay with 60+ UPI Apps" plus UPI, GPay, Paytm, PhonePe, Amazon Pay marks | Under the tool |
| Why use | Generate unlimited QR codes · Accept payments, your way · Payment methods beyond UPI · No hardware, no hassle · Custom-branded QR codes · Real-time payment tracking | Mid page |
| Use cases | In-Store · Seamless COD · Event & Service · Multi-Location · E-commerce & Social Selling | Mid page |
| Testimonials | Sarthak Vij and Nikhilendra Pratap Singh Deo | Lower page |

### Actions visible (not performed)
> Read-only capture. Listed from the captured UI, not clicked. **Nothing was typed into the generator and Generate QR was not pressed** — capture never drives a product.

- **Generate QR** — would produce a QR from the four form fields. Its output state is not captured.
- **Generate Free QR Code** — hero secondary action, scrolls to the tool.
- **Sign up** — hero primary.
- **"+ Others" style expanders** on the UPI app row.

### State captured
One state: the generator **empty and unsubmitted**, showing its placeholder text and the "Fill in your details" hint in the preview panel. The filled state, the generated-QR state, and any validation error are all reachable only by typing, so they need the guided pass.

### Transitions (from the captured link graph)
| From | Action | To |
|---|---|---|
| QR Code | No-code cross-sell | `payment-links-2`, `payment-pages`, `invoices`, `smart-collect`, `payment-buttons` |
| QR Code | Core payments | `payment-gateway`, `pos`, `subscriptions`, `magic`, `upi-autopay`, `accept-international-payments` |
| QR Code | Banking and commercial | `x` and the `x-*` set, `payroll`, `capital`, `pricing`, `demo`, `docs-api` |

### Notes
- **This is the one captured page with a real, in-page interactive tool.** Every other page in this library is marketing copy plus links. If a wireframe needs a working form as its baseline, this is the page that has one.
- **The empty-state of the generator is captured, which is the valuable half.** An empty form with live placeholder text is exactly the reference an empty-state design needs, and it was recorded without anyone submitting anything.
- **The two testimonials are shared with `payment-links-2`** and are not specific to QR.
<!-- ai:end -->

## Files
[screenshot](screenshot.png) · [editable HTML](page.html) · [verbatim copy](content.md) · [style tally](computed-tokens.json) · [meta](meta.json)

## On this page (headings, verbatim)
- Accept instant payments with Razorpay QR codes
- Free UPI QR Code Generator
- Enter Your Details
- Get Your QR Code
- Download and Share
- QR Code Preview
- Want to track your payments via QR Codes?
- Why use Razorpay QR code generator for payments?
- Generate unlimited QR codes
- Accept payments, your way
- Payment methods beyond UPI
- No hardware, no hassle
- Custom-branded QR codes
- Real-time payment tracking
- Tap, scan, pay anywhere with QR codes
- In-Store Payments
- Seamless COD Payments
- Event & Service Payments
- Multi-Location Businesses
- E-commerce & Social Selling
- Trusted by businesses like yours
- Razorpay has been a game changer for our business. We’ve seen a significant reduction in COD orders and returns, with our RTO rate dropping by 36.36%
- Sarthak Vij
- Card stack features like TokenHQ prevents the hassle of repeat customers re-entering card details. With 60% of our customers paying via cards and 40% opting for UPI, Razorpay handles every transaction effortlessly.
- Nikhilendra Pratap Singh Deo
- Supplement Seamlessly With Other Razorpay Products
- Payment Links
- Payment Pages
- Invoices
- Blogs & Resources
- Merchant QR Code: What It Is & How to Create One Easily
- Different Types of QR Codes: Features, and Use Cases
- What Is Bharat QR Code? Benefits, Setup & Charges Explained
- QR Code Payment – How It Works and Why It’s Popular
- Frequently asked questions
- How to Generate Bharat QR Code
- What is the difference between UPI QR Code and Bharat QR code?
- Can I use a single QR code for multiple payment methods?
- What is a Merchant QR Code, and how does it work with my bank account?
- Are there any charges for receiving payments in my bank account using QR codes?
- What is a static and dynamic QR code?
- What are the benefits of using a UPI QR Code for accepting payments?
- What is the advantage of Razorpay QR codes over others?
- Which government bodies regulate the usage of UPI QR and Bharat QR?
- Can Bharat QR be customized with a business logo and design?

## Links to (captured pages)
- [home](../home/page.md)
- [payment-gateway](../payment-gateway/page.md)
- [payment-links-2](../payment-links-2/page.md)
- [payment-pages](../payment-pages/page.md)
- [payment-buttons](../payment-buttons/page.md)
- [invoices](../invoices/page.md)
- [smart-collect](../smart-collect/page.md)
- [subscriptions](../subscriptions/page.md)
- [accept-international-payments](../accept-international-payments/page.md)
- [pos](../pos/page.md)
- [card-tokenisation](../card-tokenisation/page.md)
- [optimizer-intelligent-payments-routing](../optimizer-intelligent-payments-routing/page.md)
- [payments-app](../payments-app/page.md)
- [upi-autopay](../upi-autopay/page.md)
- [x](../x/page.md)
- [x-payout-links](../x-payout-links/page.md)
- [demo](../demo/page.md)
- [x-current-accounts](../x-current-accounts/page.md)
- [x-escrow-accounts](../x-escrow-accounts/page.md)
- [x-forex](../x-forex/page.md)
- [x-tax-payments](../x-tax-payments/page.md) _(via template)_
- [x-vendor-payments](../x-vendor-payments/page.md)
- [payroll](../payroll/page.md)
- [partners](../partners/page.md)
- [pricing](../pricing/page.md)
- [docs-api](../docs-api/page.md)
- [solutions-saas](../solutions-saas/page.md)
- [solutions-e-commerce](../solutions-e-commerce/page.md)
- [engage](../engage/page.md)
- [partners](../partners/page.md) _(via template)_
- [x-corporate-cards](../x-corporate-cards/page.md)

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
