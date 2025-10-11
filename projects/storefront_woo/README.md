# OSMEA Storefront Woo 🛍️

<div align="center">

[![Version](https://img.shields.io/badge/version-1.0.0-2D3748?style=for-the-badge&logo=dart&logoColor=white&labelColor=1A202C)](https://github.com/masterfabric-mobile/osmea)
[![Platform](https://img.shields.io/badge/platform-Flutter-2D3748?style=for-the-badge&logo=flutter&logoColor=white&labelColor=1A202C)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2D3748?style=for-the-badge&logo=dart&logoColor=white&labelColor=1A202C)](https://dart.dev)
[![WooCommerce](https://img.shields.io/badge/WooCommerce-2D3748?style=for-the-badge&logo=woocommerce&logoColor=white&labelColor=1A202C)](https://woocommerce.com)

</div>

<div align="center">

**"Complete E-commerce Mobile Application"**

[📚 Documentation](https://github.com/masterfabric-mobile/osmea/tree/dev/projects/storefront_woo) • [🐛 Report Issues](https://github.com/masterfabric-mobile/osmea/issues) • [💬 Discussions](https://github.com/masterfabric-mobile/osmea/discussions)

</div>

---

## 🌟 What is OSMEA Storefront Woo?

**OSMEA Storefront Woo** is a complete e-commerce mobile application built with Flutter and integrated with WooCommerce. It provides a modern, responsive, and feature-rich shopping experience for customers on iOS and Android platforms.

### ✨ **Key Features**

- **🛒 Complete E-commerce** - Full-featured online store with WooCommerce integration
- **📱 Cross-Platform** - Native performance for iOS and Android
- **🎨 Modern UI/UX** - Beautiful interface with Material Design 3
- **🔄 State Management** - Powerful BLoC pattern for state management
- **🌍 Localization** - Multi-language support with slang package
- **⚙️ Multi-Environment** - Development, staging, and production environments

---

## 🚀 Live Demo

<div align="center">

> **Experience the Complete E-commerce App**  
> 📱 **Coming Soon - App Store & Google Play**

*Full-featured mobile shopping experience with modern UI and seamless performance*

</div>

---

## ✨ What's Inside?

### 🛒 **E-commerce Features**

<table>
<tr>
<td width="50%">

#### **Shopping Experience**
- 🛍️ **Product Catalog** - Browse and search products
- 🛒 **Shopping Cart** - Add, remove, and manage items
- 💳 **Checkout Process** - Secure payment processing
- 📦 **Order Management** - Track and manage orders
- ❤️ **Wishlist** - Save favorite products

#### **User Features**
- 👤 **User Authentication** - Secure login and registration
- 📱 **User Profile** - Manage account and preferences
- 📍 **Address Management** - Shipping and billing addresses
- 📧 **Notifications** - Order updates and promotions

</td>
<td width="50%">

#### **Store Management**
- 🏪 **Store Configuration** - Multi-store support
- 🎨 **Theme Customization** - Brand-specific theming
- 📊 **Analytics** - Sales and user analytics
- 🔧 **Admin Features** - Store management tools
- 🌐 **Multi-language** - Internationalization support

#### **Technical Features**
- ⚡ **Performance** - Optimized for speed and efficiency
- 🔒 **Security** - Secure data handling and payments
- 📱 **Responsive** - Adapts to all screen sizes
- 🔄 **Offline Support** - Works without internet connection

</td>
</tr>
</table>

---

## 🛠️ Technology Stack

- **Flutter 3.8+** - Cross-platform UI framework
- **Dart 3.8+** - Type-safe programming language
- **BLoC Pattern** - State management with flutter_bloc
- **GoRouter** - Declarative navigation
- **GetIt + Injectable** - Dependency injection
- **Slang** - Internationalization
- **Flavor** - Multi-environment management
- **WooCommerce API** - E-commerce backend integration

---

## 📁 Project Structure

```bash
projects/storefront_woo/
├── 📦 lib/                          # Source code
│   ├── app/                         # Application layer
│   │   ├── core/                    # Core configuration
│   │   │   └── config/              # Dependency injection
│   │   └── routes/                  # Application routing
│   │       └── app_routes.dart      # Route definitions
│   ├── flavors/                     # Environment configurations
│   │   ├── main_dev.dart           # Development environment
│   │   └── main_prod.dart          # Production environment
│   ├── gen/                        # Generated code
│   │   └── assets.gen.dart         # Asset references
│   └── starter.dart                # Application starter
├── 🧪 test/                         # Unit and integration tests
├── 🌐 web/                          # Web platform files
├── 📱 android/                      # Android platform files
├── 🍎 ios/                          # iOS platform files
├── 📦 assets/                       # Static assets
│   └── images/                      # Image assets
├── 📄 pubspec.yaml                  # Package dependencies
└── 📖 README.md                     # This file
```

---

## 🚀 Quick Start

### 📋 Prerequisites

- **Flutter SDK** (3.8.1 or higher)
- **Dart SDK** (3.8.1 or higher)
- **Android Studio** or **VS Code** with Flutter extensions
- **Xcode** (for iOS development on macOS)

### 📦 Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/masterfabric-mobile/osmea.git
   cd osmea/projects/storefront_woo
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Generate code:**
   ```bash
   flutter packages pub run build_runner build
   ```

4. **Run the application:**
   ```bash
   # Development environment
   flutter run --flavor dev
   
   # Production environment
   flutter run --flavor prod
   ```

### 🌐 **Web Deployment**

For production deployment:

```bash
# Build for web
flutter build web --release

# Deploy to your hosting service
# The build/web directory contains all static files
```

---

## 🔧 Configuration

### **Environment Management**

The app supports multiple environments:

- **Development** (`main_dev.dart`): Green theme, debug features
- **Production** (`main_prod.dart`): Blue theme, production settings

### **Build Variants**

```bash
# Development builds
flutter build apk --flavor dev
flutter build ios --flavor dev

# Production builds
flutter build apk --flavor prod
flutter build ios --flavor prod
```

---

## 📱 Application Screens

### **Core Screens**
- **Splash Screen** - Application startup and loading
- **Onboarding** - First-time user experience
- **Welcome** - Welcome and introduction screen
- **Product Catalog** - Browse and search products
- **Product Details** - Detailed product information
- **Shopping Cart** - Cart management and checkout
- **Checkout** - Payment and order processing
- **User Profile** - Account management

### **Additional Features**
- **Search** - Product search functionality
- **Categories** - Product categorization
- **Wishlist** - Save favorite products
- **Order History** - Past order tracking
- **Settings** - App configuration

---

## 🎯 Use Cases

### 🛒 **E-commerce Businesses**
- **Online Stores** - Complete mobile shopping experience
- **Retail Chains** - Multi-store management
- **Marketplaces** - Product catalog and sales
- **B2B Sales** - Business-to-business commerce

### 👥 **End Users**
- **Mobile Shopping** - Convenient mobile shopping
- **Product Discovery** - Browse and discover products
- **Secure Payments** - Safe and secure transactions
- **Order Tracking** - Real-time order updates

### 👨‍💻 **Developers**
- **Flutter Learning** - Learn Flutter e-commerce development
- **BLoC Pattern** - Understand state management
- **API Integration** - Learn WooCommerce integration
- **Mobile Development** - Cross-platform development

---

## 🛠️ Development

### **Code Generation**
```bash
# Generate dependency injection code
flutter packages pub run build_runner build

# Generate localization files
flutter packages pub run slang_build_runner build

# Generate asset references
flutter packages pub run flutter_gen_runner
```

### **Testing**
```bash
# Run unit tests
flutter test

# Run integration tests
flutter test integration_test/
```

### **Building**
```bash
# Build for Android
flutter build apk --flavor prod --release

# Build for iOS
flutter build ios --flavor prod --release

# Build for web
flutter build web --release
```

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### **Development Guidelines**
- **Code Style**: Follow Dart/Flutter conventions
- **Testing**: Write tests for new features
- **Documentation**: Update docs for API changes
- **Commit Messages**: Use conventional commits

### **How to Contribute**
1. **Fork the Repository**
2. **Create a Feature Branch**
3. **Make Your Changes**
4. **Submit a Pull Request**

---

## 📄 License

> 🔐 **License:** GNU AGPL v3.0  
> 📜 This project is protected under the **GNU Affero General Public License v3.0**.

📎 Full details available in the [`LICENSE`](LICENSE) file.

---

<div align="center">

**Built with ❤️ by the OSMEA Team**

© 2025 MasterFabric Mobile • Maintained by the OSMEA Engineering Team

[⬆ Back to Top](#osmea-storefront-woo-)

</div>