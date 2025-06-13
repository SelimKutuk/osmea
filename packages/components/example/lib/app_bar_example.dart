// import 'package:flutter/material.dart';
// import 'package:osmea_components/osmea_components.dart';

// void main() {
//   runApp(const AppBarExampleApp());
// }

// class AppBarExampleApp extends StatelessWidget {
//   const AppBarExampleApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Osmea AppBar Examples',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         brightness: Brightness.light,
//       ),
//       darkTheme: ThemeData(
//         primarySwatch: Colors.blue,
//         brightness: Brightness.dark,
//       ),
//       themeMode: ThemeMode.system,
//       debugShowCheckedModeBanner: false,
//       home: const AppBarExamplesScreen(),
//     );
//   }
// }

// class AppBarExamplesScreen extends StatelessWidget {
//   const AppBarExamplesScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       appBar: OsmeaAppBar(
//         title: 'AppBar Examples',
//         centerTitle: true,
//         themeType: isDarkMode ? ThemeType.dark : ThemeType.light,
//         enableResponsive: true,
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16.0),
//         children: [
//           _buildExampleCard(
//             context,
//             title: 'Basic AppBar',
//             description: 'Standard AppBar with title',
//             destination: const BasicAppBarExample(),
//           ),
//           _buildExampleCard(
//             context,
//             title: 'E-Commerce AppBar',
//             description: 'AppBar with cart, wishlist and profile features',
//             destination: const EcommerceAppBarExample(),
//           ),
//           _buildExampleCard(
//             context,
//             title: 'Search Focused AppBar',
//             description: 'AppBar emphasizing the search field',
//             destination: const SearchAppBarExample(),
//           ),
//           _buildExampleCard(
//             context,
//             title: 'Product Detail AppBar',
//             description: 'Customized AppBar for product pages',
//             destination: const ProductDetailAppBarExample(),
//           ),
//           _buildExampleCard(
//             context,
//             title: 'Category AppBar',
//             description: 'Filter and sort buttons for category pages',
//             destination: const CategoryAppBarExample(),
//           ),
//           _buildExampleCard(
//             context,
//             title: 'Custom Style AppBar',
//             description: 'AppBar with gradient, shadow and float options',
//             destination: const CustomStyleAppBarExample(),
//           ),
//           _buildExampleCard(
//             context,
//             title: 'Responsive AppBar',
//             description: 'AppBar adapting to different screen sizes',
//             destination: const ResponsiveAppBarExample(),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildExampleCard(
//     BuildContext context, {
//     required String title,
//     required String description,
//     required Widget destination,
//   }) {
//     return Card(
//       margin: const EdgeInsets.only(bottom: 16.0),
//       child: ListTile(
//         title: Text(
//           title,
//           style: const TextStyle(fontWeight: FontWeight.bold),
//         ),
//         subtitle: Text(description),
//         trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (_) => destination),
//           );
//         },
//       ),
//     );
//   }
// }

// // 1. Basic AppBar Example
// class BasicAppBarExample extends StatelessWidget {
//   const BasicAppBarExample({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       appBar: OsmeaAppBar(
//         title: 'Basic AppBar',
//         centerTitle: true,
//         themeType: isDarkMode ? ThemeType.dark : ThemeType.light,
//         enableResponsive: true,
//       ),
//       body: const Center(
//         child: Text('This is a simple AppBar example.'),
//       ),
//     );
//   }
// }

// // 2. E-commerce AppBar Example
// class EcommerceAppBarExample extends StatefulWidget {
//   const EcommerceAppBarExample({Key? key}) : super(key: key);

//   @override
//   State<EcommerceAppBarExample> createState() => _EcommerceAppBarExampleState();
// }

// class _EcommerceAppBarExampleState extends State<EcommerceAppBarExample> {
//   int _cartItemCount = 2;
//   int _wishlistItemCount = 4;

//   void _addToCart() {
//     setState(() {
//       _cartItemCount++;
//     });
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('Product added to cart')),
//     );
//   }

