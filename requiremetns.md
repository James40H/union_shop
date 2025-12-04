# Requirements — Union Shop (Flutter)

This document specifies functional and non‑functional requirements for the Union Shop Flutter app. It follows a feature‑centric format (description, user stories, acceptance criteria, subtasks) similar to the provided sample.

---

## 1. Global App Overview
The Union Shop app is a responsive storefront UI for a university union. It provides navigation, hero/collection CTAs, product grids (clothing, sale, general), product detail views and footer contact/subscribe UI. Routes are declared in `lib/main.dart`.

Target platforms: Web (Chrome), Android, iOS, Windows (desktop optional).

---

## 2. Feature: Home & Header Navigation

### 2.1 Feature Description and Purpose
Provides global navigation and brand header, including top sale banner, primary navigation (Home, Shop, The Print Shack, Sale, About) and responsive layout for mobile and desktop.

### 2.2 User Stories
- As a user, I want to tap navigation items to reach pages (Home, Collections, Print Shack, Sale, About) so I can browse the site.
- As a mobile user, I want a compact menu (hamburger) exposing the same routes so navigation is accessible on small screens.
- As a returning user, I want the logo to return me to Home.

### 2.3 Acceptance Criteria
- Header displays top banner text on all breakpoints.
- Desktop shows inline navigation; mobile shows a menu icon that opens equivalent options.
- Navigation items route to: `/`, `/product`, `/about-us`, `/collections`, `/collections/clothing`, `/collections/sale`, `/login`, `/print-shack`.
- Header contains test keys for automated tests (e.g., headerHomeKey).

### 2.4 Subtasks
- Implement responsive header layout in `HomeScreen`.
- Wire navigation buttons to named routes.
- Add accessibility labels and test keys.

---

## 3. Feature: Hero Banner / CTA

### 3.1 Feature Description and Purpose
Large visual hero with background image and CTA to clothing collection; dim overlay ensures text legibility.

### 3.2 User Stories
- As a user, I want a clear CTA so I can quickly browse featured collection.
- As a user, I want the hero to display correctly on desktop and mobile.

### 3.3 Acceptance Criteria
- Background image displays and scales (BoxFit.cover).
- Overlay darkens image (opacity >= 0.6) for contrast.
- CTA button navigates to `/collections/clothing`.
- Hero height and typography adapt to screen width.

### 3.4 Subtasks
- Ensure asset path is valid and declared in `pubspec.yaml`.
- Implement overlay color with readable contrast.
- Hook CTA to route.

---

## 4. Feature: Product Grid & ProductCard

### 4.1 Feature Description and Purpose
Display product tiles in sections (Clothing, Sale, Products) using a reusable ProductCard showing image, title, price and optional sale price.

### 4.2 User Stories
- As a shopper, I want to scan product tiles with image, name and price so I can choose items to view.
- As a shopper, I want sale items to display original price struck-through and a prominent sale price.
- As a shopper, I want tapping a product to open the product details page.

### 4.3 Acceptance Criteria
- Each ProductCard shows image, title and price.
- If salePrice is present:
  - Original price is struck-through.
  - Sale price is visible and visually emphasized (e.g., red).
- Clicking a ProductCard routes to `/product`.
- Grid is responsive: 2 columns on wider screens, 1 column on narrow screens.
- Images use errorBuilder to show placeholder when loading fails.

### 4.4 Subtasks
- Implement ProductCard widget parameters: title, price, imageUrl, salePrice.
- Add price display logic including TextStyle for sale vs original.
- Make grids responsive using MediaQuery or LayoutBuilder.

---

## 5. Feature: Product Detail Page

### 5.1 Feature Description and Purpose
Show full product information and actions (placeholder add-to-cart / buy).

### 5.2 User Stories
- As a user, I want to view product details after tapping a product tile.
- As a user, I want an Add to Cart (or Login) action (placeholder until backend is available).

### 5.3 Acceptance Criteria
- Route `/product` opens a ProductPage.
- ProductPage displays image, title, price and description (or placeholders).
- Add-to-cart button triggers a placeholder action and/or navigates to login if required.

### 5.4 Subtasks
- Create ProductPage layout and wire route.
- Add test IDs for automated tests.

