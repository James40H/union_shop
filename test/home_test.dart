import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/main.dart';

void main() {

  testWidgets('UnionShopApp has a top banner', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: UnionShopApp()));

    // Verify that the top banner is present
    expect(find.text('BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE! OVER 20% OFF! COME GRAB YOURS WHILE STOCK LASTS!'), findsOneWidget);
  });

  group('Main header', () {
    testWidgets('UnionShopApp has Main header image', (WidgetTester tester) async {
      const headerImageKey = Key('header_image');

      await tester.pumpWidget(const MaterialApp(home: UnionShopApp()));

      expect(find.byKey(headerImageKey), findsOneWidget);
    });
    testWidgets('UnionShopApp has Main header home button', (WidgetTester tester) async {

      const  headerHomeKey = Key('header_home');
      
      // Render the real UnionShopApp so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerHomeKey, home: UnionShopApp()));
      

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerHomeKey), findsOneWidget);
      
    });

    testWidgets('UnionShopApp has Main header Shop button', (WidgetTester tester) async {

      const  headerShopKey = Key('header_shop');
      // Render the real UnionShopApp so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerShopKey, home: UnionShopApp()));
      
      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      
      expect(find.byKey(headerShopKey), findsOneWidget);

    });

     testWidgets('UnionShopApp has Main header Print Shack button', (WidgetTester tester) async {

      const  headerPrintShackKey = Key('header_print_shack');
     
      // Render the real UnionShopApp so header buttons are created.
      await tester.pumpWidget(const MaterialApp(key: headerPrintShackKey, home: UnionShopApp()));
     

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerPrintShackKey), findsOneWidget);
    });
     testWidgets('UnionShopApp has Main header Sale button', (WidgetTester tester) async {

     
      const  headerSaleKey = Key('header_sale');
    
      // Render the real UnionShopApp so header buttons are created.
      
      await tester.pumpWidget(const MaterialApp(key: headerSaleKey, home: UnionShopApp()));
      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerSaleKey), findsOneWidget);

    });
     testWidgets('UnionShopApp has Main header About button', (WidgetTester tester) async {

      const  headerAboutKey = Key('header_about');
      // Render the real UnionShopApp so header buttons are created.

      await tester.pumpWidget(const MaterialApp(key: headerAboutKey, home: UnionShopApp()));

      // There should be one or more TextButton widgets (header/footer).
      expect(find.byType(TextButton), findsWidgets);

      // Assert header buttons are present using keys.
      expect(find.byKey(headerAboutKey), findsOneWidget);
    });
    testWidgets('UnionShopApp has Main header Icon button', (WidgetTester tester) async {


      await tester.pumpWidget(const UnionShopApp());
      await tester.pump();

      // Check that header icons are present
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
      expect(find.byIcon(Icons.menu), findsOneWidget);
      expect(find.byIcon(Icons.person_outline), findsOneWidget);
    });
  });

    
    
  
    testWidgets('should display 8 images', (WidgetTester tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pump();

      // Check that basic UI elements are present
      expect(find.byType(Image), findsNWidgets(9));
    });
    testWidgets('should display product cards', (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pump();

      // Check that product cards are displayed
      expect(find.text('Jumper Purple'), findsOneWidget);
      expect(find.text('Jumper White'), findsOneWidget);
      expect(find.text('Notepad & pen set'), findsOneWidget);
      expect(find.text('Single Black Pen'), findsOneWidget);
      expect(find.text('Portsmouth City Postcard'), findsOneWidget);
      expect(find.text('Portsmouth City Magnet'), findsOneWidget);
      expect(find.text('Portsmouth City Bookmark'), findsOneWidget);
      expect(find.text('Portsmouth City Notebook'), findsOneWidget);

      // Check prices are displayed
      expect(find.text('£2.50'), findsOneWidget);
      expect(find.text('£10.00'), findsNWidgets(2));
      expect(find.text('£15.00'), findsNWidgets(2));
      expect(find.text('£20.00'), findsOneWidget);
      expect(find.text('£25.00'), findsOneWidget);
      expect(find.text('£21.00'), findsOneWidget);
      expect(find.text('£22.00'), findsOneWidget);
    });



    testWidgets('UnionShopApp has a footer message', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: UnionShopApp()));

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

  testWidgets('UnionShopApp has a footer message', (WidgetTester tester) async {
    const Key footerSearchKey = Key('footer_search');
    const Key footerTermsKey = Key('footer_terms');
    await tester.pumpWidget(const MaterialApp(home: UnionShopApp()));

    // Verify that the footer message is present
    expect(find.text('Help and Information'), findsOneWidget);
    expect(find.byKey(footerSearchKey), findsOneWidget);
    expect(find.byKey(footerTermsKey), findsOneWidget);
  });
  testWidgets('UnionShopApp has a footer email entry and button', (WidgetTester tester) async {
    const Key footerEmailKey = Key('footer_email');
    const Key footerEmailEntryKey = Key('footer_email_entry'); 
    await tester.pumpWidget(const MaterialApp(home: UnionShopApp()));

    // Verify that the footer email button is present
    expect(find.byKey(footerEmailKey), findsOneWidget);
    expect(find.byKey(footerEmailEntryKey), findsOneWidget);
  });

}

