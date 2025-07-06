import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';

/// 🔽 **OSMEA Dropdown Examples**
///
/// Comprehensive examples demonstrating all variants, sizes, and features
/// of the OSMEA Dropdown component library.
///
/// This file showcases:
/// * 🎨 All dropdown variants (filled, outlined, elevated)
/// * 📏 All size options (small, medium, large)
/// * 🔄 All dropdown types (regular, avatar, avatarLeading, input)
/// * 🎯 Icon positioning (leading, trailing)
/// * 🎭 All interactive states (enabled, disabled, loading)
/// * 🎨 Custom styling and theming options
/// * 🔧 Full-width and responsive layouts

// TeamMember ve MenuItem modelleri
class TeamMember {
  final String name;
  final String username;
  final String avatarUrl;
  final bool isOnline;
  TeamMember(
      {required this.name,
      required this.username,
      required this.avatarUrl,
      this.isOnline = false});
}

class MenuItem {
  final String title;
  final IconData? icon;
  final String? shortcut;
  final bool isSection;
  final bool isDestructive;
  MenuItem(
      {required this.title,
      this.icon,
      this.shortcut,
      this.isSection = false,
      this.isDestructive = false});
}

class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  // State variables for different dropdown demonstrations
  String? _selectedCountry;
  TeamMember? _selectedTeamMember;
  MenuItem? _selectedMenuItem;

  final List<String> _countries = [
    'Turkey',
    'United States',
    'United Kingdom',
    'Germany',
    'France',
    'Japan',
    'Canada',
    'Australia',
  ];

  final List<String> _users = [
    'John Doe',
    'Jane Smith',
    'Mike Johnson',
    'Sarah Wilson',
    'David Brown',
  ];

  final List<String> _categories = [
    'Technology',
    'Design',
    'Marketing',
    'Sales',
    'Support',
  ];

  final List<String> _sizes = [
    'Small',
    'Medium',
    'Large',
    'Extra Large',
  ];

  final List<TeamMember> _teamMembers = [
    TeamMember(
        name: 'Olivia Rhye',
        username: '@olivia',
        avatarUrl: '',
        isOnline: true),
    TeamMember(
        name: 'Phoenix Baker',
        username: '@phoenix',
        avatarUrl: '',
        isOnline: false),
    TeamMember(
        name: 'Lana Steiner', username: '@lana', avatarUrl: '', isOnline: true),
    TeamMember(
        name: 'Demi Wilkinson',
        username: '@demi',
        avatarUrl: '',
        isOnline: false),
    TeamMember(
        name: 'Candice Wu',
        username: '@candice',
        avatarUrl: '',
        isOnline: true),
    TeamMember(
        name: 'Natali Craig',
        username: '@natali',
        avatarUrl: '',
        isOnline: false),
    TeamMember(
        name: 'Drew Cano', username: '@drew', avatarUrl: '', isOnline: true),
  ];

  final List<MenuItem> _accountMenu = [
    MenuItem(title: 'View profile', icon: Icons.person, shortcut: '⌘+P'),
    MenuItem(title: 'Settings', icon: Icons.settings, shortcut: '⌘+S'),
    MenuItem(title: 'Keyboard shortcuts', icon: Icons.keyboard, shortcut: '?'),
    MenuItem(title: 'Company profile', icon: Icons.business, shortcut: '⌘+C'),
    MenuItem(title: 'Team', icon: Icons.group, shortcut: '⌘+T'),
    MenuItem(title: 'Invite colleagues', icon: Icons.person_add),
    MenuItem(title: 'Changelog', icon: Icons.update),
    MenuItem(title: 'Slack Community', icon: Icons.chat),
    MenuItem(title: 'Support', icon: Icons.support),
    MenuItem(title: 'API', icon: Icons.api),
    MenuItem(title: 'Log out', icon: Icons.logout, isDestructive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.scaffold(
      appBar: OsmeaComponents.appBar(
        title: OsmeaComponents.text(
          '🔽 OSMEA Dropdown Examples',
          variant: OsmeaTextVariant.headlineMedium,
        ),
        backgroundColor: OsmeaColors.nordicBlue,
        foregroundColor: OsmeaColors.white,
      ),
      body: OsmeaComponents.singleChildScrollView(
        padding: context.paddingNormal,
        child: OsmeaComponents.column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('🎨 Dropdown Variants'),
            _buildVariantsSection(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('📏 Dropdown Sizes'),
            _buildSizesSection(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('🔄 Dropdown Types'),
            _buildTypesSection(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('🎯 Icon Positions'),
            _buildIconPositionsSection(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('🔄 Dropdown States'),
            _buildStatesSection(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('🎭 Interactive Examples'),
            _buildInteractiveSection(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('📐 Layout Examples'),
            _buildLayoutSection(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('🎨 Custom Styling'),
            _buildCustomStylingSection(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('👤 Modern Team Member Dropdown'),
            _buildModernTeamMemberDropdown(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('⚙️ Modern Account Menu Dropdown'),
            _buildModernAccountMenuDropdown(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return OsmeaComponents.padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: OsmeaComponents.text(
        title,
        variant: OsmeaTextVariant.headlineSmall,
      ),
    );
  }

  Widget _buildSubsectionTitle(String title) {
    return OsmeaComponents.padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: OsmeaComponents.text(
        title,
        variant: OsmeaTextVariant.titleMedium,
        color: OsmeaColors.nordicBlue,
      ),
    );
  }

  Widget _buildVariantsSection() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubsectionTitle('Filled Variant'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Select Country',
              variant: DropdownVariant.filled,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'With Label',
              label: 'Country',
              variant: DropdownVariant.filled,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Outlined Variant'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Select Country',
              variant: DropdownVariant.outlined,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'With Helper Text',
              helperText: 'Choose your country',
              variant: DropdownVariant.outlined,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Elevated Variant'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Select Country',
              variant: DropdownVariant.elevated,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'With Error',
              errorText: 'Please select a country',
              variant: DropdownVariant.elevated,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSizesSection() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubsectionTitle('Size Comparison'),
        OsmeaComponents.column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OsmeaComponents.dropdown(
              items: _sizes,
              hint: 'Small Size',
              size: DropdownSize.small,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.sizedBox(height: 8),
            OsmeaComponents.dropdown(
              items: _sizes,
              hint: 'Medium Size (Default)',
              size: DropdownSize.medium,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.sizedBox(height: 8),
            OsmeaComponents.dropdown(
              items: _sizes,
              hint: 'Large Size',
              size: DropdownSize.large,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Size with Different Types'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _users,
              hint: 'Small Avatar',
              size: DropdownSize.small,
              type: DropdownType.avatar,
              avatarIcon: Icons.person,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _users,
              hint: 'Medium Avatar',
              size: DropdownSize.medium,
              type: DropdownType.avatar,
              avatarIcon: Icons.person,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _users,
              hint: 'Large Avatar',
              size: DropdownSize.large,
              type: DropdownType.avatar,
              avatarIcon: Icons.person,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTypesSection() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubsectionTitle('Regular Type'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _categories,
              hint: 'Select Category',
              type: DropdownType.regular,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _categories,
              hint: 'With Checkbox',
              type: DropdownType.regular,
              showCheckbox: true,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Avatar Type'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _users,
              hint: 'Select User',
              type: DropdownType.avatar,
              avatarIcon: Icons.person,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _users,
              hint: 'With Avatar Icon',
              type: DropdownType.avatar,
              avatarIcon: Icons.person,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Avatar Leading Type'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _users,
              hint: 'Select User',
              type: DropdownType.avatarLeading,
              avatarIcon: Icons.person,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _users,
              hint: 'With Custom Avatar',
              type: DropdownType.avatarLeading,
              avatarIcon: Icons.admin_panel_settings,
              avatarBackgroundColor: OsmeaColors.nordicBlue,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Input Type'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _categories,
              hint: 'Select Category',
              type: DropdownType.input,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _categories,
              hint: 'With Leading Icon',
              type: DropdownType.input,
              leading: const Icon(Icons.category),
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildIconPositionsSection() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubsectionTitle('Trailing Icon (Default)'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Select Country',
              iconPosition: DropdownIconPosition.trailing,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Custom Icon',
              icon: const Icon(Icons.arrow_downward),
              iconPosition: DropdownIconPosition.trailing,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Leading Icon'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Select Country',
              iconPosition: DropdownIconPosition.leading,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'With Leading Icon',
              iconPosition: DropdownIconPosition.leading,
              showLeadingIcon: true,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatesSection() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubsectionTitle('Enabled State'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Enabled Dropdown',
              isEnabled: true,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Disabled State'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Disabled Dropdown',
              isEnabled: false,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Loading State'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Loading...',
              isLoading: true,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Error State'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Select Country',
              errorText: 'This field is required',
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildInteractiveSection() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubsectionTitle('Controlled Dropdown'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _countries,
              value: _selectedCountry,
              hint: 'Select Country',
              onChanged: (value) {
                if (mounted) {
                  setState(() {
                    _selectedCountry = value as String?;
                  });
                }
                _showSnackBar('Selected: $value');
              },
            ),
            OsmeaComponents.text(
              'Selected: ${_selectedCountry ?? 'None'}',
              variant: OsmeaTextVariant.bodyMedium,
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Custom Item Builder'),
        OsmeaComponents.dropdown(
          items: _users,
          hint: 'Select User',
          itemBuilder: (user, isSelected) {
            return Container(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey,
                    child: Text('?'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      user as String,
                      style: TextStyle(
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
                        color: isSelected ? OsmeaColors.nordicBlue : null,
                      ),
                    ),
                  ),
                  if (isSelected)
                    Icon(
                      Icons.check,
                      color: OsmeaColors.nordicBlue,
                      size: 20,
                    ),
                ],
              ),
            );
          },
          onChanged: (value) => _showSnackBar('Selected: $value'),
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Custom Selected Item Builder'),
        OsmeaComponents.dropdown(
          items: _categories,
          hint: 'Select Category',
          selectedItemBuilder: (category) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.category,
                  size: 16,
                  color: OsmeaColors.nordicBlue,
                ),
                const SizedBox(width: 8),
                Text(
                  category as String,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: OsmeaColors.nordicBlue,
                  ),
                ),
              ],
            );
          },
          onChanged: (value) => _showSnackBar('Selected: $value'),
        ),
      ],
    );
  }

  Widget _buildLayoutSection() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubsectionTitle('Full Width Dropdown'),
        OsmeaComponents.dropdown(
          items: _countries,
          hint: 'Full Width Dropdown',
          fullWidth: true,
          onChanged: (value) => _showSnackBar('Selected: $value'),
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Dropdown with Header'),
        OsmeaComponents.dropdown(
          items: _users,
          hint: 'Select User',
          header: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: OsmeaColors.nordicBlue.withAlpha((0.1 * 255).toInt()),
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.people, color: OsmeaColors.nordicBlue),
                const SizedBox(width: 8),
                Text(
                  'Available Users',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: OsmeaColors.nordicBlue,
                  ),
                ),
              ],
            ),
          ),
          onChanged: (value) => _showSnackBar('Selected: $value'),
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Responsive Layout'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _categories,
              hint: 'Category',
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _sizes,
              hint: 'Size',
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
            OsmeaComponents.dropdown(
              items: _countries,
              hint: 'Country',
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCustomStylingSection() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubsectionTitle('Custom Colors'),
        OsmeaComponents.wrap(
          spacing: 12,
          runSpacing: 8,
          children: [
            OsmeaComponents.dropdown(
              items: _categories,
              hint: 'Custom Styled',
              variant: DropdownVariant.filled,
              avatarBackgroundColor: OsmeaColors.nordicBlue,
              onChanged: (value) => _showSnackBar('Selected: $value'),
            ),
          ],
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Custom Max Height'),
        OsmeaComponents.dropdown(
          items: _countries,
          hint: 'Limited Height',
          maxHeight: 150,
          onChanged: (value) => _showSnackBar('Selected: $value'),
        ),
        OsmeaComponents.sizedBox(height: 16),
        _buildSubsectionTitle('Auto Layout Disabled'),
        OsmeaComponents.dropdown(
          items: _countries,
          hint: 'Fixed Width',
          autoLayout: false,
          onChanged: (value) => _showSnackBar('Selected: $value'),
        ),
      ],
    );
  }

  Widget _buildModernTeamMemberDropdown() {
    return OsmeaComponents.dropdown<TeamMember>(
      items: _teamMembers,
      value: _selectedTeamMember,
      hint: 'Select team member',
      type: DropdownType.avatarLeading,
      itemBuilder: (member, isSelected) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: Colors.grey.shade300,
                child: Text((member is TeamMember ? member.name[0] : '?')),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(member.name,
                        style: const TextStyle(fontWeight: FontWeight.w500)),
                    Text(member.username,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
              ),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: member.isOnline ? Colors.green : Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              if (isSelected)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.check,
                      color: OsmeaColors.nordicBlue, size: 20),
                ),
            ],
          ),
        );
      },
      selectedItemBuilder: (member) {
        return Row(
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.grey.shade300,
              child: Text((member is TeamMember ? member.name[0] : '?')),
            ),
            const SizedBox(width: 8),
            Text((member is TeamMember ? member.name : '?'),
                style: const TextStyle(fontWeight: FontWeight.w500)),
          ],
        );
      },
      onChanged: (value) {
        setState(() {
          _selectedTeamMember = value;
        });
        _showSnackBar('Selected: ${value?.name}');
      },
    );
  }

  Widget _buildModernAccountMenuDropdown() {
    return OsmeaComponents.dropdown<MenuItem>(
      items: _accountMenu,
      value: _selectedMenuItem,
      hint: 'Account',
      type: DropdownType.input,
      itemBuilder: (item, isSelected) {
        if (item.isSection) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(item.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey)),
          );
        }
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Row(
            children: [
              Icon(item.icon ?? Icons.help,
                  size: 20,
                  color:
                      item.isDestructive == true ? Colors.red : Colors.black),
              const SizedBox(width: 12),
              Expanded(
                child: Text(item.title,
                    style: TextStyle(
                        color: item.isDestructive == true ? Colors.red : null)),
              ),
              if (item.shortcut != null)
                Text(item.shortcut!,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              if (isSelected)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.check,
                      color: OsmeaColors.nordicBlue, size: 20),
                ),
            ],
          ),
        );
      },
      selectedItemBuilder: (item) {
        return Row(
          children: [
            Icon(item?.icon ?? Icons.help, size: 16),
            const SizedBox(width: 8),
            Text(item?.title ?? '',
                style: const TextStyle(fontWeight: FontWeight.w500)),
          ],
        );
      },
      onChanged: (value) {
        setState(() {
          _selectedMenuItem = value;
        });
        _showSnackBar('Selected: ${value?.title}');
      },
    );
  }

  void _showSnackBar(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: OsmeaComponents.text(message),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }
}