---

## 6. Feature: Collections Pages (Clothing, Sale, All Collections)

### 6.1 Feature Description and Purpose
Pages that aggregate products by category and expose filters or sorting (basic view).

### 6.2 User Stories
- As a shopper, I want to view all items in a collection (clothing, sale).
- As a shopper, I want to navigate back to the home or other collections easily.

### 6.3 Acceptance Criteria
- Routes `/collections`, `/collections/clothing`, `/collections/sale` exist and render collection-specific grid.
- Each collection shows a header and product grid.

### 6.4 Subtasks
- Implement simple filtering or separate lists per collection.
- Add navigation controls.

---

## 7. Feature: Print Shack Page

### 7.1 Feature Description and Purpose
A static/info page describing union print services (The Print Shack) with contact details.

### 7.2 Acceptance Criteria
- Route `/print-shack` opens the page and displays content.

### 7.3 Subtasks
- Populate `print_shack_page.dart` with content and contact links.

---

## 8. Feature: Login / Authentication (Placeholder)

### 8.1 Feature Description and Purpose
Provide a login page and route `/login`. Authentication flow is optional; page is a placeholder for integration.

### 8.2 User Stories
- As a user, I want to access login so I can sign in when checkout or protected actions are added.

### 8.3 Acceptance Criteria
- `/login` route exists and shows a form (email/password) or placeholder.
- Navigation to login is possible from header or other actions.

### 8.4 Subtasks
- Implement `login_page.dart` placeholder and form validation stubs.

---

## 9. Feature: Footer — Contact, Subscribe & Links

### 9.1 Feature Description and Purpose
Footer contains contact info, links (Search, Terms), and an email subscribe control.

### 9.2 User Stories
- As a user, I want to subscribe with email input and get feedback that my action was accepted (placeholder).
- As a user, I want quick access to Search and Terms links.

### 9.3 Acceptance Criteria
- Footer includes email TextField and Subscribe button.
- Footer includes links/buttons for Search and Terms with test keys.
- Subscribe action shows feedback (Snackbar) and validates email format (basic).

### 9.4 Subtasks
- Implement email input with validation and feedback.
- Add footer test keys and accessibility attributes.

---

## 10. Non‑functional Requirements

### 10.1 Performance & Responsiveness
- UI must remain responsive at common breakpoints (mobile, tablet, desktop).
- Image assets should be sized appropriately for hero and cards to avoid jank.

### 10.2 Accessibility
- Provide semantic labels for interactive widgets.
- Ensure sufficient color contrast (overlay on hero, sale price contrast).

### 10.3 Testability
- Supply Widget test keys for critical UI elements (already present in `main.dart`).
- Unit and widget tests must run via `flutter test`.

### 10.4 Security & Privacy
- Do not store sensitive credentials in source.
- If network endpoints are added, use HTTPS and secure storage for tokens.

---

## 11. Test Scenarios / Acceptance Tests (examples)

- Navigation: tapping header links opens corresponding pages.
- Hero CTA routes to clothing collection.
- ProductCard: image loads or shows placeholder; tapping opens `/product`.
- Sale product: original price struck-through and sale price visible.
- Footer subscribe: invalid email shows error; valid email shows Snackbar confirmation.
- Responsiveness: grids switch columns at defined breakpoint (<600px -> 1 column, >=600px -> 2 columns).

---

## 12. Implementation Subtasks (project backlog)

- [ ] Verify and declare all image assets in `pubspec.yaml`.
- [ ] Complete header layout and add mobile menu.
- [ ] Implement ProductCard price layout including sale styling.
- [ ] Implement ProductPage with placeholder data.
- [ ] Implement collection pages and route wiring.
- [ ] Implement footer email subscribe with validation and snackbar feedback.
- [ ] Add unit/widget tests covering navigation, ProductCard, footer subscribe.
- [ ] Add CI job to run `flutter analyze` and `flutter test`.
- [ ] Add README screenshots and update license.

---

## 13. Dependencies & Environment

- Flutter (stable); Dart (bundled).
- Ensure Android SDK / Xcode / Chrome as required.
- Add Android INTERNET permission if remote images are used.

---

End of requirements document.