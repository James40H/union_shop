# Union Shop (Flutter)

A lightweight Flutter storefront UI for a university union shop. The app demonstrates a responsive home screen with header navigation, hero banner, product grids (including sale and clothing sections), and a footer with contact / subscribe UI. Routes and pages are wired in `lib/main.dart` and related page widgets.

Key features
- Responsive header with navigation (desktop and mobile behaviors)
- Hero banner with CTA to the clothing collection
- Product grid sections (Clothing, Sale, General products)
- Reusable ProductCard widget with sale price handling
- Footer with opening hours, helpful links and an email subscribe input
- Named routes for product, collections and auxiliary pages
- Test-friendly keys added for key UI elements (useful for widget tests)

---

## Project structure (important files)
- lib/
  - main.dart — app entry, routes, home screen and ProductCard
  - about_page.dart
  - collections_page.dart
  - clothing_collection_page.dart
  - sale_page.dart
  - product_page.dart
  - print_shack_page.dart
  - login_page.dart
- assets/ (expected; hero/background images referenced from `assets/images/` in `main.dart`)
- pubspec.yaml — (ensure assets listed here)

---

## Prerequisites
- Operating System: Windows (development machine)
- Flutter SDK installed and configured (stable channel recommended)
- Dart SDK (bundled with Flutter)
- An editor (VS Code, Android Studio) with Flutter extensions
- For web testing: Chrome installed
- For device testing: Android/iOS device or emulator configured

Verify Flutter setup:
PowerShell / CMD:
````bash
flutter --version
flutter doctor

## Clone and setup
1. Clone the repository PowerShell / CMD:
git clone https://github.com/James40H/union_shop.git
cd union_shop

2.Get dependencies
flutter pub get

3.Ensure assets are declared in pubspec.yaml
flutter:
  assets:
    - assets/images/

## Run the app
For web (Chrome):
- flutter run -d chrome

For Windows desktop (if enabled):
- flutter run -d windows

For Android: Start an emulator or connect a device, then:
- flutter run -d <device-id>

## Routes / Navigation (from lib/main.dart)
/ — HomeScreen (default)
/product — ProductPage
/about-us — AboutPage
/collections — CollectionsPage
/collections/clothing — ClothingCollectionPage
/collections/sale — SalePage
/login — LoginPage
/print-shack — PrintShackPage

## How to use (user flows)
Header
- Click logo to return home.
- Desktop: header shows Home, SHOP, The Print Shack, SALE!, About.
- Mobile: menu icon exposes the same routes via a popup menu.
Hero
- CTA "BROWSE PRODUCTS" routes to the clothing collection.
Product cards
- Tap a product card to navigate to the product page (/product).
- Sale items display a struck-through original price and a red sale price.
Footer
- Email input and Subscribe button are present (placeholders; hook into backend as required).
- Helpful links (Search, Terms) are present as buttons (placeholders).


## Testing
Run widget/unit tests:
- flutter test
Note: The project includes test keys for key widgets in main.dart which are useful in integration or widget tests:

headerImageKey, headerHomeKey, headerShopKey, headerPrintShackKey, headerSaleKey, headerAboutKey
footerSearchKey, footerTermsKey, footerEmailKey, footerEmailEntryKey
Add tests under test/ and reference these keys to locate UI elements reliably.

## Configuration & Extending
Assets: Make sure images referenced in main.dart are present and declared in pubspec.yaml.
Theme color: seed color is set in main.dart (0xFF4d2963) — change as needed.
Replace placeholder callbacks (subscribe, search, cart) with back-end or state-management logic.
Add state management (Provider / Bloc / Riverpod) if you need persistent cart, auth, or networked product data.

