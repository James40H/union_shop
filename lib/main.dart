import 'package:flutter/material.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/about_page.dart';
import 'package:union_shop/collections_page.dart';
import 'package:union_shop/clothing_collection_page.dart';
import 'package:union_shop/sale_page.dart';
import 'package:union_shop/login_page.dart';
import 'package:union_shop/Print_shack_page.dart';

void main() {
  runApp(const UnionShopApp());
}

class UnionShopApp extends StatelessWidget {
  const UnionShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Union Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4d2963)),
      ),
      home: const HomeScreen(),
      // By default, the app starts at the '/' route, which is the HomeScreen
      initialRoute: '/',
      // When navigating to '/product', build and return the ProductPage
      // In your browser, try this link: http://localhost:49856/#/product
      routes: {
      '/product': (context) => const ProductPage(),
      '/about-us': (context) => const AboutPage(),
      '/collections': (context) => const CollectionsPage(),
      '/collections/clothing': (context) => const ClothingCollectionPage(),
      '/collections/sale': (context) => const SalePage(),
      '/login': (context) => const LoginPage(),
      '/print-shack': (context) => const PrintShackPage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  void navigateToProduct(BuildContext context) {
    Navigator.pushNamed(context, '/product');
  }

  void navigateToAbout(BuildContext context) {
    Navigator.pushNamed(context, '/about-us');
  }

  void navigateToCollections(BuildContext context) {
    Navigator.pushNamed(context, '/collections');
  }

  void navigateToClothingCollections(BuildContext context) {
    Navigator.pushNamed(context, '/collections/clothing');
  }

  void navigateToSale(BuildContext context) {
    Navigator.pushNamed(context, '/collections/sale');
  }

  void navigateToLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  void navigateToPrintShack(BuildContext context) {
    Navigator.pushNamed(context, '/print-shack');
  }

  void placeholderCallbackForButtons() {
    // This is the event handler for buttons that don't work yet
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            LayoutBuilder(builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 600;
              final headerHeight = isMobile ? 140.0 : 100.0;
              return Container(
                height: headerHeight,
                color: Colors.white,
                child: Column(
                  children: [
                    // Top banner
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      color: const Color(0xFF4d2963),
                      child: const Text(
                        'BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE! OVER 20% OFF! COME GRAB YOURS WHILE STOCK LASTS!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    // Main header
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                navigateToHome(context);
                              },
                              child: Image.network(
                                'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
                                height: isMobile ? 30 : 30, // slightly larger logo on mobile
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: Colors.grey[300],
                                    width: 18,
                                    height: 18,
                                    child: const Center(
                                      child: Icon(Icons.image_not_supported,
                                          color: Colors.grey),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const SizedBox(width: 12),
                            // Centered header buttons
                            Expanded(
                              child: Center(
                                child: LayoutBuilder(builder: (context, constraints) {
                                  final isMobileInner = constraints.maxWidth < 600;
                                  if (isMobileInner) {
                                    // On mobile we move the menu into the right-hand menu icon,
                                    // so render nothing here to keep the header compact.
                                    return const SizedBox.shrink();
                                  } else {
                                    return Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextButton(
                                          onPressed: () => navigateToHome(context),
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            minimumSize: const Size(0, 36),
                                          ),
                                          child: const Text(
                                            'Home',
                                            style: TextStyle(letterSpacing: 1, fontSize: 14),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () => navigateToCollections(context),
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            minimumSize: const Size(0, 36),
                                          ),
                                          child: const Text(
                                            'SHOP',
                                            style: TextStyle(letterSpacing: 1, fontSize: 14),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () => navigateToPrintShack(context),
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            minimumSize: const Size(0, 36),
                                          ),
                                          child: const Text(
                                            'The Print Shack',
                                            style: TextStyle(letterSpacing: 1, fontSize: 14),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () => navigateToSale(context),
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            minimumSize: const Size(0, 36),
                                          ),
                                          child: const Text(
                                            'SALE!',
                                            style: TextStyle(letterSpacing: 1, fontSize: 14),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () => navigateToAbout(context),
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            minimumSize: const Size(0, 36),
                                          ),
                                          child: const Text(
                                            'About',
                                            style: TextStyle(letterSpacing: 1, fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                }),
                              ),
                            ),
                            ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 600),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.search,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    constraints: const BoxConstraints(
                                      minWidth: 32,
                                      minHeight: 32,
                                    ),
                                    onPressed: placeholderCallbackForButtons,
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.person_outline,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    constraints: const BoxConstraints(
                                      minWidth: 32,
                                      minHeight: 32,
                                    ),
                                    onPressed: () => navigateToLogin(context),
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.shopping_bag_outlined,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    constraints: const BoxConstraints(
                                      minWidth: 32,
                                      minHeight: 32,
                                    ),
                                    onPressed: placeholderCallbackForButtons,
                                  ),
                                  // On narrow screens show the popup menu from the menu icon.
                                  // On wider screens keep a plain icon button (or use it later).
                                  isMobile
                                      ? PopupMenuButton<String>(
                                          icon: const Icon(
                                            Icons.menu,
                                            size: 18,
                                            color: Colors.grey,
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          onSelected: (value) {
                                            switch (value) {
                                              case 'home':
                                                navigateToHome(context);
                                                break;
                                              case 'shop':
                                                navigateToCollections(context);
                                                break;
                                              case 'print_shack':
                                                placeholderCallbackForButtons();
                                                break;
                                              case 'sale':
                                                navigateToSale(context);
                                                break;
                                              case 'about':
                                                navigateToAbout(context);
                                                break;
                                            }
                                          },
                                          itemBuilder: (ctx) => const [
                                            PopupMenuItem(value: 'home', child: Text('Home')),
                                            PopupMenuItem(value: 'shop', child: Text('SHOP')),
                                            PopupMenuItem(value: 'print_shack', child: Text('The Print Shack')),
                                            PopupMenuItem(value: 'sale', child: Text('SALE!')),
                                            PopupMenuItem(value: 'about', child: Text('About')),
                                          ],
                                        )
                                      : IconButton(
                                          icon: const Icon(
                                            Icons.menu,
                                            size: 18,
                                            color: Colors.grey,
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          constraints: const BoxConstraints(
                                            minWidth: 32,
                                            minHeight: 32,
                                          ),
                                          onPressed: placeholderCallbackForButtons,
                                        ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),

            // Hero Section
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Stack(
                children: [
                  // Background image
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://shop.upsu.net/cdn/shop/products/BlackSweatshirtFinal_1024x1024@2x.png?v=1741965433',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.7),
                        ),
                      ),
                    ),
                  ),
                  // Content overlay
                  Positioned(
                    left: 24,
                    right: 24,
                    top: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Clothing collection',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Discover our latest clothing collection.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: ()=> navigateToClothingCollections(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4d2963),
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text(
                            'BROWSE PRODUCTS',
                            style: TextStyle(fontSize: 14, letterSpacing: 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Products Section
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    const Text(
                      'Clothing Section',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 48),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 2 : 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 35,
                      children: const [
                        ProductCard(
                          title: 'Jumper Purple',
                          price: '£15.00',
                          salePrice: null,
                          imageUrl:
                              'https://shop.upsu.net/cdn/shop/files/PurpleHoodieFinal.jpg?v=1742201957',
                        ),
                        ProductCard(
                          title: 'Jumper White',
                          price: '£20.00',
                          salePrice: null,
                          imageUrl:
                              'https://shop.upsu.net/cdn/shop/files/Ivory_Hoodie_1024x1024@2x.png?v=1745583522',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    const Text(
                      'Sale Section',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 48),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 2 : 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 35,
                      children: const [
                        ProductCard(
                          title: 'Notepad & pen set',
                          price: '£15.00',
                          salePrice: '£10.00',
                          imageUrl:
                              'https://makingmeadows.co.uk/cdn/shop/products/Lined-Notepad-With-Tear-Off-Pages.jpg?v=1761749009',
                        ),
                        ProductCard(
                          title: 'Single Black Pen',
                          price: '£5.00',
                          salePrice: '£2.50',
                          imageUrl:
                              'https://www.eduzone.co.uk/cdn/shop/files/35769.jpg?v=1763042238',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    const Text(
                      'PRODUCTS SECTION',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 48),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 2 : 1,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 48,
                      children: const [
                        ProductCard(
                          title: 'Portsmouth City Postcard',
                          price: '£10.00',
                          salePrice: null,
                          imageUrl:
                              'https://shop.upsu.net/cdn/shop/files/PortsmouthCityPostcard2_1024x1024@2x.jpg?v=1752232561',
                        ),
                        ProductCard(
                          title: 'Portsmouth City Magnet',
                          price: '£15.00',
                          salePrice: null,
                          imageUrl:
                              'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
                        ),
                        ProductCard(
                          title: 'Portsmouth City Bookmark',
                          price: '£20.00',
                          salePrice: null,
                          imageUrl:
                              'https://shop.upsu.net/cdn/shop/files/PortsmouthCityBookmark1_1024x1024@2x.jpg?v=1752230004',
                        ),
                        ProductCard(
                          title: 'Portsmouth City Notebook',
                          price: '£25.00',
                          salePrice: null,
                          imageUrl:
                              'https://shop.upsu.net/cdn/shop/files/PortsmouthCityNotebook_1024x1024@2x.jpg?v=1757419215',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Footer
            Container(
              width: double.infinity,
              color: Colors.grey[50],
              padding: const EdgeInsets.all(24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Column 1: Title / short description
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [ 
                        Text(
                          'Opening Hours',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '❄️ Winter Break Closure Dates ❄️',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,)
                        ),
                        Text(
                          'Closing 4pm 19/12/2025',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,)
                        ),
                        Text(
                          'Reopening 10am 05/01/2026',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,)
                        ),
                        Text(
                          'Last post date: 12pm on 18/12/2025',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,)
                        ),
                        Text(
                          '------------------------',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,)
                        ),
                        Text(
                          '(Term Time)',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,)
                        ),
                        Text(
                          'Monday - Friday 10am - 4pm',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,)
                        ),
                        Text(
                          '(Outside of Term Time / Consolidation Weeks)',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,)
                        ),
                        Text(
                          'Monday - Friday 10am - 3pm',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,)
                        ),
                        Text(
                          'Purchase online 24/7',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,)
                        ),
                      ],
                    ),
                  ),

                  // Column 2: Links
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Help and Information',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextButton(
                          onPressed: placeholderCallbackForButtons,
                          child: const Text('Search'),
                        ),
                        TextButton(
                          onPressed: placeholderCallbackForButtons,
                          child: const Text('Terms & Conditions of Sale Policy'),
                        ),
                      ],
                    ),
                  ),

                  // Column 3: Email + Subscribe
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Subscribe',
                          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            // email input
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: 'Enter your email',
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                ),
                                onSubmitted: (_) {
                                  placeholderCallbackForButtons();
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                          // subscribe button
                            ElevatedButton(
                              onPressed: placeholderCallbackForButtons,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF4d2963),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                              ),
                              child: const Text('Subscribe'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final String? salePrice;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.salePrice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(Icons.image_not_supported, color: Colors.grey),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  // Show original (struck-through) and optional sale price beside it.
                  // The original price is wrapped in Expanded so it can use available width.
                  if (salePrice != null)
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            price,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          salePrice!,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  else
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                ],
              ),
          )],
          )
    );
  }
}

