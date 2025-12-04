import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/login_page.dart';

void main() {

  testWidgets('LoginPage has a top banner', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    // Verify that the top banner is present
    expect(find.text('BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE! OVER 20% OFF! COME GRAB YOURS WHILE STOCK LASTS!'), findsOneWidget);
  });

  group('Main header', () {
    testWidgets('LoginPage has Main header image', (WidgetTester tester) async {
      const headerImageKey = Key('header_image');

      await tester.pumpWidget(const MaterialApp(home: LoginPage()));

      expect(find.byKey(headerImageKey), findsOneWidget);
    });
    testWidgets('LoginPage has Main header home button', (WidgetTester tester) async {

      const  headerHomeKey = Key('header_home');
      
      // Render the real LoginPage so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerHomeKey, home: LoginPage()));

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerHomeKey), findsOneWidget);
      
    });

    testWidgets('LoginPage has Main header Shop button', (WidgetTester tester) async {

      const  headerShopKey = Key('header_shop');
      // Render the real LoginPage so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerShopKey, home: LoginPage()));
      
      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      
      expect(find.byKey(headerShopKey), findsOneWidget);

    });

     testWidgets('LoginPage has Main header Print Shack button', (WidgetTester tester) async {

      const  headerPrintShackKey = Key('header_print_shack');
     
      // Render the real LoginPage so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerPrintShackKey, home: LoginPage()));
     

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerPrintShackKey), findsOneWidget);
    });
     testWidgets('LoginPage has Main header Sale button', (WidgetTester tester) async {

     
      const  headerSaleKey = Key('header_sale');
    
      // Render the real LoginPage so header buttons are created.

      await tester.pumpWidget(const MaterialApp(key: headerSaleKey, home: LoginPage()));
      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerSaleKey), findsOneWidget);

    });
     testWidgets('LoginPage has Main header About button', (WidgetTester tester) async {

      const  headerAboutKey = Key('header_about');
      // Render the real LoginPage so header buttons are created.

      await tester.pumpWidget(const MaterialApp(key: headerAboutKey, home: LoginPage()));

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerAboutKey), findsOneWidget);
    });
    testWidgets('LoginPage has Main header Icon button', (WidgetTester tester) async {

      // Render inside a MaterialApp so Material widgets (Icons, AppBar, etc.) build correctly.
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));
      await tester.pumpAndSettle();
      
      // Check that header icons are present
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
      expect(find.byIcon(Icons.menu), findsOneWidget);
      expect(find.byIcon(Icons.person_outline), findsOneWidget);
    });
  });

    testWidgets('LoginPage has a 2 sign in buttons', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));

      // Verify that the sign in buttons are present
      expect(find.byKey(googleLoginKey), findsOneWidget);
      expect(find.byKey(emailLoginKey), findsOneWidget);
    });

    testWidgets('LoginPage has an area to enter email and password', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));

      // Verify that the email and password entry fields are present
      expect(find.byKey(emailEnterKey), findsOneWidget);
      expect(find.byKey(passwordLoginKey), findsOneWidget);
    });

    testWidgets('LoginPage has a footer message', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

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

  testWidgets('LoginPage has a footer message', (WidgetTester tester) async {
    const Key footerSearchKey = Key('footer_search');
    const Key footerTermsKey = Key('footer_terms');
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    // Verify that the footer message is present
    expect(find.text('Help and Information'), findsOneWidget);
    expect(find.byKey(footerSearchKey), findsOneWidget);
    expect(find.byKey(footerTermsKey), findsOneWidget);
  });
  testWidgets('LoginPage has a footer email entry and button', (WidgetTester tester) async {
    const Key footerEmailKey = Key('footer_email');
    const Key footerEmailEntryKey = Key('footer_email_entry'); 
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    // Verify that the footer email button is present
    expect(find.byKey(footerEmailKey), findsOneWidget);
    expect(find.byKey(footerEmailEntryKey), findsOneWidget);
  });

}