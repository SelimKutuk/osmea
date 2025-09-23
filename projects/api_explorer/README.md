# API Explorer 🔍

<div align="center">

[![Version](https://img.shields.io/badge/version-1.1.0-2D3748?style=for-the-badge&logo=dart&logoColor=white&labelColor=1A202C)](https://github.com/masterfabric-mobile/osmea)
[![Platform](https://img.shields.io/badge/platform-Flutter-2D3748?style=for-the-badge&logo=flutter&logoColor=white&labelColor=1A202C)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2D3748?style=for-the-badge&logo=dart&logoColor=white&labelColor=1A202C)](https://dart.dev)
[![Web](https://img.shields.io/badge/Web-2D3748?style=for-the-badge&logo=web&logoColor=white&labelColor=1A202C)](https://web.dev)

</div>

<div align="center">

**"Interactive API Testing & Exploration Tool"**

[📚 Documentation](https://github.com/masterfabric-mobile/osmea/tree/dev/projects/api_explorer) • [🐛 Report Issues](https://github.com/masterfabric-mobile/osmea/issues) • [💬 Discussions](https://github.com/masterfabric-mobile/osmea/discussions)

</div>

---

## 🌟 What is API Explorer?

**API Explorer** is a modern, interactive web application designed for testing and exploring APIs with a focus on e-commerce platforms. It provides a comprehensive interface for developers to interact with Shopify and WooCommerce APIs through an intuitive wizard-based configuration system.

### ✨ **Key Features**

- **🔌 Universal API Testing** - Test any REST or GraphQL API endpoint
- **🧙‍♂️ Wizard-Based Setup** - Interactive configuration for Shopify and WooCommerce
- **📊 Real-time Response** - Live API testing with formatted JSON responses
- **🎨 Modern UI** - Clean, responsive design with dark/light mode
- **📱 Cross-Platform** - Works on web, mobile, and desktop
- **💾 Persistent Storage** - Save configurations and test results

---

## 🚀 Quick Start

### 📋 Prerequisites

- **Flutter SDK** (3.6.1 or higher)
- **Dart SDK** (3.6.1 or higher)
- **Web Browser** (Chrome, Firefox, Safari, Edge)

### 📦 Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/masterfabric-mobile/osmea.git
   cd osmea/projects/api_explorer
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
   flutter run -d chrome
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

## 🛠️ Technology Stack

- **Flutter 3.6+** - Cross-platform UI framework
- **Dart 3.6+** - Type-safe programming language
- **GoRouter** - Declarative routing for Flutter
- **GetIt + Injectable** - Dependency injection
- **Dio** - HTTP client for API calls
- **Flutter Highlight** - Syntax highlighting for JSON
- **SharedPreferences** - Local storage

---

## 📦 Core Features

### 🌐 **API Testing Interface**
- **HTTP Method Selection** - GET, POST, PUT, DELETE, PATCH
- **Request Parameters** - Query parameters, headers, body
- **Response Visualization** - Formatted JSON with syntax highlighting
- **Error Handling** - Detailed error messages and status codes
- **Request History** - Save and replay previous requests

### 🧙‍♂️ **Wizard Configuration**
- **Store Setup** - Interactive store configuration wizard
- **Platform Selection** - Choose between Shopify and WooCommerce
- **Authentication** - Secure credential management
- **API Versioning** - Support for different API versions
- **Environment Switching** - Development and production environments

### 🎨 **User Interface**
- **Responsive Design** - Works on all screen sizes
- **Dark/Light Mode** - Theme switching capability
- **Modern Layout** - Clean, intuitive interface
- **Mobile Support** - Touch-friendly mobile interface
- **Desktop Optimization** - Full desktop experience

### 📊 **Data Management**
- **Local Storage** - Persistent configuration storage
- **Session Management** - Maintain user sessions
- **Data Export** - Export test results and configurations
- **Import/Export** - Share configurations between users

---

## 📁 Project Structure

```bash
projects/api_explorer/
├── 📦 lib/                          # Source code
│   ├── main.dart                    # Application entry point
│   ├── di/                          # Dependency injection
│   │   └── config/                  # DI configuration
│   ├── routes/                      # Application routing
│   │   └── app_router.dart          # Route definitions
│   ├── services/                    # Business logic
│   │   ├── api_request_handler.dart # API request handling
│   │   ├── api_service_registry.dart # Service registry
│   │   ├── app_state_persistence.dart # State persistence
│   │   └── handlers/                # API handlers
│   │       ├── shopify/             # Shopify API handlers
│   │       │   ├── graphql_handlers/ # GraphQL operations
│   │       │   └── rest_handlers/   # REST API operations
│   │       └── woocommerce/         # WooCommerce API handlers
│   │           └── *_handlers/      # Various API modules
│   ├── views/                       # UI screens
│   │   ├── api_explorer_view.dart   # Main API explorer
│   │   ├── home_view.dart           # Home screen
│   │   └── splash_view.dart         # Splash screen
│   ├── widgets/                     # Reusable UI components
│   │   ├── api_explorer_view/       # API explorer components
│   │   ├── home/                    # Home screen components
│   │   ├── layout/                  # Layout components
│   │   ├── responsive_layout/       # Responsive design
│   │   └── store_management/        # Store management UI
│   └── styles/                      # Theme and styling
│       └── app_theme.dart           # Application theme
├── 🧪 test/                         # Unit and integration tests
├── 🌐 web/                          # Web-specific files
├── 📱 macos/                        # macOS-specific files
├── 📄 pubspec.yaml                  # Package dependencies
└── 📋 analysis_options.yaml         # Linting configuration
```

---

## 🎯 Supported APIs

### 🛍️ **Shopify APIs**

#### **REST API Endpoints**
- **Access Management** - Store access tokens and scopes
- **Billing** - Application charges and billing
- **Customers** - Customer management and data
- **Products** - Product catalog and inventory
- **Orders** - Order processing and management
- **Webhooks** - Event notifications
- **Discounts** - Coupon and discount management
- **Inventory** - Stock management
- **Marketing** - Marketing events and campaigns
- **Online Store** - Blog, pages, and themes

#### **GraphQL Operations**
- **Customer Queries** - Customer data retrieval
- **Product Queries** - Product information
- **Webhook Mutations** - Webhook management
- **Real-time Data** - Live data synchronization

### 🛒 **WooCommerce APIs**

#### **REST API Endpoints**
- **Authentication** - User login and JWT tokens
- **Products** - Product management
- **Orders** - Order processing
- **Customers** - Customer data
- **Coupons** - Discount management
- **Reports** - Sales analytics
- **Settings** - Store configuration
- **Webhooks** - Event handling
- **Wishlist** - Customer wishlists
- **Shipping** - Shipping management
- **Taxes** - Tax calculations

---

## 🚀 Getting Started

### 1. **Launch the Application**
```bash
flutter run -d chrome
```

### 2. **Configure Your Store**
- Click on "Setup Wizard" to configure your store
- Choose between Shopify or WooCommerce
- Enter your store credentials
- Select API version and endpoints

### 3. **Test APIs**
- Select an API endpoint from the sidebar
- Choose HTTP method (GET, POST, PUT, DELETE)
- Add parameters and headers as needed
- Click "Send Request" to test the API
- View formatted response in the results panel

### 4. **Explore Features**
- Switch between different API modules
- Save frequently used requests
- Export test results
- Switch between light and dark themes

---

## 🛠️ Development

### **Code Generation**
```bash
# Generate dependency injection code
flutter packages pub run build_runner build

# Watch for changes during development
flutter packages pub run build_runner watch
```


### **Building**
```bash
# Build for web
flutter build web --release

# Build for macOS
flutter build macos --release
```

---

## 🎨 Customization

### **Themes**
The application supports both light and dark themes. You can customize the theme by modifying `lib/styles/app_theme.dart`.

### **API Handlers**
Add new API handlers by creating new files in the `lib/services/handlers/` directory and registering them in the service registry.

### **UI Components**
All UI components are modular and can be customized in the `lib/widgets/` directory.

---

## 🎯 Use Cases

### 👨‍💻 **Developers**
- **API Testing** - Test API endpoints during development
- **Debugging** - Debug API responses and errors
- **Documentation** - Explore API capabilities and parameters
- **Integration** - Understand API structure for integration

### 🏢 **Business Users**
- **Store Management** - Manage products, orders, and customers
- **Data Export** - Export store data for analysis
- **Configuration** - Configure store settings and integrations
- **Monitoring** - Monitor API performance and usage

### 🎓 **Students & Learners**
- **API Learning** - Learn how APIs work through hands-on experience
- **E-commerce** - Understand e-commerce platform APIs
- **Flutter Development** - Learn Flutter web development
- **Best Practices** - See modern web application architecture

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

[⬆ Back to Top](#api-explorer-)

</div>
