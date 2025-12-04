import 'package:flutter/material.dart';

const Key headerImageKey = Key('header_image');
const Key headerHomeKey = Key('header_home');
const Key headerShopKey = Key('header_shop');
const Key headerPrintShackKey = Key('header_print_shack');
const Key headerSaleKey = Key('header_sale');
const Key headerAboutKey = Key('header_about');
const Key footerSearchKey = Key('footer_search');
const Key footerTermsKey = Key('footer_terms');
const Key footerEmailKey = Key('footer_email');
const Key footerEmailEntryKey = Key('footer_email_entry'); 

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

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

  void navigateToClothingCollection(BuildContext context) {
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
                              key: headerImageKey,
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
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            minimumSize: const Size(0, 36),
                                          ),
                                          key: headerHomeKey,
                                          onPressed: () => navigateToHome(context),
                                          child: const Text('Home'),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            minimumSize: const Size(0, 36),
                                          ),
                                          key: headerShopKey,
                                          onPressed: () => navigateToCollections(context),
                                          child: const Text('SHOP'),
                                        ),
                                        TextButton(style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            minimumSize: const Size(0, 36),
                                          ),
                                          key: headerPrintShackKey,
                                          onPressed: () => navigateToPrintShack(context),
                                          child: const Text('The Print Shack'),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            minimumSize: const Size(0, 36),
                                          ),
                                          key: headerSaleKey,
                                          onPressed: () => navigateToSale(context),
                                          child: const Text('SALE!'),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            padding: const EdgeInsets.symmetric(horizontal: 12),
                                            minimumSize: const Size(0, 36),
                                          ),
                                          key: headerAboutKey,
                                          onPressed: () => navigateToAbout(context),
                                          child: const Text('About'),
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

            const SizedBox(height: 24),

            // Responsive collections: stacked vertically on mobile, in a row on wider screens.
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: LayoutBuilder(builder: (context, constraints) {
                final isMobile = constraints.maxWidth < 600;
                if (isMobile) {
                  // Column layout for mobile: one above each other, full width
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageTextBox(
                        imageUrl: 'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?q=80&w=300&auto=format&fit=crop',
                        height: 220,
                        width: double.infinity,
                        title: 'Winter Collection',
                        onTap: placeholderCallbackForButtons,
                      ),
                      const SizedBox(height: 16),
                      ImageTextBox(
                        imageUrl: 'https://shop.upsu.net/cdn/shop/products/BlackSweatshirtFinal_1024x1024@2x.png?v=1741965433',
                        height: 220,
                        width: double.infinity,
                        title: 'Clothing',
                        onTap: () => navigateToClothingCollection(context),
                      ),
                      const SizedBox(height: 16),
                      ImageTextBox(
                        imageUrl: 'https://phabcart.imgix.net/cdn/scdn/images/uploads/89042D1_WEB_600.jpg?auto=compress&lossless=1&w=385',
                        height: 220,
                        width: double.infinity,
                        title: 'Sale',
                        onTap: () => navigateToSale(context),
                      ),
                    ],
                  );
                } else {
                  // Row layout for wider screens (keep original look)
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageTextBox(
                        imageUrl: 'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?q=80&w=300&auto=format&fit=crop',
                        height: 300,
                        width: 300,
                        title: 'Winter Collection',
                        onTap: placeholderCallbackForButtons,
                      ),
                      const SizedBox(width: 16),
                      ImageTextBox(
                        imageUrl: 'https://shop.upsu.net/cdn/shop/products/BlackSweatshirtFinal_1024x1024@2x.png?v=1741965433',
                        height: 300,
                        width: 300,
                        title: 'Clothing',
                        onTap: () => navigateToClothingCollection(context),
                      ),
                      const SizedBox(width: 16),
                      ImageTextBox(
                        imageUrl: 'https://phabcart.imgix.net/cdn/scdn/images/uploads/89042D1_WEB_600.jpg?auto=compress&lossless=1&w=385',
                        height: 300,
                        width: 300,
                        title: 'Sale',
                        onTap: () => navigateToSale(context),
                      ),
                    ],
                  );
                }
              }),
            ),

            // extra gap between the two rows of collections
            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: LayoutBuilder(builder: (context, constraints) {
                final isMobile = constraints.maxWidth < 600;
                if (isMobile) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ImageTextBox(
                        imageUrl: 'assets/images/blue_t-shirt.jpg',
                        height: 220,
                        width: double.infinity,
                        title: 'T-Shirts',
                        onTap: placeholderCallbackForButtons,
                      ),
                      const SizedBox(height: 16),
                      ImageTextBox(
                        imageUrl: 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/limited-edition-logo-design-template-4dddb09784da781fc6b894711fcf1f11_screen.jpg?ts=1681027930',
                        height: 220,
                        width: double.infinity,
                        title: 'Limited Editions',
                        onTap: placeholderCallbackForButtons,
                      ),
                      const SizedBox(height: 16),
                      ImageTextBox(
                        imageUrl: 'https://www.worldofwallpaper.com/media/Black-Friday-WOW.jpg',
                        height: 220,
                        width: double.infinity,
                        title: 'Black Friday Deals',
                        onTap: placeholderCallbackForButtons,
                      ),
                    ],
                  );
                } else {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageTextBox(
                        imageUrl: 'assets/images/blue_t-shirt.jpg',
                        height: 300,
                        width: 300,
                        title: 'T-Shirts',
                        onTap: placeholderCallbackForButtons,
                      ),
                      const SizedBox(width: 16),
                      ImageTextBox(
                        imageUrl: 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/limited-edition-logo-design-template-4dddb09784da781fc6b894711fcf1f11_screen.jpg?ts=1681027930',
                        height: 300,
                        width: 300,
                        title: 'Limited Editions',
                        onTap: placeholderCallbackForButtons,
                      ),
                      const SizedBox(width: 16),
                      ImageTextBox(
                        imageUrl: 'https://www.worldofwallpaper.com/media/Black-Friday-WOW.jpg',
                        height: 300,
                        width: 300,
                        title: 'Black Friday Deals',
                        onTap: placeholderCallbackForButtons,
                      ),
                    ],
                  );
                }
              }),
            ),
            
           // Footer / info
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
                          key: Key('footer_search'),
                          onPressed: placeholderCallbackForButtons,
                          child: const Text('Search'),
                        ),
                        TextButton(
                          key: Key('footer_terms'),
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
                                key: footerEmailEntryKey,
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
                              key: footerEmailKey,
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


class ImageTextBox extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double? width;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  const ImageTextBox({
    super.key,
    required this.imageUrl,
    this.height = 180,
    this.width,
    required this.title,
    this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          height: height,
          width: width ?? double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background image (supports network or local asset). If the image is the blue T‑shirt asset,
              // overlay a semi-transparent grey container to "grey out" the background.
              Builder(builder: (context) {
                final isBlueTshirt = imageUrl.toLowerCase().contains('blue_t-shirt');

                Widget loadedImage;
                if (imageUrl.toLowerCase().startsWith('http')) {
                  loadedImage = Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      // Log the error so you can inspect it in the debug console
                      debugPrint('Image.network failed: $imageUrl -> $error');
                      debugPrintStack(stackTrace: stackTrace);
                      return Container(
                        color: Colors.grey[300],
                        child: const Center(
                          child: Icon(Icons.image_not_supported, color: Colors.grey),
                        ),
                      );
                    },
                  );
                } else {
                  loadedImage = Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      debugPrint('Image.asset failed: $imageUrl -> $error');
                      debugPrintStack(stackTrace: stackTrace);
                      return Container(
                        color: Colors.grey[300],
                        child: const Center(
                          child: Icon(Icons.image_not_supported, color: Colors.grey),
                        ),
                      );
                    },
                  );
                }

                if (isBlueTshirt) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      loadedImage,
                      Container(color: Colors.grey.withOpacity(0.6)),
                    ],
                  );
                }

                return loadedImage;
              }),

              // Centered text content
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          shadows: [Shadow(blurRadius: 6, color: Colors.black45)],
                        ),
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          subtitle!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}