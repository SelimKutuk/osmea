# OSMEA Storybook 📖

<div align="center">

[![Version](https://img.shields.io/badge/version-1.0.0-2D3748?style=for-the-badge&logo=dart&logoColor=white&labelColor=1A202C)](https://github.com/masterfabric-mobile/osmea)
[![Platform](https://img.shields.io/badge/platform-Flutter-2D3748?style=for-the-badge&logo=flutter&logoColor=white&labelColor=1A202C)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2D3748?style=for-the-badge&logo=dart&logoColor=white&labelColor=1A202C)](https://dart.dev)
[![Storybook](https://img.shields.io/badge/Storybook-2D3748?style=for-the-badge&logo=storybook&logoColor=white&labelColor=1A202C)](https://storybook.js.org)

</div>

<div align="center">

**"Interactive Component Documentation & Playground"**

[📚 Documentation](https://github.com/masterfabric-mobile/osmea/tree/dev/projects/storybook) • [🐛 Report Issues](https://github.com/masterfabric-mobile/osmea/issues) • [💬 Discussions](https://github.com/masterfabric-mobile/osmea/discussions)

</div>

---

## 🌟 What is OSMEA Storybook?

**OSMEA Storybook** is an interactive playground and documentation hub for all OSMEA Components. It provides a comprehensive environment to explore, test, and develop UI components in isolation with live property controls, device frames, and modular stories.

### ✨ **Key Features**

- **🎮 Interactive Playground** - Live component demos with real-time property controls
- **📱 Device Previews** - Mobile, tablet, and desktop device frame previews
- **🧩 Modular Structure** - Each component has its own showcase and examples
- **⚡ Rapid Development** - Templates and scripts for quick component story creation
- **🔍 Structure Validation** - Automated validation for consistency across stories

---

## 🚀 Live Demo

<div align="center">

> **Explore OSMEA Components Interactively**  
> 🌐 **Coming Soon - Live Storybook**

*Interactive playground showcasing all OSMEA components with real-time controls and device previews*

</div>

---

## ✨ What's Inside?

### 🎨 **Component Showcase**

<table>
<tr>
<td width="50%">

#### **Basic Components**
- 🎯 **Buttons** - Primary, secondary, outline variants
- 📝 **Text & Typography** - Rich text formatting
- 🏷️ **Badges & Chips** - Status indicators
- 👤 **Avatars** - User profile images
- 📄 **Cards** - Information containers

#### **Form Components**
- 📝 **Input Fields** - Text fields with validation
- ☑️ **Checkboxes & Radio** - Selection controls
- 🔄 **Switches & Toggles** - Binary state controls
- 📋 **Dropdowns** - Selection menus
- 📊 **Steppers** - Multi-step navigation

</td>
<td width="50%">

#### **Layout Components**
- 📦 **Containers** - Flexible layout containers
- 🔲 **Grid System** - Row, Column, Stack layouts
- 📏 **Spacing** - Padding, Margin utilities
- 🎯 **Alignment** - Center, Align, Positioned
- 🔧 **Flexible Layouts** - Expanded, Flexible sizing

#### **Advanced Components**
- ⏳ **Loading Indicators** - Spinners and progress bars
- 🍞 **Toast Notifications** - Success, error messages
- 📊 **Progress Indicators** - Linear and circular progress
- ⚠️ **Alerts & Dialogs** - Modal confirmations

</td>
</tr>
</table>

### 🛠️ **Development Tools**

<table>
<tr>
<td width="50%">

#### **Interactive Features**
- 🎮 **Live Controls** - Real-time property adjustments
- 📱 **Device Frames** - Mobile, tablet, desktop previews
- 🎨 **Color Picker** - Interactive color selection
- 🔗 **URL Launcher** - External link handling
- 📤 **Share Helper** - Component sharing utilities

#### **Documentation**
- 📖 **Usage Guidelines** - Best practices and examples
- 🎯 **Variants** - All component variations
- 💡 **Code Examples** - Copy-paste ready code
- 🔍 **Search & Filter** - Find components quickly

</td>
<td width="50%">

#### **Development Tools**
- 🧩 **Modular Stories** - Organized component structure
- 📝 **Templates** - Quick story creation
- ✅ **Validation** - Structure compliance checking
- 🔧 **Scripts** - Automated development tools
- 📊 **Analytics** - Usage tracking and insights

#### **Team Collaboration**
- 👥 **Team Sharing** - Share interactive examples
- 📋 **Consistency** - Ensure UI kit uniformity
- 🎨 **Design System** - Centralized component library
- 📚 **Documentation** - Living documentation

</td>
</tr>
</table>

---

## 🛠️ Technology Stack

- **Flutter 2.17+** - Cross-platform UI framework
- **Dart 2.17+** - Type-safe programming language
- **Storybook Flutter** - Component documentation tool
- **Device Frame** - Device frame previews
- **Color Picker** - Interactive color selection
- **URL Launcher** - External link handling
- **Provider** - State management
- **Intl** - Internationalization support

---

## 📁 Project Structure

```bash
projects/storybook/
├── 📦 lib/                          # Source code
│   ├── main.dart                    # Application entry point
│   ├── components/                  # Component stories
│   │   ├── button_test_modular/     # Button component stories
│   │   ├── badge_test_modular/      # Badge component stories
│   │   ├── card_test_modular/       # Card component stories
│   │   └── ...                      # 450+ component stories
│   ├── pages/                       # Application pages
│   │   ├── home_page.dart           # Main navigation
│   │   ├── component_page.dart      # Component showcase
│   │   └── settings_page.dart       # Settings and configuration
│   ├── config/                      # Configuration files
│   │   ├── storybook_config.dart    # Storybook configuration
│   │   ├── theme_config.dart        # Theme settings
│   │   └── device_config.dart       # Device frame settings
│   └── _templates/                  # Development templates
│       ├── create_component_structure.sh # Component scaffolding
│       ├── storybook_validator.dart # Structure validation
│       └── ...                      # Template files
├── 🧪 test/                         # Unit and integration tests
├── 🌐 web/                          # Web platform files
├── 📱 android/                      # Android platform files
├── 🍎 ios/                          # iOS platform files
├── 📄 pubspec.yaml                  # Package dependencies
└── 📖 README.md                     # This file
```

---

## 🚀 Quick Start

### 📋 Prerequisites

- **Flutter SDK** (2.17.0 or higher)
- **Dart SDK** (2.17.0 or higher)
- **Android Studio** or **VS Code** with Flutter extensions
- **Git** for version control

### 📦 Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/masterfabric-mobile/osmea.git
   cd osmea/projects/storybook
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the storybook:**
   ```bash
   # Run on web (recommended)
   flutter run -d chrome
   
   # Run on mobile
   flutter run
   
   # Run on specific device
   flutter run -d <device-id>
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

## 🧩 Component Stories

### **Modular Structure**

Each component has its own modular folder with:

- **Showcase Widgets** - Live demos and examples
- **Sections** - Usage, variants, and guidelines
- **Knobs** - Real-time property controls
- **Data & Utils** - Test data and helper functions
- **Templates** - Reusable story templates

### **Creating New Stories**

```bash
# Navigate to templates directory
cd lib/_templates

# Create new component structure
./create_component_structure.sh <component_name>

# Validate all stories
dart storybook_validator.dart
```

### **Story Structure**

```dart
// Example component story
class ButtonStory extends Story {
  @override
  String get name => 'Button';
  
  @override
  Widget build(BuildContext context) {
    return StorybookScaffold(
      title: 'Button Component',
      sections: [
        UsageSection(),
        VariantsSection(),
        GuidelinesSection(),
      ],
    );
  }
}
```

---

## 🎯 Use Cases

### 👨‍💻 **Developers**
- **Component Testing** - Test components with different configurations
- **Code Examples** - Learn how to use OSMEA components
- **Best Practices** - See modern Flutter development patterns
- **Integration** - Understand component integration

### 🎨 **Designers**
- **UI Exploration** - Explore component variations and themes
- **Design System** - Understand the design system structure
- **Prototyping** - Use components for rapid prototyping
- **Consistency** - Ensure design consistency across projects

### 👥 **Teams**
- **Documentation** - Living documentation for components
- **Collaboration** - Share interactive examples
- **Quality Assurance** - Ensure component consistency
- **Onboarding** - Help new team members learn the system

---

## 🛠️ Development

### **Code Generation**
```bash
# Generate component stories
flutter packages pub run build_runner build

# Validate story structure
dart lib/_templates/storybook_validator.dart

# Run tests
flutter test
```

### **Building**
```bash
# Build for web
flutter build web --release

# Build for mobile
flutter build apk --release
flutter build ios --release
```

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### **Development Guidelines**
- **Code Style**: Follow Dart/Flutter conventions
- **Testing**: Write tests for new stories
- **Documentation**: Update docs for component changes
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

[⬆ Back to Top](#osmea-storybook-)

</div>
