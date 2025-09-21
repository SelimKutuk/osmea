# 📋 OSMEA Cursor Rules

This directory contains Cursor IDE rules for the OSMEA project. Each file defines customized development rules for specific areas or packages.

## 📁 File Structure

```
rules/
├── README.md                           # This file
├── osmea-packages-general.cursorrules  # General package development rules
├── osmea-components-ui.cursorrules     # UI components development rules
├── osmea-sizer-extensions.cursorrules  # Sizer extensions and responsive design rules
├── osmea-text-system.cursorrules       # Unified text system (extensions, styles, components)
├── osmea-color-system.cursorrules      # Color system and theming rules
├── osmea-core-foundation.cursorrules   # Foundation infrastructure rules
├── osmea-apis-network.cursorrules      # API and network layer rules
└── osmea-website-nextjs.cursorrules    # Website (Next.js) rules
```

## 🎯 Usage

### 1. General Package Rules
**File:** `osmea-packages-general.cursorrules`
- 📦 Package structure and organization
- 🔄 Dependency management
- 📚 Documentation standards
- 🧪 Testing strategies
- 📦 Publishing processes

### 2. UI Components Rules
**File:** `osmea-components-ui.cursorrules`
- 🎨 50+ UI component development
- 📱 Responsive design standards
- ♿ Accessibility requirements
- 🎨 Theme management
- 📱 Mobile-first approach

### 3. Sizer Extensions Rules
**File:** `osmea-sizer-extensions.cursorrules`
- 📱 Responsive design utilities
- 🔲 Padding & margin standards
- ⭕ Border radius consistency
- ⏱️ Animation duration patterns
- 📏 Spacing and sizing guidelines
- 🎯 Alignment and layout utilities

### 4. Text System Rules
**File:** `osmea-text-system.cursorrules`
- 🔤 Typography and font management
- 📝 Text styling and decoration
- 📏 Letter and word spacing
- 🎨 Font features and variations
- 📱 Responsive typography
- ♿ Accessibility considerations
- 📝 Unified text component system
- 🎨 Text style integration patterns
- 🔧 Specialized text components

### 5. Color System Rules
**File:** `osmea-color-system.cursorrules`
- 🎨 Comprehensive color palette
- 🌈 Brand and semantic colors
- ⚫ Gray scale system
- 🚦 Status and theme colors
- ♿ Accessibility considerations

### 6. Foundation Infrastructure Rules
**File:** `osmea-core-foundation.cursorrules`
- 🏗️ Base classes structure
- 🔧 Dependency injection
- 🌐 Internationalization (i18n)
- 💾 Data management
- 📊 Analytics tracking
- 📱 Device utilities
- 🛣️ Routing patterns

### 7. API and Network Rules
**File:** `osmea-apis-network.cursorrules`
### 8. Website (Next.js) Rules
**File:** `osmea-website-nextjs.cursorrules`
- 🌐 Next.js App Router structure
- ♿ Web accessibility and SEO
- 🚀 Core Web Vitals & performance
- 📄 Static/SSG-first content loading

- 🛒 Shopify integration
- 🌐 WooCommerce integration
- 🔧 Dio HTTP client configuration
- ⚠️ Error handling
- 🔄 Retry logic
- 🔐 Authentication
- 📝 Logging patterns

## 🚀 Using with Cursor IDE

### Automatic Usage
Cursor IDE automatically detects and applies `.cursorrules` files in the project directory.

### Manual Usage
To apply rules for a specific area:

1. Create a `.cursorrules` file in the **project root**
2. Copy the content from the relevant rules file
3. Or use the file as a reference

### Usage Examples
```bash
# When developing UI components
cp rules/osmea-components-ui.cursorrules .cursorrules

# When working with responsive design and sizer extensions
cp rules/osmea-sizer-extensions.cursorrules .cursorrules

# When working with typography and text system
cp rules/osmea-text-system.cursorrules .cursorrules

# When developing API services
cp rules/osmea-apis-network.cursorrules .cursorrules

# When developing core utilities
cp rules/osmea-core-foundation.cursorrules .cursorrules

# When working on the website (Next.js)
cp rules/osmea-website-nextjs.cursorrules website/.cursorrules
```

## 📋 Rules Categories

### 🎨 **UI/UX Development**
- Component structure and organization
- Responsive design principles
- Accessibility standards
- Theme and styling rules

### 🏗️ **Architecture & Structure**
- Package organization
- Dependency injection
- Base classes and interfaces
- Error handling patterns

### 🌐 **Network & API**
- HTTP client configuration
- API response handling
- Authentication and security
- Retry and caching strategies

### 🧪 **Testing & Quality**
- Unit test writing rules
- Widget test strategies
- Code coverage targets
- Performance optimizations

### 📚 **Documentation**
- Code documentation standards
- README structure
- API reference format
- Example code writing

## 🔍 Code Review Checklist

Each rules file contains a specialized checklist for its area:

- [ ] **Naming Conventions** - Compliance with naming rules
- [ ] **Code Structure** - Code structure and organization
- [ ] **Documentation** - Documentation completeness
- [ ] **Testing** - Test coverage and quality
- [ ] **Performance** - Performance optimizations
- [ ] **Security** - Security measures
- [ ] **Accessibility** - Accessibility standards
- [ ] **Mobile Support** - Mobile compatibility

## 📚 Resources

### Flutter & Dart
- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Flutter Testing](https://docs.flutter.dev/testing)

### UI/UX
- [Material Design Guidelines](https://material.io/design)
- [iOS Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)
- [Flutter Widget Catalog](https://docs.flutter.dev/development/ui/widgets)

### Architecture
- [Bloc Pattern](https://bloclibrary.dev/)
- [Injectable Package](https://pub.dev/packages/injectable)
- [GoRouter](https://pub.dev/packages/go_router)

### API & Network
- [Dio HTTP Client](https://pub.dev/packages/dio)
- [Shopify Storefront API](https://shopify.dev/docs/storefront-api)
- [WooCommerce REST API](https://woocommerce.github.io/woocommerce-rest-api-docs/)

## 🤝 Contributing

To add new rules or update existing ones:

1. Edit the relevant `.cursorrules` file
2. Test the changes
3. Create a pull request
4. Go through the code review process

## 📝 Notes

- Each rules file is written in **Markdown format**
- **Emoji usage** provides visual richness
- **Code examples** show practical application
- **Checklists** define control points

---

**OSMEA Cursor Rules** - Standardize your Flutter development processes and improve quality! 🚀 