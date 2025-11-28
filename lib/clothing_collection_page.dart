import 'package:flutter/material.dart';

class ClothingCollectionPage extends StatelessWidget {
  const ClothingCollectionPage({super.key});
  
  VoidCallback? get placeholderCallbackForButtons => null;

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  void navigateToCollections(BuildContext context) {
    // Navigate to the collections/shop page; update route name as needed.
    Navigator.pushNamed(context, '/collections');
  }

  void navigateToAbout(BuildContext context) {
    // Navigate to the about page; update route name as needed.
    Navigator.pushNamed(context, '/about');
  }

  void navigateToClothingCollection(BuildContext context) {
    Navigator.pushNamed(context, '/collections/clothing');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              height: 100,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              navigateToHome(context);
                            },
                            child: Image.network(
                              'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
                              height: 18,
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
                              child: Row(
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
                                    onPressed: () =>  navigateToCollections(context),
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
                                    onPressed: placeholderCallbackForButtons,
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
                                    onPressed: placeholderCallbackForButtons,
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
                              ),
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
                                  onPressed: placeholderCallbackForButtons,
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
                                IconButton(
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
        )
        ]  
          ),
          ),
        );
      }
  }
  

