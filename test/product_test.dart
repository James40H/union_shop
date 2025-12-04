import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/product_page.dart';

void main() {

  testWidgets('ProductPage has a top banner', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ProductPage()));

    // Verify that the top banner is present
    expect(find.text('BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE! OVER 20% OFF! COME GRAB YOURS WHILE STOCK LASTS!'), findsOneWidget);
  });

  group('Main header', () {
    testWidgets('ProductPage has Main header image', (WidgetTester tester) async {
      const headerImageKey = Key('header_image');

      await tester.pumpWidget(const MaterialApp(home: ProductPage()));

      expect(find.byKey(headerImageKey), findsOneWidget);
    });
    testWidgets('ProductPage has Main header home button', (WidgetTester tester) async {

      const  headerHomeKey = Key('header_home');
      
      // Render the real ProductPage so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerHomeKey, home: ProductPage()));

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerHomeKey), findsOneWidget);
      
    });

    testWidgets('ProductPage has Main header Shop button', (WidgetTester tester) async {

      const  headerShopKey = Key('header_shop');
      // Render the real ProductPage so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerShopKey, home: ProductPage()));
      
      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      
      expect(find.byKey(headerShopKey), findsOneWidget);

    });

     testWidgets('ProductPage has Main header Print Shack button', (WidgetTester tester) async {

      const  headerPrintShackKey = Key('header_print_shack');
     
      // Render the real ProductPage so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerPrintShackKey, home: ProductPage()));
     

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerPrintShackKey), findsOneWidget);
    });
     testWidgets('ProductPage has Main header Sale button', (WidgetTester tester) async {

     
      const  headerSaleKey = Key('header_sale');
    
      // Render the real ProductPage so header buttons are created.

      await tester.pumpWidget(const MaterialApp(key: headerSaleKey, home: ProductPage()));
      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerSaleKey), findsOneWidget);

    });
     testWidgets('ProductPage has Main header About button', (WidgetTester tester) async {

      const  headerAboutKey = Key('header_about');
      // Render the real ProductPage so header buttons are created.

      await tester.pumpWidget(const MaterialApp(key: headerAboutKey, home: ProductPage()));

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerAboutKey), findsOneWidget);
    });
    testWidgets('ProductPage has Main header Icon button', (WidgetTester tester) async {

      // Render inside a MaterialApp so Material widgets (Icons, AppBar, etc.) build correctly.
      await tester.pumpWidget(const MaterialApp(home: ProductPage()));
      await tester.pumpAndSettle();
      
      // Check that header icons are present
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
      expect(find.byIcon(Icons.menu), findsOneWidget);
      expect(find.byIcon(Icons.person_outline), findsOneWidget);
    });
  });

  testWidgets('ProductPage has a Main Image and title and price', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ProductPage()));

    // Verify that the main image is present
    expect(find.byKey(mainImageKey), findsOneWidget);
    expect(find.text('Portsmouth City Magnet'), findsOneWidget);
    expect(find.text('£15.00'), findsOneWidget);
  });

  testWidgets('ProductPage has a size dropdown and quantity box', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ProductPage()));

    // Verify that the size dropdown is present
    expect(find.byType(DropdownButton<String>), findsOneWidget);

    // Verify that the quantity box is present
    expect(find.byKey(quantityBoxKey), findsOneWidget);
  });

  testWidgets('ProductPage has a add to cart button', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ProductPage()));

    // Verify that the add to cart button is present
    expect(find.byKey(addToCartButtonKey), findsOneWidget);
  });
  testWidgets('ProductPage has a footer message', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ProductPage()));

    // Verify that the footer message is present
    expect(find.text('Opening Hours'), findsOneWidget);
    expect(find.text('❄️ Winter Break Closure Dates ❄️'), findsOneWidget);
    expect(find.text('Closing 4pm 19/12/2025'), findsOneWidget);
    expect(find.text('Reopening 10am 05/01/2026'), findsOneWidget);
    expect(find.text('Last post date: 12pm on 18/12/2025'), findsOneWidget);
    expect(find.text('------------------------'), findsOneWidget);
    expect(find.text('(Term Time)'), findsOneWidget);
    expect(find.text('Monday - Friday 10am - 4pm'), findsOneWidget);
    expect(find.text('(Outside of Term Time / Consolidation Weeks)'), findsOneWidget);
    expect(find.text('Monday - Friday 10am - 3pm'), findsOneWidget);
    expect(find.text('Purchase online 24/7'), findsOneWidget);
  });

  testWidgets('ProductPage has a footer message', (WidgetTester tester) async {
    const Key footerSearchKey = Key('footer_search');
    const Key footerTermsKey = Key('footer_terms');
    await tester.pumpWidget(const MaterialApp(home: ProductPage()));

    // Verify that the footer message is present
    expect(find.text('Help and Information'), findsOneWidget);
    expect(find.byKey(footerSearchKey), findsOneWidget);
    expect(find.byKey(footerTermsKey), findsOneWidget);
  });
  testWidgets('ProductPage has a footer email entry and button', (WidgetTester tester) async {
    const Key footerEmailKey = Key('footer_email');
    const Key footerEmailEntryKey = Key('footer_email_entry'); 
    await tester.pumpWidget(const MaterialApp(home: ProductPage()));

    // Verify that the footer email button is present
    expect(find.byKey(footerEmailKey), findsOneWidget);
    expect(find.byKey(footerEmailEntryKey), findsOneWidget);
  });

}