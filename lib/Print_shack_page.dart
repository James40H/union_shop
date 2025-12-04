import 'package:flutter/material.dart';

class PrintShackPage extends StatelessWidget {
  const PrintShackPage({super.key});

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
                                                navigateToPrintShack(context);
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