//   void _addToWishlist() {
//     setState(() {
//       _wishlistItemCount++;
//     });
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('Added to wishlist')),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       appBar: OsmeaEcommerceAppBar.standard(
//         context: context,
//         title: 'Osmea Shop',
//         themeType: isDarkMode ? ThemeType.dark : ThemeType.light,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Navigator.pop(context),
//         ),
//         automaticallyImplyLeading: false,
//         // OsmeaEcommerceAppBar.standard back button otomatik eklemez,
//         // leading parametresi sağlamalıyız
//         enableCart: true,
//         cartItemCount: _cartItemCount,
//         onCartTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Going to cart')),
//           );
//         },
//         enableWishlist: true,
//         wishlistItemCount: _wishlistItemCount,
//         onWishlistTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Going to wishlist')),
//           );
//         },
//         enableSearch: true,
//         searchHint: 'Search products...',
//         onSearchTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Search opened')),
//           );
//         },
//         onProfileTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Profile opened')),
//           );
//         },
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('Test E-commerce AppBar features'),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _addToCart,
//               child: const Text('Add to Cart'),
//             ),
//             const SizedBox(height: 12),
//             ElevatedButton(
//               onPressed: _addToWishlist,
//               child: const Text('Add to Wishlist'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // 3. Search Focused AppBar Example
// class SearchAppBarExample extends StatelessWidget {
//   const SearchAppBarExample({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       appBar: OsmeaEcommerceAppBar.searchFocused(
//         context: context,
//         themeType: isDarkMode ? ThemeType.dark : ThemeType.light,
//         // searchFocused'da back button yok, gerekirse leading eklenmeli
//         searchHint: 'Search products, brands and categories...',
//         onSearchTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Search opened')),
//           );
//         },
//         logo: Image.network(
//           'https://via.placeholder.com/100x40?text=LOGO',
//           fit: BoxFit.contain,
//           errorBuilder: (context, error, stackTrace) =>
//               const Text('LOGO', style: TextStyle(fontWeight: FontWeight.bold)),
//         ),
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: 15,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: const EdgeInsets.only(bottom: 12),
//             child: ListTile(
//               leading: Container(
//                 width: 50,
//                 height: 50,
//                 color: Colors.grey[300],
//                 child: Center(child: Text('${index + 1}')),
//               ),
//               title: Text('Product ${index + 1}'),
//               subtitle: const Text('Product description'),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// // 4. Product Detail AppBar Example
// class ProductDetailAppBarExample extends StatefulWidget {
//   const ProductDetailAppBarExample({Key? key}) : super(key: key);

//   @override
//   State<ProductDetailAppBarExample> createState() =>
//       _ProductDetailAppBarExampleState();
// }

// class _ProductDetailAppBarExampleState
//     extends State<ProductDetailAppBarExample> {
//   bool _isInWishlist = false;

//   void _toggleWishlist() {
//     setState(() {
//       _isInWishlist = !_isInWishlist;
//     });
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content:
//             Text(_isInWishlist ? 'Added to wishlist' : 'Removed from wishlist'),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       appBar: OsmeaEcommerceAppBar.productDetail(
//         context: context,
//         productTitle: 'Osmea Premium Smart Watch X3',
//         themeType: isDarkMode ? ThemeType.dark : ThemeType.light,
//         onBackPressed: () => Navigator.pop(context),
//         // productDetail zaten içinde back button oluşturuyor,
//         // sadece onBackPressed yeterli, leading parametresi vermeyin
//         enableCart: true,
//         cartItemCount: 2,
//         onCartTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Going to cart')),
//           );
//         },
//         enableWishlist: true,
//         isProductInWishlist: _isInWishlist,
//         onWishlistTap: _toggleWishlist,
//         enableShare: true,
//         onShareTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Sharing product')),
//           );
//         },
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: 200,
//               height: 200,
//               child: Image.network(
//                 'https://via.placeholder.com/200',
//                 fit: BoxFit.contain,
//                 errorBuilder: (context, error, stackTrace) =>
//                     const Icon(Icons.watch, size: 100),
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'Osmea Premium Smart Watch X3',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               '\$2,499',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _toggleWishlist,
//               child: Text(
//                   _isInWishlist ? 'Remove from Wishlist' : 'Add to Wishlist'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // 5. Category AppBar Example
// class CategoryAppBarExample extends StatelessWidget {
//   const CategoryAppBarExample({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       appBar: OsmeaEcommerceAppBar.category(
//         context: context,
//         categoryName: 'Electronics',
//         themeType: isDarkMode ? ThemeType.dark : ThemeType.light,
//         onBackPressed: () => Navigator.pop(context),
//         onFilterTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Filters opened')),
//           );
//         },
//         onSortTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Sort options opened')),
//           );
//         },
//         enableCart: true,
//         cartItemCount: 2,
//         onCartTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Going to cart')),
//           );
//         },
//         automaticallyImplyLeading: false,
//       ),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(16),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: 0.7,
//           crossAxisSpacing: 16,
//           mainAxisSpacing: 16,
//         ),
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return Card(
//             elevation: 2,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   flex: 3,
//                   child: Container(
//                     width: double.infinity,
//                     color: Colors.grey[300],
//                     child: Center(child: Text('Product ${index + 1}')),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 2,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Electronics Product ${index + 1}',
//                           style: const TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text('\$${999 + index * 100}'),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// // 6. Custom Style AppBar Example
// class CustomStyleAppBarExample extends StatefulWidget {
//   const CustomStyleAppBarExample({Key? key}) : super(key: key);

//   @override
//   State<CustomStyleAppBarExample> createState() =>
//       _CustomStyleAppBarExampleState();
// }

// class _CustomStyleAppBarExampleState extends State<CustomStyleAppBarExample> {
//   bool _enableGradient = true;
//   bool _enableShadow = true;
//   bool _enableBlur = false;
//   bool _enableFloating = false;
//   double _shadowIntensity = 0.05;
//   double _blurIntensity = 10;

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       appBar: OsmeaAppBar(
//         title: 'Custom Design',
//         themeType: isDarkMode ? ThemeType.dark : ThemeType.light,
//         enableResponsive: true,
//         enableGradient: _enableGradient,
//         enableShadow: _enableShadow,
//         shadowIntensity: _shadowIntensity,
//         enableBlur: _enableBlur,
//         blurIntensity: _blurIntensity,
//         enableFloating: _enableFloating,
//         floatingMargin: 16.0,
//         gradientColors: _enableGradient
//             ? [
//                 Colors.blue.shade300,
//                 Colors.blue.shade600,
//                 Colors.indigo.shade800,
//               ]
//             : null,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.favorite),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.share),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           const Text(
//             'AppBar Appearance Settings',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 20),
//           SwitchListTile(
//             title: const Text('Gradient Effect'),
//             value: _enableGradient,
//             onChanged: (value) {
//               setState(() {
//                 _enableGradient = value;
//               });
//             },
//           ),
//           SwitchListTile(
//             title: const Text('Shadow Effect'),
//             value: _enableShadow,
//             onChanged: (value) {
//               setState(() {
//                 _enableShadow = value;
//               });
//             },
//           ),
//           ListTile(
//             title: const Text('Shadow Intensity'),
//             subtitle: Slider(
//               value: _shadowIntensity,
//               min: 0.01,
//               max: 0.2,
//               divisions: 19,
//               label: _shadowIntensity.toStringAsFixed(2),
//               onChanged: _enableShadow
//                   ? (value) {
//                       setState(() {
//                         _shadowIntensity = value;
//                       });
//                     }
//                   : null,
//             ),
//           ),
//           SwitchListTile(
//             title: const Text('Blur Effect'),
//             value: _enableBlur,
//             onChanged: (value) {
//               setState(() {
//                 _enableBlur = value;
//               });
//             },
//           ),
//           ListTile(
//             title: const Text('Blur Intensity'),
//             subtitle: Slider(
//               value: _blurIntensity,
//               min: 1,
//               max: 30,
//               divisions: 29,
//               label: _blurIntensity.toStringAsFixed(1),
//               onChanged: _enableBlur
//                   ? (value) {
//                       setState(() {
//                         _blurIntensity = value;
//                       });
//                     }
//                   : null,
//             ),
//           ),
//           SwitchListTile(
//             title: const Text('Floating AppBar'),
//             value: _enableFloating,
//             onChanged: (value) {
//               setState(() {
//                 _enableFloating = value;
//               });
//             },
//           ),
//           const SizedBox(height: 20),
//           const Text(
//             'Change settings to see the effects. Blur effect will be more visible with content underneath.',
//             style: TextStyle(fontStyle: FontStyle.italic),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // 7. Responsive AppBar Example
// class ResponsiveAppBarExample extends StatelessWidget {
//   const ResponsiveAppBarExample({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;
//     final Size screenSize = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: OsmeaAppBar(
//         title: 'Responsive AppBar',
//         logo: Image.network(
//           'https://via.placeholder.com/100x40?text=LOGO',
//           fit: BoxFit.contain,
//           errorBuilder: (context, error, stackTrace) =>
//               const Text('LOGO', style: TextStyle(fontWeight: FontWeight.bold)),
//         ),
//         themeType: isDarkMode ? ThemeType.dark : ThemeType.light,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               MediaQuery.of(context).size.width < 650
//                   ? 'Mobile View'
//                   : MediaQuery.of(context).size.width < 1080
//                       ? 'Tablet View'
//                       : 'Desktop View',
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               'Screen width: ${screenSize.width.toStringAsFixed(1)}',
//               style: const TextStyle(fontSize: 16),
//             ),
//             Text(
//               'Screen height: ${screenSize.height.toStringAsFixed(1)}',
//               style: const TextStyle(fontSize: 16),
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'Resize the browser window to test the responsive AppBar',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 16),
//             ),
//             const SizedBox(height: 40),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 32.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     '• Mobile view: Compact search button',
//                     style: TextStyle(fontSize: 14),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     '• Tablet view: Integrated search field',
//                     style: TextStyle(fontSize: 14),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     '• Desktop view: Full-width search with more actions',
//                     style: TextStyle(fontSize: 14),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
