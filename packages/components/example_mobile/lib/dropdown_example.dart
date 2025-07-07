import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';

class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String? selectedFilled;
  String? selectedOutlined;
  String? selectedElevated;
  OsmeaDropdownItem<String>? selectedAvatar;
  OsmeaDropdownItem<String>? selectedIcon;
  final List<String> colorOptions = ['Red', 'Green', 'Blue'];
  final List<OsmeaDropdownItem<String>> avatarOptions = [
    OsmeaDropdownMenuItem.dropdownAvatarItem(
      name: 'Jane Smith',
      username: '@jane',
      value: 'jane',
      avatarUrl: 'https://randomuser.me/api/portraits/women/1.jpg',
      isOnline: true,
    ),
    OsmeaDropdownMenuItem.dropdownAvatarItem(
      name: 'John Doe',
      username: '@john',
      value: 'john',
      avatarUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
      isOnline: false,
    ),
  ];
  final List<OsmeaDropdownItem<String>> iconOptions = [
    OsmeaDropdownMenuItem.dropdownMenuItem(
        label: 'Edit', value: 'edit', icon: Icons.edit),
    OsmeaDropdownMenuItem.dropdownMenuItem(
        label: 'Delete', value: 'delete', icon: Icons.delete),
    OsmeaDropdownMenuItem.dropdownMenuItem(
        label: 'Share', value: 'share', icon: Icons.share),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Primitive Dropdown Styles')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Filled Dropdown',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            OsmeaComponents.dropdown<String>(
              items: colorOptions,
              value: selectedFilled,
              onChanged: (item) => setState(() => selectedFilled = item),
              hint: 'Select a color',
              variant: DropdownVariant.filled,
            ),
            const SizedBox(height: 24),
            const Text(
              'Outlined Dropdown',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            OsmeaComponents.dropdown<String>(
              items: colorOptions,
              value: selectedOutlined,
              onChanged: (item) => setState(() => selectedOutlined = item),
              hint: 'Select a color',
              variant: DropdownVariant.outlined,
            ),
            const SizedBox(height: 24),
            const Text(
              'Elevated Dropdown',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            OsmeaComponents.dropdown<String>(
              items: colorOptions,
              value: selectedElevated,
              onChanged: (item) => setState(() => selectedElevated = item),
              hint: 'Select a color',
              variant: DropdownVariant.elevated,
            ),
            const SizedBox(height: 24),
            const Text(
              'Avatar Dropdown',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            OsmeaComponents.dropdown<OsmeaDropdownItem<String>>(
              items: avatarOptions,
              value: selectedAvatar,
              onChanged: (item) => setState(() => selectedAvatar = item),
              hint: 'Select a user',
              type: DropdownType.avatar,
            ),
            const SizedBox(height: 24),
            const Text(
              'Icon Dropdown',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            OsmeaComponents.dropdown<OsmeaDropdownItem<String>>(
              items: iconOptions,
              value: selectedIcon,
              onChanged: (item) => setState(() => selectedIcon = item),
              hint: 'Select an action',
            ),
          ],
        ),
      ),
    );
  }
}
