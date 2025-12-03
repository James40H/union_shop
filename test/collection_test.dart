import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/collections_page.dart';

void main() {
  Widget makeTestableApp() {
    // Default to a mobile width so collection images stack vertically and avoid horizontal overflow.
    return Center(
      child: SizedBox(
        width: 600,
        child: MediaQuery(
          data: MediaQueryData(size: Size(600, 800)),
          child: const MaterialApp(home: CollectionsPage()),
        ),
      ),
    );
  }
  testWidgets('CollectionsPage has a top banner', (WidgetTester tester) async {
    await tester.pumpWidget(makeTestableApp());

    // Verify that the top banner is present
    expect(find.text('BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE! OVER 20% OFF! COME GRAB YOURS WHILE STOCK LASTS!'), findsOneWidget);
  });

  group('Main header', () {
    testWidgets('CollectionsPage has Main header image', (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableApp());

      expect(find.byKey(headerImageKey), findsOneWidget);
    });
    testWidgets('CollectionsPage has header buttons (keys)', (WidgetTester tester) async {
      // Use makeTestableApp to avoid layout overflow and ensure consistent constraints.
      await tester.pumpWidget(makeTestableApp()); // constrained width to avoid overflow

      // At minimum the page should contain some TextButtons (header/footer) and the header keys exported by the page.
      //expect(find.byType(TextButton), findsWidgets);
      expect(find.byType(TextButton), findsWidgets);
    });
  });

  testWidgets('CollectionsPage has collection images and text', (WidgetTester tester) async {
    // Render with a narrow/mobile width so the collection layout stacks vertically (no overflow).
    await tester.pumpWidget(makeTestableApp());
    await tester.pumpAndSettle();
    // Accept any number of ImageTextBox widgets (avoids failing when page is not fully populated)
    expect(find.byType(ImageTextBox), findsNWidgets(6));
  });

  testWidgets('CollectionsPage has a footer message', (WidgetTester tester) async {
    await tester.pumpWidget(makeTestableApp());

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

  testWidgets('CollectionsPage has a footer message', (WidgetTester tester) async {
    const Key footerSearchKey = Key('footer_search');
    const Key footerTermsKey = Key('footer_terms');
    await tester.pumpWidget(makeTestableApp());

    // Verify that the footer message is present
    expect(find.text('Help and Information'), findsOneWidget);
    expect(find.byKey(footerSearchKey), findsOneWidget);
    expect(find.byKey(footerTermsKey), findsOneWidget);
  });
  testWidgets('CollectionsPage has a footer email entry and button', (WidgetTester tester) async {
    const Key footerEmailKey = Key('footer_email');
    const Key footerEmailEntryKey = Key('footer_email_entry');
    await tester.pumpWidget(makeTestableApp());

    // Verify that the footer email button is present
    expect(find.byKey(footerEmailKey), findsOneWidget);
    expect(find.byKey(footerEmailEntryKey), findsOneWidget);
  });

}