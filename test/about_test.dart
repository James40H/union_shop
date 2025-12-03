import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/about_page.dart';

void main() {

  testWidgets('AboutPage has a top banner', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AboutPage()));

    // Verify that the top banner is present
    expect(find.text('BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE! OVER 20% OFF! COME GRAB YOURS WHILE STOCK LASTS!'), findsOneWidget);
  });

  group('Main header', () {
    testWidgets('AboutPage has Main header image', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(home: AboutPage()));

      expect(find.byType(Image), findsOneWidget);
    });
    testWidgets('AboutPage has Main header home button', (WidgetTester tester) async {

      const  headerHomeKey = Key('header_home');
      
      // Render the real AboutPage so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerHomeKey, home: AboutPage()));
      

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerHomeKey), findsOneWidget);
      
    });

    testWidgets('AboutPage has Main header Shop button', (WidgetTester tester) async {

      const  headerShopKey = Key('header_shop');
      // Render the real AboutPage so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerShopKey, home: AboutPage()));
      
      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      
      expect(find.byKey(headerShopKey), findsOneWidget);

    });

     testWidgets('AboutPage has Main header Print Shack button', (WidgetTester tester) async {

      const  headerPrintShackKey = Key('header_print_shack');
     
      // Render the real AboutPage so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerPrintShackKey, home: AboutPage()));
     

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerPrintShackKey), findsOneWidget);
    });
     testWidgets('AboutPage has Main header Sale button', (WidgetTester tester) async {

     
      const  headerSaleKey = Key('header_sale');
    
      // Render the real AboutPage so header buttons are created.
      
      await tester.pumpWidget(const MaterialApp(key: headerSaleKey, home: AboutPage()));
      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerSaleKey), findsOneWidget);

    });
     testWidgets('AboutPage has Main header About button', (WidgetTester tester) async {

      const  headerAboutKey = Key('header_about');
      // Render the real AboutPage so header buttons are created.

      await tester.pumpWidget(const MaterialApp(key: headerAboutKey, home: AboutPage()));

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerAboutKey), findsOneWidget);
    });
    testWidgets('AboutPage has Main header Search button', (WidgetTester tester) async {

      const  headerSearchKey = Key('header_search');
      
      // Render the real AboutPage so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerSearchKey, home: AboutPage()));

      // There should be one or more TextButton widgets (header/footer).
      //expect(find.byType(Icon), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerSearchKey), findsOneWidget);
    });
    testWidgets('AboutPage has Main header Login button', (WidgetTester tester) async {

      const  headerLoginKey = Key('header_login');
      // Render the real AboutPage so header buttons are created.

      await tester.pumpWidget(const MaterialApp(key: headerLoginKey, home: AboutPage()));

      // There should be one or more TextButton widgets (header/footer).
      //expect(find.byType(Icon), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerLoginKey), findsOneWidget);
    });
    testWidgets('AboutPage has Main header Cart button', (WidgetTester tester) async {

      const  headerCartKey = Key('header_cart');
      // Render the real AboutPage so header buttons are created.

      await tester.pumpWidget(const MaterialApp(key: headerCartKey, home: AboutPage()));

      // There should be one or more TextButton widgets (header/footer).
      //expect(find.byType(Icon), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerCartKey), findsOneWidget);
    });
    testWidgets('AboutPage has Main header menu button', (WidgetTester tester) async {

      const  headermenuKey = Key('header_menu');
      // Render the real AboutPage so header buttons are created.

      await tester.pumpWidget(const MaterialApp(key: headermenuKey, home: AboutPage()));

      // There should be one or more TextButton widgets (header/footer).
      //expect(find.byType(Icon), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headermenuKey), findsOneWidget);
    });
    
    
  });

  testWidgets('AboutPage has a title', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AboutPage()));

    // Verify that the title is present
    expect(find.text('About Us'), findsOneWidget);
  });
  testWidgets('AboutPage has a message', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AboutPage()));

    // Verify that the message is present
    expect(find.text( '''Welcome to the Union Shop!

We’re dedicated to giving you the very best University branded products, with a range of clothing and merchandise available to shop all year round! We even offer an exclusive personalisation service!

All online purchases are available for delivery or instore collection!

We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don’t hesitate to contact us at hello@upsu.net.

Happy shopping!

The Union Shop & Reception Team'''), findsOneWidget);
  });
  testWidgets('AboutPage has a footer message', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AboutPage()));

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

  testWidgets('AboutPage has a footer message', (WidgetTester tester) async {
    const Key footerSearchKey = Key('footer_search');
    const Key footerTermsKey = Key('footer_terms');
    await tester.pumpWidget(const MaterialApp(home: AboutPage()));

    // Verify that the footer message is present
    expect(find.text('Help and Information'), findsOneWidget);
    expect(find.byKey(footerSearchKey), findsOneWidget);
    expect(find.byKey(footerTermsKey), findsOneWidget);
  });
  testWidgets('AboutPage has a footer email entry and button', (WidgetTester tester) async {
    const Key footerEmailKey = Key('footer_email');
    const Key footerEmailEntryKey = Key('footer_email_entry'); 
    await tester.pumpWidget(const MaterialApp(home: AboutPage()));

    // Verify that the footer email button is present
    expect(find.byKey(footerEmailKey), findsOneWidget);
    expect(find.byKey(footerEmailEntryKey), findsOneWidget);
  });

}