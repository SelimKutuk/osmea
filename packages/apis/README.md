# OSMEA APIs 🌐

<div align="center">

[![Version](https://img.shields.io/badge/version-1.0.0-2D3748?style=for-the-badge&logo=dart&logoColor=white&labelColor=1A202C)](https://github.com/masterfabric-mobile/osmea)
[![Platform](https://img.shields.io/badge/platform-Dart-2D3748?style=for-the-badge&logo=dart&logoColor=white&labelColor=1A202C)](https://dart.dev)
[![Dio](https://img.shields.io/badge/Dio-2D3748?style=for-the-badge&logo=dio&logoColor=white&labelColor=1A202C)](https://pub.dev/packages/dio)
[![GetIt](https://img.shields.io/badge/GetIt-2D3748?style=for-the-badge&logo=getit&logoColor=white&labelColor=1A202C)](https://pub.dev/packages/get_it)
[![Injectable](https://img.shields.io/badge/Injectable-2D3748?style=for-the-badge&logo=injectable&logoColor=white&labelColor=1A202C)](https://pub.dev/packages/injectable)

</div>

<div align="center">

**"Robust API Integration for Flutter"**

[📚 Documentation](https://github.com/masterfabric-mobile/osmea/tree/dev/packages/apis) • [🐛 Report Issues](https://github.com/masterfabric-mobile/osmea/issues) • [💬 Discussions](https://github.com/masterfabric-mobile/osmea/discussions)

</div>

---

## 🌟 What is OSMEA APIs?

**OSMEA APIs** is a comprehensive Dart/Flutter package for robust API integration and network management. It provides everything you need to seamlessly connect with any REST or GraphQL API with minimal configuration.

### ✨ **Key Features**

- **🔌 Universal API Layer** - Works with any REST or GraphQL API
- **⚡ Zero Configuration** - Get started in minutes with sensible defaults
- **🛡️ Built-in Error Handling** - Robust error management out of the box
- **🔧 Dependency Injection** - Clean, testable, and modular architecture
- **📝 Comprehensive Logging** - Debug and monitor API calls effortlessly

---

## 🚀 Quick Start

### 1. **Add to your `pubspec.yaml`:**
```yaml
dependencies:
  osmea_apis:
    git:
      url: https://github.com/masterfabric-mobile/osmea.git
      path: packages/apis
```

### 2. **Configure Dependency Injection:**
```dart
import 'package:osmea_apis/di/config/config_di.config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}
```

### 3. **Make API Calls:**
```dart
import 'package:osmea_apis/apis.dart';

class ProductService {
  final ApiClient _apiClient = getIt<ApiClient>();
  
  Future<List<Product>> getProducts() async {
    final response = await _apiClient.get('/products');
    return response.data.map((json) => Product.fromJson(json)).toList();
  }
}
```

---

## 🛠️ Technology Stack

- **Dart 2.17+** - Type-safe programming language
- **Dio 5.0+** - Powerful HTTP client for Dart
- **GetIt 7.0+** - Service locator and dependency injection
- **Injectable 2.0+** - Code generation for dependency injection

---

## 📦 Core Features

### 🌐 **Network Layer**
- **Dio-based HTTP client** with interceptors and logging
- **REST & GraphQL support** for all API types
- **Custom interceptors** for authentication and error handling
- **Request/response logging** for debugging and monitoring
- **Timeout and retry** configuration

### 🔧 **Dependency Injection**
- **GetIt integration** for service locator pattern
- **Injectable code generation** for automatic DI setup
- **Modular architecture** for easy testing and maintenance
- **Service registration** with environment-specific configuration

### 📝 **Logging & Debugging**
- **Comprehensive logging** for all HTTP requests and responses
- **Error tracking** with detailed error information
- **Performance monitoring** with request timing
- **Debug mode** for development and testing

### 🛡️ **Error Handling**
- **Centralized error management** with custom error types
- **Network error handling** for connectivity issues
- **API error parsing** for structured error responses
- **Retry mechanisms** for transient failures

---

## 📁 Project Structure

```bash
packages/apis/
├── 📦 lib/                          # Source code
│   ├── apis.dart                    # Main entry point
│   ├── di/                          # Dependency injection
│   │   └── config/                  # DI configuration
│   ├── dio_config/                  # HTTP client setup
│   │   ├── api_dio_client.dart      # Main Dio client
│   │   ├── dio_logger.dart          # Logging configuration
│   │   └── interceptors/            # Custom interceptors
│   ├── network/                     # Network layer
│   │   ├── common/                  # Shared utilities
│   │   └── remote/                  # API implementations
│   └── models/                      # Data models
├── 🧪 test/                         # Unit and integration tests
├── 📋 build.yaml                    # Build configuration
├── 🔧 codegen.yaml                  # Code generation config
└── 📄 pubspec.yaml                  # Package dependencies
```

---

## 🎯 Use Cases

### 📱 **Mobile Apps**
- **Backend Communication** - API calls and data synchronization
- **Authentication** - OAuth 2.0 and custom auth flows
- **Data Fetching** - Efficient data loading and caching
- **Error Handling** - Robust error management

### 🌐 **Web Applications**
- **RESTful APIs** - Standard REST API communication
- **GraphQL** - Modern GraphQL query language
- **Real-time Data** - WebSocket and streaming support
- **Cross-origin Requests** - CORS handling

### 🛠️ **Custom Integrations**
- **Third-party APIs** - External service integration
- **Microservices** - Service-to-service communication
- **Data Synchronization** - Multi-platform data sync
- **API Testing** - Automated API testing

---

## 🛠️ Development Setup

```bash
# Install dependencies
flutter pub get

# Generate dependency injection code
flutter packages pub run build_runner build

# Run tests
flutter test

# Build for production
flutter build apk --release
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
- **Documentation**: Update docs for API changes
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

[⬆ Back to Top](#osmea-apis-)

</div>