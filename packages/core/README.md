# OSMEA Core 🔧

<div align="center">

[![Version](https://img.shields.io/badge/version-1.0.0-2D3748?style=for-the-badge&logo=flutter&logoColor=white&labelColor=1A202C)](https://github.com/masterfabric-mobile/osmea)
[![Platform](https://img.shields.io/badge/platform-Flutter-2D3748?style=for-the-badge&logo=flutter&logoColor=white&labelColor=1A202C)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2D3748?style=for-the-badge&logo=dart&logoColor=white&labelColor=1A202C)](https://dart.dev)
[![BLoC](https://img.shields.io/badge/BLoC-2D3748?style=for-the-badge&logo=bloc&logoColor=white&labelColor=1A202C)](https://bloclibrary.dev)
[![Firebase](https://img.shields.io/badge/Firebase-2D3748?style=for-the-badge&logo=firebase&logoColor=white&labelColor=1A202C)](https://firebase.google.com)

</div>

<div align="center">

**"Foundation Utilities and Shared Logic for Flutter Apps"**

[📚 Documentation](https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core) • [🐛 Report Issues](https://github.com/masterfabric-mobile/osmea/issues) • [💬 Discussions](https://github.com/masterfabric-mobile/osmea/discussions)

</div>

---

## 🌟 What is OSMEA Core?

**OSMEA Core** is a comprehensive Flutter package providing essential utilities, base classes, and shared logic for building scalable Flutter applications. It includes state management, dependency injection, localization, storage, and Firebase integration.

### ✨ **Key Features**

- **🏗️ Base Architecture** - BLoC pattern with base classes and mixins
- **🔧 Dependency Injection** - Injectable-based service registration
- **🌐 Localization** - Multi-language support with Slang
- **💾 Storage** - Local storage, database, and shared preferences
- **🔥 Firebase Integration** - Analytics, remote config, and core services
- **🛠️ Utilities** - Device info, permissions, file handling, and more

---

## 🚀 Quick Start

### 1. **Add to your `pubspec.yaml`:**
```yaml
dependencies:
  core:
    git:
      url: https://github.com/masterfabric-mobile/osmea.git
      path: packages/core
```

### 2. **Configure Dependency Injection:**
```dart
import 'package:core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Configure dependency injection
  await configureDependencies();
  
  runApp(MyApp());
}
```

### 3. **Use Core Services:**
```dart
import 'package:core/core.dart';

class MyService {
  final LocalStorageHelper _storage = getIt<LocalStorageHelper>();
  final Logger _logger = getIt<Logger>();
  
  Future<void> saveData(String key, String value) async {
    await _storage.setString(key, value);
    _logger.i('Data saved: $key = $value');
  }
}
```

---

## 🛠️ Technology Stack

- **Flutter 3.19+** - Cross-platform UI framework
- **Dart 2.17+** - Type-safe programming language
- **BLoC 9.1+** - State management pattern
- **Injectable 2.3+** - Dependency injection
- **Firebase** - Analytics, remote config, and core services
- **Slang 4.8+** - Localization and internationalization

---

## 📦 Core Features

### 🏗️ **Base Architecture**
- **BaseViewBloc** - Abstract BLoC-based view with state management
- **BaseViewCubit** - Abstract Cubit-based view with state management
- **MasterView** - Unified view management system with navigation
- **MasterApp** - Main application wrapper with theme and routing
- **Mixins** - Reusable functionality across components

### 🔧 **Dependency Injection**
- **Injectable Integration** - Automatic service registration
- **Service Locator** - GetIt-based dependency resolution
- **Environment Configuration** - Environment-specific setup
- **Code Generation** - Automated DI configuration

### 🌐 **Localization**
- **Multi-language Support** - English and extensible
- **Slang Integration** - Type-safe localization
- **Dynamic Language Switching** - Runtime language changes
- **Pluralization** - Advanced text handling

### 💾 **Storage & Data**
- **Local Storage** - SharedPreferences wrapper
- **Database** - SQLite integration with Sqflite
- **File Management** - File download and storage
- **Data Persistence** - Reliable data storage

### 🔥 **Firebase Integration**
- **Analytics** - User behavior tracking
- **Remote Config** - Dynamic configuration
- **Core Services** - Firebase initialization
- **Crash Reporting** - Error tracking and reporting

### 🛠️ **Utilities & Helpers**
- **DeviceInfoHelper** - Device and platform information
- **PermissionHelper** - Runtime permission handling
- **UrlLauncherHelper** - External link handling
- **FileSharingHelper** - Cross-platform sharing
- **LocalNotificationHelper** - Local notification support
- **StorageHelper** - Local storage management
- **NetworkHelper** - Network connectivity and status
- **ValidationHelper** - Input validation utilities
- **FormatHelper** - Text and data formatting
- **ThemeHelper** - Theme and styling utilities
- **DateHelper** - Date and time utilities
- **AssetConfigHelper** - Load app configuration from assets

---

## 📁 Project Structure

```bash
packages/core/
├── 📦 lib/                          # Source code
│   ├── core.dart                    # Main export file
│   ├── firebase_options.dart        # Firebase configuration
│   └── src/
│       ├── base/                    # Base classes and architecture
│       │   ├── base_view_bloc.dart  # Base BLoC classes
│       │   ├── base_view_cubit.dart # Base Cubit classes
│       │   ├── master_view.dart     # Master view management
│       │   ├── master_app.dart      # Master app wrapper
│       │   └── mixins/              # Reusable mixins
│       ├── config/                  # Configuration files
│       │   ├── config_di.dart       # Dependency injection config
│       │   ├── app_config.dart      # App configuration
│       │   └── environment.dart     # Environment settings
│       ├── helper/                  # Utility helpers
│       │   ├── device_info_helper.dart      # Device information
│       │   ├── permission_helper.dart       # Permission management
│       │   ├── url_launcher_helper.dart     # URL launching
│       │   ├── file_sharing_helper.dart     # File sharing
│       │   ├── local_notification_helper.dart # Notifications
│       │   ├── storage_helper.dart          # Local storage
│       │   ├── network_helper.dart          # Network status
│       │   ├── validation_helper.dart       # Input validation
│       │   ├── format_helper.dart           # Text formatting
│       │   ├── theme_helper.dart            # Theme utilities
│       │   ├── date_helper.dart             # Date utilities
│       │   └── asset_config_helper.dart     # Asset configuration
│       ├── models/                  # Data models
│       │   ├── device_info.dart     # Device information model
│       │   ├── app_config.dart      # App configuration model
│       │   ├── error_handling_models.dart
│       │   └── base_models.dart     # Base model classes
│       ├── views/                   # Base views
│       │   ├── splash/              # Splash screen
│       │   ├── onboarding/          # Onboarding flow
│       │   └── error_handling/      # Error handling
│       └── resources/               # Localization resources
│           └── translations/        # Generated translations
├── 📁 assets/                       # Assets and configurations
│   ├── app_config.json              # App configuration
│   └── i18n/                        # Localization files
│       └── en.json                  # English translations
├── 📁 gen/                          # Generated files
│   ├── translations/                # Generated translation files
│   └── di/                          # Generated DI files
└── 📄 pubspec.yaml                  # Package dependencies
```

---

## 🏗️ Core Architecture Explained

### **BaseViewBloc & BaseViewCubit**
These are abstract base classes that provide a consistent structure for views using BLoC pattern:

- **BaseViewBloc** - For complex state management with BLoC
- **BaseViewCubit** - For simpler state management with Cubit
- **Automatic State Handling** - Built-in loading, success, and error states
- **Lifecycle Management** - onInit, onDispose, and other lifecycle methods
- **Consistent API** - Same interface across all views

### **MasterView & MasterApp**
Unified view management system for consistent app structure:

- **MasterApp** - Main application wrapper with theme and routing
- **MasterView** - Unified view management with navigation
- **Route Management** - Centralized routing configuration
- **Theme Integration** - Consistent theming across the app
- **Navigation Handling** - Built-in navigation and route changes

### **Mixins & Base Classes**
Reusable functionality across components:

- **MasterViewMixins** - Common view functionality
- **MasterViewCubitMixins** - Cubit-specific mixins
- **Base Classes** - Abstract widgets and base functionality
- **Consistent Patterns** - Standardized development patterns

---

## 🔧 Detailed Helper Documentation

### 📱 **DeviceInfoHelper**
Comprehensive device information and capabilities:
```dart
final deviceInfo = DeviceInfoHelper();
final info = await deviceInfo.getDeviceInfo();

// Device Information
print('Device Model: ${info.model}');
print('OS Version: ${info.osVersion}');
print('Platform: ${info.platform}');
print('Device ID: ${info.deviceId}');
print('Is Physical Device: ${info.isPhysicalDevice}');

// Platform-specific info
if (info.platform == Platform.android) {
  print('Android SDK: ${info.androidSdkVersion}');
} else if (info.platform == Platform.iOS) {
  print('iOS Version: ${info.iosVersion}');
}
```

### 🔐 **PermissionHelper**
Runtime permission management with detailed status:
```dart
final permissionHelper = PermissionHelper();

// Check permission status
PermissionStatus status = await permissionHelper.checkPermissionStatus(Permission.camera);
print('Camera permission: $status');

// Request permission with explanation
bool granted = await permissionHelper.requestPermission(
  Permission.camera,
  showRationale: true,
  rationaleMessage: 'Camera access is needed to take photos',
);

// Request multiple permissions
Map<Permission, PermissionStatus> results = await permissionHelper.requestMultiplePermissions([
  Permission.camera,
  Permission.storage,
  Permission.location,
]);
```

### 🌐 **UrlLauncherHelper**
External link and app launching with error handling:
```dart
// Launch URL with fallback
bool launched = await UrlLauncherHelper.launchURL(
  'https://osmea.dev',
  mode: LaunchMode.externalApplication,
);

// Launch email with pre-filled content
await UrlLauncherHelper.launchEmail(
  'support@osmea.dev',
  subject: 'Support Request',
  body: 'Hello, I need help with...',
);

// Launch phone with international format
await UrlLauncherHelper.launchPhone('+1234567890');

// Launch SMS
await UrlLauncherHelper.launchSMS('+1234567890', 'Hello from OSMEA!');
```

### 📤 **FileSharingHelper**
Cross-platform content sharing with multiple formats:
```dart
// Share text content
await FileSharingHelper.shareText(
  'Hello from OSMEA!',
  subject: 'OSMEA App',
);

// Share file with MIME type detection
await FileSharingHelper.shareFile(
  '/path/to/file.pdf',
  mimeType: 'application/pdf',
);

// Share image with compression
await FileSharingHelper.shareImage(
  '/path/to/image.png',
  quality: 80,
  maxWidth: 1920,
);

// Share multiple files
await FileSharingHelper.shareFiles([
  '/path/to/file1.pdf',
  '/path/to/file2.jpg',
]);
```

### 🔔 **LocalNotificationHelper**
Local notification management with scheduling:
```dart
// Initialize notification service
await LocalNotificationHelper.initialize();

// Show immediate notification
await LocalNotificationHelper.showNotification(
  id: 1,
  title: 'OSMEA Notification',
  body: 'Your order has been processed!',
  payload: 'order_123',
  importance: NotificationImportance.high,
);

// Schedule notification
await LocalNotificationHelper.scheduleNotification(
  id: 2,
  title: 'Reminder',
  body: 'Don\'t forget to check your order!',
  scheduledDate: DateTime.now().add(Duration(hours: 1)),
);

// Cancel notification
await LocalNotificationHelper.cancelNotification(1);
```

### 💾 **StorageHelper**
Local storage management with encryption support:
```dart
final storage = StorageHelper();

// Initialize with encryption
await storage.initialize(encrypt: true, encryptionKey: 'your-key');

// Store data
await storage.setString('user_id', '12345');
await storage.setInt('user_age', 25);
await storage.setBool('is_premium', true);
await storage.setDouble('user_rating', 4.5);

// Retrieve data with defaults
String userId = await storage.getString('user_id', defaultValue: '');
int userAge = await storage.getInt('user_age', defaultValue: 0);
bool isPremium = await storage.getBool('is_premium', defaultValue: false);

// Store complex objects
await storage.setObject('user_profile', {
  'name': 'John Doe',
  'email': 'john@example.com',
  'preferences': {'theme': 'dark', 'language': 'en'}
});

// Retrieve complex objects
Map<String, dynamic>? profile = await storage.getObject('user_profile');

// Clear all data
await storage.clear();
```

### 🌐 **NetworkHelper**
Network connectivity and status monitoring:
```dart
final networkHelper = NetworkHelper();

// Check connectivity
bool isConnected = await networkHelper.isConnected();
print('Is connected: $isConnected');

// Get connection type
String connectionType = await networkHelper.getConnectionType();
print('Connection type: $connectionType'); // wifi, mobile, ethernet, etc.

// Monitor connectivity changes
networkHelper.onConnectivityChanged.listen((bool isConnected) {
  print('Connectivity changed: $isConnected');
});

// Check if connected to specific network
bool isWifiConnected = await networkHelper.isWifiConnected();
bool isMobileConnected = await networkHelper.isMobileConnected();
```

### ✅ **ValidationHelper**
Input validation utilities with detailed error messages:
```dart
// Email validation
ValidationResult emailResult = ValidationHelper.validateEmail('user@example.com');
if (!emailResult.isValid) {
  print('Email error: ${emailResult.errorMessage}');
}

// Phone validation with country code
ValidationResult phoneResult = ValidationHelper.validatePhone('+1234567890');
if (!phoneResult.isValid) {
  print('Phone error: ${phoneResult.errorMessage}');
}

// Password validation with strength check
ValidationResult passwordResult = ValidationHelper.validatePassword(
  'password123',
  minLength: 8,
  requireUppercase: true,
  requireNumbers: true,
  requireSpecialChars: true,
);

// Credit card validation
ValidationResult cardResult = ValidationHelper.validateCreditCard('4111111111111111');
if (cardResult.isValid) {
  print('Card type: ${cardResult.cardType}'); // visa, mastercard, etc.
}
```

### 🎨 **FormatHelper**
Text and data formatting with localization support:
```dart
// Currency formatting
String formattedPrice = FormatHelper.formatCurrency(99.99, 'USD');
String formattedPriceTR = FormatHelper.formatCurrency(99.99, 'TRY');
print('Price: $formattedPrice'); // $99.99
print('Price TR: $formattedPriceTR'); // ₺99,99

// Date formatting
String formattedDate = FormatHelper.formatDate(DateTime.now(), 'yyyy-MM-dd');
String relativeDate = FormatHelper.formatRelativeDate(DateTime.now().subtract(Duration(days: 2)));
print('Date: $formattedDate'); // 2024-01-15
print('Relative: $relativeDate'); // 2 days ago

// Phone number formatting
String formattedPhone = FormatHelper.formatPhoneNumber('1234567890', 'US');
print('Phone: $formattedPhone'); // (123) 456-7890

// File size formatting
String fileSize = FormatHelper.formatFileSize(1024 * 1024 * 5);
print('File size: $fileSize'); // 5.0 MB
```

### 🎨 **ThemeHelper**
Theme and styling utilities with responsive design:
```dart
final themeHelper = ThemeHelper();

// Get theme colors
Color primaryColor = themeHelper.getPrimaryColor();
Color secondaryColor = themeHelper.getSecondaryColor();
Color backgroundColor = themeHelper.getBackgroundColor();

// Get text styles
TextStyle headingStyle = themeHelper.getHeadingStyle();
TextStyle bodyStyle = themeHelper.getBodyStyle();
TextStyle captionStyle = themeHelper.getCaptionStyle();

// Get spacing
EdgeInsets defaultPadding = themeHelper.getDefaultPadding();
EdgeInsets smallPadding = themeHelper.getSmallPadding();
EdgeInsets largePadding = themeHelper.getLargePadding();

// Get responsive values
double screenWidth = themeHelper.getScreenWidth();
double screenHeight = themeHelper.getScreenHeight();
bool isTablet = themeHelper.isTablet();
bool isPhone = themeHelper.isPhone();
```

### 📅 **DateHelper**
Date and time utilities with timezone support:
```dart
final dateHelper = DateHelper();

// Relative time formatting
String relativeTime = dateHelper.getRelativeTime(DateTime.now().subtract(Duration(hours: 2)));
print('Relative time: $relativeTime'); // 2 hours ago

// Date comparisons
bool isToday = dateHelper.isToday(DateTime.now());
bool isYesterday = dateHelper.isYesterday(DateTime.now().subtract(Duration(days: 1)));
bool isThisWeek = dateHelper.isThisWeek(DateTime.now());

// Time formatting
String formattedTime = dateHelper.formatTime(DateTime.now(), 'HH:mm');
String formattedDateTime = dateHelper.formatDateTime(DateTime.now(), 'yyyy-MM-dd HH:mm');

// Timezone handling
DateTime utcTime = dateHelper.toUTC(DateTime.now());
DateTime localTime = dateHelper.toLocal(utcTime);
```

### ⚙️ **AssetConfigHelper**
Load app configuration from assets with validation:
```dart
// Load configuration
final config = await AssetConfigHelper.loadConfig();

// Get configuration values
String apiUrl = config.getString('api_url', defaultValue: 'https://api.osmea.dev');
bool isDebug = config.getBool('debug_mode', defaultValue: false);
int timeout = config.getInt('timeout_seconds', defaultValue: 30);
List<String> features = config.getStringList('enabled_features', defaultValue: []);

// Validate configuration
bool isValid = await AssetConfigHelper.validateConfig(config);
if (!isValid) {
  print('Configuration validation failed');
}

// Get environment-specific config
final envConfig = await AssetConfigHelper.getEnvironmentConfig('production');
```

---

## 💡 Usage Examples

### MasterApp Setup
```dart
class MyApp extends MasterApp {
  @override
  Widget build(BuildContext context) {
    return MasterView(
      title: 'My Application',
      theme: ThemeData.light(),
      routes: {
        '/': (context) => HomeView(),
        '/profile': (context) => ProfileView(),
        '/settings': (context) => SettingsView(),
      },
      initialRoute: '/',
    );
  }
}
```

### BaseViewBloc Implementation
```dart
class MyView extends BaseViewBloc<MyCubit, MyState> {
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My View')),
      body: BlocBuilder<MyCubit, MyState>(
        builder: (context, state) {
          return state.when(
            loading: () => CircularProgressIndicator(),
            success: (data) => Text('Data: $data'),
            error: (error) => Text('Error: $error'),
          );
        },
      ),
    );
  }
  
  @override
  void onInit() {
    // Initialize view-specific logic
    cubit.loadData();
  }
}
```

### BaseViewCubit Implementation
```dart
class MyView extends BaseViewCubit<MyCubit, MyState> {
  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My View')),
      body: BlocBuilder<MyCubit, MyState>(
        builder: (context, state) {
          return state.when(
            loading: () => CircularProgressIndicator(),
            success: (data) => Text('Data: $data'),
            error: (error) => Text('Error: $error'),
          );
        },
      ),
    );
  }
}
```

### MasterView with Navigation
```dart
class MyMasterView extends MasterView {
  @override
  Widget build(BuildContext context) {
    return MasterView(
      title: 'My App',
      theme: ThemeData.light(),
      routes: {
        '/': (context) => HomeView(),
        '/profile': (context) => ProfileView(),
        '/settings': (context) => SettingsView(),
      },
      initialRoute: '/',
      onRouteChanged: (route) {
        // Handle route changes
        print('Navigated to: $route');
      },
    );
  }
}
```

### Local Storage Usage
```dart
class UserService {
  final LocalStorageHelper _storage = getIt<LocalStorageHelper>();
  
  Future<void> saveUser(User user) async {
    await _storage.setString('user_id', user.id);
    await _storage.setString('user_name', user.name);
  }
  
  Future<User?> getUser() async {
    final id = await _storage.getString('user_id');
    final name = await _storage.getString('user_name');
    
    if (id != null && name != null) {
      return User(id: id, name: name);
    }
    return null;
  }
}
```

### Complete Helper Integration Example
```dart
class MyFeatureService {
  final DeviceInfoHelper _deviceInfo = getIt<DeviceInfoHelper>();
  final PermissionHelper _permission = getIt<PermissionHelper>();
  final NetworkHelper _network = getIt<NetworkHelper>();
  final ValidationHelper _validation = getIt<ValidationHelper>();
  final FormatHelper _format = getIt<FormatHelper>();

  Future<bool> initializeFeature() async {
    // Check device capabilities
    final deviceInfo = await _deviceInfo.getDeviceInfo();
    if (!deviceInfo.isSupported) return false;

    // Check network connectivity
    if (!await _network.isConnected()) return false;

    // Request necessary permissions
    final hasPermission = await _permission.requestPermission(Permission.camera);
    if (!hasPermission) return false;

    return true;
  }

  Future<String> processUserInput(String input) async {
    // Validate input
    if (!_validation.isValidEmail(input)) {
      throw ValidationException('Invalid email format');
    }

    // Format the input
    return _format.formatEmail(input);
  }
}
```

### MasterView with Complete Setup
```dart
class MyMasterView extends MasterView {
  @override
  Widget build(BuildContext context) {
    return MasterView(
      title: 'OSMEA App',
      theme: ThemeData.light(),
      routes: {
        '/': (context) => HomeView(),
        '/profile': (context) => ProfileView(),
        '/settings': (context) => SettingsView(),
      },
      initialRoute: '/',
      onRouteChanged: (route) {
        // Track navigation with analytics
        FirebaseAnalytics.instance.logEvent(
          name: 'navigation',
          parameters: {'route': route},
        );
      },
      onAppStart: () async {
        // Initialize core services
        await _initializeCoreServices();
      },
    );
  }

  Future<void> _initializeCoreServices() async {
    // Load app configuration
    final config = await AssetConfigHelper.loadConfig();
    
    // Initialize storage
    final storage = getIt<StorageHelper>();
    await storage.initialize();
    
    // Setup notifications
    final notificationHelper = getIt<LocalNotificationHelper>();
    await notificationHelper.initialize();
  }
}
```

### Localization Usage
```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(context.t.welcome), // Localized text
        Text(context.t.hello(name: 'John')), // With parameters
        Text(context.t.itemCount(count: 5)), // Pluralization
      ],
    );
  }
}
```

### Permission Handling
```dart
class PermissionService {
  final PermissionHandlerHelper _permission = getIt<PermissionHandlerHelper>();
  
  Future<bool> requestCameraPermission() async {
    final status = await _permission.requestPermission(Permission.camera);
    return status == PermissionStatus.granted;
  }
  
  Future<bool> checkStoragePermission() async {
    final status = await _permission.checkPermission(Permission.storage);
    return status == PermissionStatus.granted;
  }
}
```

---

## 🎯 Use Cases

### 📱 **Mobile Apps**
- **State Management** - BLoC pattern for complex state
- **Data Persistence** - Local storage and database
- **User Experience** - Onboarding and splash screens
- **Error Handling** - Centralized error management

### 🌐 **Web Applications**
- **Configuration** - Environment-specific settings
- **Analytics** - User behavior tracking
- **Localization** - Multi-language support
- **Storage** - Client-side data persistence

### 🖥️ **Desktop Applications**
- **File Management** - File operations and sharing
- **Device Integration** - System information and permissions
- **Cross-platform** - Consistent behavior across platforms
- **Performance** - Optimized for desktop environments

---

## 🛠️ Development Setup

```bash
# Install dependencies
flutter pub get

# Generate code (DI, localization, etc.)
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

[⬆ Back to Top](#osmea-core-)

</div>
