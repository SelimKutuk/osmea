# 📖 OSMEA Components Storybook

[![Flutter](https://img.shields.io/badge/Flutter-Storybook-blue?logo=flutter)](https://flutter.dev)
[![MIT License](https://img.shields.io/badge/license-MIT-green.svg)](../LICENSE)

An interactive playground and documentation hub for all [OSMEA Components](https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components).  
Explore, test, and develop UI components in isolation with live property controls, device frames, and modular stories.

---

## 🚀 Features

- **Live component demos** with real-time property controls (knobs)
- **Device frame previews** for mobile/tablet/desktop
- **Modular structure:** each component has its own showcase, sections, and examples
- **Templates & scripts** for rapid new component story creation
- **Accessibility, theming, and best practices** built-in
- **Structure validator** to ensure consistency across all stories

---

## 🏗️ Project Structure

<details>
<summary>Click to expand full structure</summary>

```
example_storybook/
├── lib/
│   ├── main.dart
│   └── storybook_test/
│       ├── appbar_test_modular/
│       ├── avatar_test_modular/
│       ├── badge_test_modular/
│       ├── button_test_modular/
│       ├── cards_test_modular/
│       ├── checkbox_test_modular/
│       ├── navbar_test_modular/
│       ├── progress_test_modular/
│       ├── radio_button_test_modular/
│       ├── switch_button_test_modular/
│       ├── text_field_test_modular/
│       ├── _templates/
│       │   ├── component_template/
│       │   ├── create_component_structure.sh
│       │   └── storybook_validator.dart
│       ├── component_registry.dart
│       ├── device_frame_test.dart
│       ├── home_page.dart
│       ├── story_config.dart
│       ├── storybook_testing.dart
│       └── storybook_theme_plugin.dart
├── web/
│   ├── favicon.png
│   ├── index.html
│   ├── manifest.json
│   └── icons/
│       ├── Icon-192.png
│       ├── Icon-512.png
│       ├── Icon-maskable-192.png
│       └── Icon-maskable-512.png
├── pubspec.yaml
└── README.md
```
</details>

---

## 🧑‍💻 Getting Started

1. **Install dependencies:**
   ```bash
   flutter pub get
   ```

2. **Run the storybook:**
   ```bash
   flutter run
   ```

3. **Try the web version:**
   ```bash
   flutter run -d chrome
   ```

---

## 🧩 Modular Component Stories

Each component has its own modular folder (e.g., `button_test_modular/`, `badge_test_modular/`) with:

- **Showcase widgets** for live demos
- **Sections** for usage, variants, and guidelines
- **Knobs** for real-time property changes
- **Data, utils, and templates** for rapid development

You can scaffold a new component story with:
```bash
cd lib/storybook_test/_templates
./create_component_structure.sh <component_name>
```

Validate all stories for structure compliance:
```bash
dart lib/storybook_test/_templates/storybook_validator.dart
```

---

## 💡 Why Use This Storybook?

- **Develop and test components in isolation**
- **Document usage, variants, and best practices**
- **Share interactive examples with your team**
- **Ensure consistency and accessibility across your UI kit**

---

## 📚 Learn More

- [OSMEA Components Documentation](https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components)
- [Main OSMEA Repo](https://github.com/masterfabric-mobile/osmea)

---

## 📄 License

> 🔐 **License:** GNU AGPL v3.0  
> 📜 This project is protected under the **GNU Affero General Public License v3.0**.  
> If you modify and deploy this project publicly, you must also **publish your changes** under the same license.

📎 Full details available in the [`LICENSE`](https://github.com/masterfabric-mobile/osmea/blob/dev/LICENSE) file.

---

**Built with ❤️ by the OSMEA Team**

© 2025 MasterFabric Mobile • Maintained by the OSMEA Engineering Team
