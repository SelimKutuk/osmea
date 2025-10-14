# OSMEA Components 🎨

<div align="center">

[![Version](https://img.shields.io/badge/version-1.0.0-2D3748?style=for-the-badge&logo=flutter&logoColor=white&labelColor=1A202C)](https://github.com/masterfabric-mobile/osmea)
[![Platform](https://img.shields.io/badge/platform-Flutter-2D3748?style=for-the-badge&logo=flutter&logoColor=white&labelColor=1A202C)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2D3748?style=for-the-badge&logo=dart&logoColor=white&labelColor=1A202C)](https://dart.dev)
[![UI Kit](https://img.shields.io/badge/UI%20Kit-2D3748?style=for-the-badge&logo=flutter&logoColor=white&labelColor=1A202C)](https://github.com/masterfabric-mobile/osmea)
[![Components](https://img.shields.io/badge/Components-50+-2D3748?style=for-the-badge&logo=flutter&logoColor=white&labelColor=1A202C)](https://github.com/masterfabric-mobile/osmea)

</div>

<div align="center">

**"50+ Production-Ready Flutter UI Components"**

[🚀 Live Demo](https://osmea-app.web.app) • [📚 Documentation](https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components) • [🐛 Report Issues](https://github.com/masterfabric-mobile/osmea/issues)

</div>

---

## 🌟 What is OSMEA Components?

**OSMEA Components** is a comprehensive Flutter UI library with 50+ production-ready components. Built for e-commerce applications with mobile-first design, comprehensive theming, and extensive customization options.

### ✨ **Key Features**

- **🎨 50+ Components** - From buttons to complex carousels and forms
- **🎯 Mobile-First Design** - Optimized for high-performance e-commerce interfaces
- **🎨 Built-in Theming** - Material Design 3 with design tokens
- **⚡ Zero Configuration** - Get started in minutes with sensible defaults
- **🔧 Highly Customizable** - Variants, sizes, and styles for every component

---

## 🚀 Quick Start

### 1. **Add to your `pubspec.yaml`:**
```yaml
dependencies:
  osmea_components:
    git:
      url: https://github.com/masterfabric-mobile/osmea.git
      path: packages/components
```

### 2. **Import and Use:**
```dart
import 'package:osmea_components/osmea_components.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: OsmeaTheme.lightTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.scaffold(
      appBar: OsmeaComponents.appBar(
        title: OsmeaComponents.text('My App'),
        actions: [
          OsmeaComponents.appBarAction(
            icon: OsmeaComponents.icon(Icons.search),
            onPressed: () => print('Search tapped'),
          ),
        ],
      ),
      body: OsmeaComponents.column(
        children: [
          OsmeaComponents.button(
            text: 'Get Started',
            variant: ButtonVariant.primary,
            size: ButtonSize.large,
            onPressed: () => print('Button tapped'),
          ),
          OsmeaComponents.spacer(),
          OsmeaComponents.basicCard(
            title: 'Welcome',
            subtitle: 'Get started with OSMEA',
            content: 'Build amazing apps with our components!',
            onTap: () => print('Card tapped'),
          ),
        ],
      ),
    );
  }
}
```

### 3. **Size Extensions:**
```dart
// Size extensions for easy spacing
OsmeaComponents.container(
  padding: 16.w, // Width-based padding
  margin: 8.h,   // Height-based margin
  child: OsmeaComponents.column(
    children: [
      OsmeaComponents.text('Title'),
      16.h, // Height spacer
      OsmeaComponents.text('Subtitle'),
    ],
  ),
)

// Responsive sizing
OsmeaComponents.button(
  text: 'Responsive Button',
  width: 200.w,  // Responsive width
  height: 48.h,  // Responsive height
  onPressed: () {},
)
```

---

## 🛠️ Technology Stack

- **Flutter 3.19+** - Cross-platform UI framework
- **Dart 2.17+** - Type-safe programming language
- **UI Kit** - Comprehensive component library
- **Custom Theming** - Design tokens and color system

---

## 📦 Core Features

### 🎨 **Component Library**
- **50+ Production-ready components** for every use case
- **Consistent API** across all components
- **Multiple variants** for different contexts
- **Responsive design** for all screen sizes
- **Accessibility support** built-in

### 🎯 **Layout & Structure**
- **Container** - Flexible box with styling capabilities
- **Row / Column** - Arrange widgets horizontally or vertically
- **Stack** - Overlay widgets on top of each other
- **Scaffold** - Provides page structure with app bar and body
- **Padding / SizedBox** - Space and dimension helpers
- **Align / Center** - Alignment and centering utilities

### 🔘 **Interactive Elements**
- **Button** - Action triggers with multiple variants
- **Card** - Content blocks with optional actions
- **Carousel** - Swipable image or content sliders
- **Bottom Sheet** - Modal slide-up panels
- **Popup** - Modal windows and overlays
- **Toast** - Temporary alert messages

### 📝 **Form Controls**
- **Text Field** - Basic input with validation support
- **OTP Text Field** - Input field for one-time passwords
- **Checkbox** - Multi-select toggle option
- **Radio Button** - Single-select input from a group
- **Switch** - Binary toggle with on/off states
- **Dropdown** - Select from a list of options

### 🧭 **Navigation**
- **AppBar** - Top bar with title, actions, and navigation
- **Navbar** - Bottom or top navigation menus
- **Stepper** - Visual step-based navigation flow
- **TabBar** - Tabbed navigation
- **Searchbar** - Search input with suggestions

---

## 📁 Project Structure

```bash
packages/components/
├── 📦 lib/                          # Source code
│   ├── osmea_components.dart        # Main export file
│   └── src/
│       ├── components/              # Individual component implementations
│       │   ├── buttons/             # Button components
│       │   ├── cards/               # Card components
│       │   ├── text_field/          # Text field components
│       │   ├── appbar/              # AppBar components
│       │   ├── navbar/              # Navigation components
│       │   └── ...                  # 50+ more components
│       ├── core/                    # Core functionality
│       ├── enums/                   # Component variants and states
│       ├── styles/                  # Text styles and colors
│       ├── theme/                   # Theme system
│       └── utils/                   # Utility functions
├── 📖 example_storybook/            # Interactive showcase
└── 📱 example_mobile/               # Mobile app examples
```

---

## 💡 Usage Examples

### Simple Login Form
```dart
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.container(
      padding: 24.w,
      child: OsmeaComponents.column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OsmeaComponents.text(
            'Welcome Back',
            variant: OsmeaTextVariant.headlineMedium,
            textAlign: TextAlign.center,
          ),
          32.h, // Height spacer
          OsmeaComponents.textField(
            controller: _emailController,
            label: 'Email Address',
            keyboardType: TextInputType.emailAddress,
            prefixIcon: OsmeaComponents.icon(Icons.email_outlined),
          ),
          16.h, // Height spacer
          OsmeaComponents.textField(
            controller: _passwordController,
            label: 'Password',
            obscureText: true,
            prefixIcon: OsmeaComponents.icon(Icons.lock_outlined),
          ),
          24.h, // Height spacer
          OsmeaComponents.button(
            text: 'Sign In',
            variant: ButtonVariant.primary,
            size: ButtonSize.large,
            onPressed: () => _handleLogin(),
          ),
        ],
      ),
    );
  }
}
```

### Product Card Grid
```dart
class ProductGrid extends StatelessWidget {
  final List<Product> products;
  const ProductGrid({Key? key, required this.products}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.gridView(
      padding: 16.w,
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      crossAxisSpacing: 16.w,
      mainAxisSpacing: 16.h,
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return OsmeaComponents.imageCard(
          title: product.name,
          subtitle: OsmeaComponents.text('\$${product.price}'),
          imageUrl: product.imageUrl,
          variant: ComponentAppearance.elevated,
          onTap: () => OsmeaComponents.navigateTo(
            context, 
            '/product', 
            arguments: product,
          ),
          badge: product.isOnSale 
            ? OsmeaComponents.badge(
                content: 'SALE',
                variant: BadgeVariant.danger,
                size: BadgeSize.small,
              )
            : null,
        );
      },
    );
  }
}
```

---

## 🎯 Use Cases

### 📱 **Mobile Apps**
- **E-commerce Apps** - Product catalogs, shopping carts, checkout flows
- **Social Apps** - User profiles, feeds, messaging interfaces
- **Business Apps** - Dashboards, forms, data visualization
- **Utility Apps** - Settings, preferences, configuration screens

### 🌐 **Web Applications**
- **Admin Dashboards** - Data tables, charts, management interfaces
- **Landing Pages** - Hero sections, feature showcases, CTAs
- **Forms** - Registration, contact, feedback forms
- **Content Sites** - Article layouts, media galleries, navigation

### 🖥️ **Desktop Applications**
- **Desktop-optimized** - Larger touch targets, keyboard navigation
- **Cross-platform** - Consistent experience across all platforms
- **Responsive** - Adapts to different screen sizes and orientations

---

## 🛠️ Development Setup

```bash
# Install dependencies
flutter pub get

# Run the storybook example
cd example_storybook
flutter run

# Run the mobile example
cd example_mobile
flutter run

# Run tests
flutter test
```

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

1. **Fork the Repository**
2. **Create a Feature Branch**
3. **Make Your Changes**
4. **Submit a Pull Request**

### Development Guidelines

- **Code Style**: Follow Dart/Flutter conventions
- **Testing**: Write unit tests for new features
- **Documentation**: Update docs for component changes
- **Commit Messages**: Use conventional commits

---

## 📄 License

> 🔐 **License:** GNU AGPL v3.0  
> 📜 This project is protected under the **GNU Affero General Public License v3.0**.

📎 Full details available in the [`LICENSE`](LICENSE) file.

---

<div align="center">

**Built with ❤️ by the OSMEA Team**

© 2025 MasterFabric Mobile • Maintained by the OSMEA Engineering Team

[⬆ Back to Top](#osmea-components-)

</div>