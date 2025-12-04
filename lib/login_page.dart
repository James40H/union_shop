import 'package:flutter/material.dart';

const Key headerImageKey = Key('header_image');
const Key headerHomeKey = Key('header_home');
const Key headerShopKey = Key('header_shop');
const Key headerPrintShackKey = Key('header_print_shack');
const Key headerSaleKey = Key('header_sale');
const Key headerAboutKey = Key('header_about');
const Key emailLoginKey = Key('email_login');
const Key googleLoginKey = Key('google_login');
const Key emailEnterKey = Key('email_enter');
const Key passwordLoginKey = Key('password_login');
const Key footerSearchKey = Key('footer_search');
const Key footerTermsKey = Key('footer_terms');
const Key footerEmailKey = Key('footer_email');
const Key footerEmailEntryKey = Key('footer_email_entry'); 

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscure = true;
  bool _remember = false;
  bool _loading = false;

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
    // placeholder
  }

  Future<void> _signIn() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _loading = true);
    await Future.delayed(const Duration(seconds: 1)); // replace with real auth
    setState(() => _loading = false);
    // on success
    navigateToHome(context);
  }

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
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

            // Main login card (centered)
            Container(
              width: double.infinity,
              // ensure the login band is white
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 520),
                  child: Card(
                    // explicitly set the card color to white
                    color: Colors.white,
                    elevation: 6,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(
                            'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
                            height: 48,
                            errorBuilder: (ctx, er, st) => const SizedBox.shrink(),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Sign in to your account to continue',
                            style: TextStyle(color: Colors.black54),
                          ),
                          const SizedBox(height: 16),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextFormField(
                                  key: emailEnterKey,
                                  controller: _emailCtrl,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    labelText: 'Email',
                                    prefixIcon: Icon(Icons.email),
                                  ),
                                  validator: (v) {
                                    if (v == null || v.trim().isEmpty) return 'Enter your email';
                                    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                                    if (!emailRegex.hasMatch(v.trim())) return 'Enter a valid email';
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 12),
                                TextFormField(
                                  key: passwordLoginKey,
                                  controller: _passwordCtrl,
                                  obscureText: _obscure,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    prefixIcon: const Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                      icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
                                      onPressed: () => setState(() => _obscure = !_obscure),
                                    ),
                                  ),
                                  validator: (v) {
                                    if (v == null || v.isEmpty) return 'Enter your password';
                                    if (v.length < 6) return 'Password must be at least 6 characters';
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: _remember,
                                      onChanged: (v) => setState(() => _remember = v ?? false),
                                    ),
                                    const Text('Remember me'),
                                    const Spacer(),
                                    TextButton(
                                      onPressed: placeholderCallbackForButtons,
                                      child: const Text('Forgot password?'),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                SizedBox(
                                  height: 48,
                                  child: ElevatedButton(
                                    key: emailLoginKey,
                                    onPressed: _loading ? null : _signIn,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF4d2963),
                                    ),
                                    child: _loading
                                        ? const SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                                          )
                                        : const Text('Sign in'),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  children: const [
                                    Expanded(child: Divider()),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text('or'),
                                    ),
                                    Expanded(child: Divider()),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                SizedBox(
                                  height: 44,
                                  child: OutlinedButton.icon(
                                    key: googleLoginKey,
                                    onPressed: placeholderCallbackForButtons,
                                    icon: const Icon(Icons.login),
                                    label: const Text('Sign in with Google'),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Center(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/register');
                                    },
                                    child: const Text('Create account'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Footer (kept from your original file)
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
                        Text('❄️ Winter Break Closure Dates ❄️',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        Text('Closing 4pm 19/12/2025',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        Text('Reopening 10am 05/01/2026',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        Text('Last post date: 12pm on 18/12/2025',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        Text('------------------------',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        Text('(Term Time)', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        Text('Monday - Friday 10am - 4pm',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        Text('(Outside of Term Time / Consolidation Weeks)',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        Text('Monday - Friday 10am - 3pm',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        Text('Purchase online 24/7',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
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
                          key: footerSearchKey,
                          onPressed: placeholderCallbackForButtons,
                          child: const Text('Search'),
                        ),
                        TextButton(
                          key: footerTermsKey,
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