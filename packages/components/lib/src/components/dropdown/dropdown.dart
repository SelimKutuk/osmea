import 'package:flutter/material.dart';
import 'package:osmea_components/src/enums/dropdown_enums.dart';
import 'package:osmea_components/src/utils/dropdown_extensions.dart';

/// 🔽 **OSMEA Components Library**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// A comprehensive dropdown component that implements all variants defined
/// in the OSMEA design system with full customization support.
///
/// {@category Components}
/// {@subCategory Dropdowns}
///
/// Features:
/// * 🎨 Multiple style variants (filled, outlined, elevated)
/// * 📏 Three size options (small, medium, large)
/// * 👤 Different types (regular, avatar, avatar leading, input)
/// * 🎯 Flexible icon positioning
/// * ♿ Full accessibility support
/// * 🌐 RTL/LTR language support
/// * 📱 Responsive design
/// * 🎭 Custom theming capabilities
///
/// ```dart
/// OsmeaDropdown(
///   items: ['Option 1', 'Option 2', 'Option 3'],
///   onChanged: (value) => print('Selected: $value'),
///   hint: 'Select an option',
///   variant: DropdownVariant.filled,
///   size: DropdownSize.medium,
///   type: DropdownType.regular,
/// )
/// ```
///
/// See also:
/// * [DropdownVariant] - Style variants enum
/// * [DropdownSize] - Size variants enum
/// * [DropdownType] - Type options enum
/// * [DropdownIconPosition] - Icon positioning enum

/// 🔽 **OsmeaDropdown**
///
/// A comprehensive dropdown component for the OSMEA UI Kit.
/// Features customizable appearance, sizes, and support for avatars and icons.
class OsmeaDropdown<T> extends StatefulWidget {
  /// The list of items the user can select.
  final List<T> items;

  /// Builder function to create dropdown items.
  final Widget Function(T item, bool isSelected)? itemBuilder;

  /// Builder function to create selected item view.
  final Widget Function(T? selectedItem)? selectedItemBuilder;

  /// Function called when selection changes.
  final ValueChanged<T?>? onChanged;

  /// The value of the currently selected item.
  final T? value;

  /// Placeholder text when no item is selected.
  final String? hint;

  /// Visual style variant of the dropdown.
  final DropdownVariant variant;

  /// Size variant of the dropdown.
  final DropdownSize size;

  /// Content type of the dropdown.
  final DropdownType type;

  /// Position of the dropdown icon.
  final DropdownIconPosition iconPosition;

  /// Custom dropdown icon.
  final Widget? icon;

  /// Whether the dropdown should expand to fill its parent.
  final bool fullWidth;

  /// Custom label text.
  final String? label;

  /// Helper text displayed below the dropdown.
  final String? helperText;

  /// Error text displayed when the dropdown has an error.
  final String? errorText;

  /// Whether the dropdown is enabled.
  final bool isEnabled;

  /// Whether to show a checkbox for selected items.
  final bool showCheckbox;

  /// Custom header for the dropdown.
  final Widget? header;

  /// Whether to auto-layout the dropdown menu.
  final bool autoLayout;

  /// Whether the dropdown is currently loading.
  final bool isLoading;

  /// Custom leading widget for dropdown
  final Widget? leading;

  /// Maximum height of the dropdown menu.
  final double? maxHeight;

  /// Avatar URL for avatar type dropdowns.
  final String? avatarUrl;

  /// Avatar image for avatar type dropdowns.
  final ImageProvider? avatarImage;

  /// Avatar placeholder icon for avatar type dropdowns.
  final IconData? avatarIcon;

  /// Avatar background color.
  final Color? avatarBackgroundColor;

  /// Whether to show a leading icon.
  final bool showLeadingIcon;

  /// Creates an OsmeaDropdown.
  const OsmeaDropdown({
    super.key,
    required this.items,
    this.itemBuilder,
    this.selectedItemBuilder,
    this.onChanged,
    this.value,
    this.hint,
    this.variant = DropdownVariant.filled,
    this.size = DropdownSize.medium,
    this.type = DropdownType.regular,
    this.iconPosition = DropdownIconPosition.trailing,
    this.icon,
    this.fullWidth = false,
    this.label,
    this.helperText,
    this.errorText,
    this.isEnabled = true,
    this.showCheckbox = false,
    this.header,
    this.autoLayout = true,
    this.isLoading = false,
    this.leading,
    this.maxHeight,
    this.avatarUrl,
    this.avatarImage,
    this.avatarIcon,
    this.avatarBackgroundColor,
    this.showLeadingIcon = false,
  });

  @override
  State<OsmeaDropdown<T>> createState() => _OsmeaDropdownState<T>();
}

class _OsmeaDropdownState<T> extends State<OsmeaDropdown<T>> {
  final LayerLink _layerLink = LayerLink();
  bool _isOpen = false;
  OverlayEntry? _overlayEntry;
  T? _selectedItem;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.value;
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && _isOpen && mounted) {
        _closeDropdown();
      }
    });
  }

  @override
  void didUpdateWidget(OsmeaDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value && mounted) {
      setState(() {
        _selectedItem = widget.value;
      });
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _toggleDropdown() {
    if (!widget.isEnabled || widget.isLoading || !mounted) return;

    setState(() {
      _isOpen = !_isOpen;
      if (_isOpen) {
        _overlayEntry = _createOverlayEntry();
        if (mounted) {
          Overlay.of(context).insert(_overlayEntry!);
          _focusNode.requestFocus();
        }
      } else {
        _closeDropdown();
      }
    });
  }

  void _closeDropdown() {
    if (!mounted) return;

    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }

    if (mounted) {
      setState(() {
        _isOpen = false;
      });
    }
  }

  void _selectItem(T item) {
    if (!mounted) return;

    setState(() {
      _selectedItem = item;
      _isOpen = false;
    });

    if (mounted) {
      widget.onChanged?.call(item);
      _closeDropdown();
    }
  }

  OverlayEntry _createOverlayEntry() {
    if (!mounted) {
      return OverlayEntry(builder: (context) => const SizedBox.shrink());
    }

    final RenderBox? renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null) {
      return OverlayEntry(builder: (context) => const SizedBox.shrink());
    }

    final size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          offset: Offset(0, size.height + 4),
          child: Material(
            elevation: 8,
            borderRadius: widget.size.borderRadius,
            color: Theme.of(context).colorScheme.surface,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: widget.maxHeight ?? 300,
                maxWidth: size.width,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.header != null) widget.header!,
                  Flexible(
                    child: ListView.builder(
                      padding: widget.size.menuPadding,
                      shrinkWrap: true,
                      itemCount: widget.items.length,
                      itemBuilder: (context, index) {
                        final item = widget.items[index];
                        final isSelected = item == _selectedItem;

                        return _buildMenuItem(item, isSelected);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(T item, bool isSelected) {
    if (widget.itemBuilder != null) {
      return InkWell(
        onTap: () => _selectItem(item),
        child: widget.itemBuilder!(item, isSelected),
      );
    }

    // Otomatik gelişmiş stiller
    if (item is OsmeaDropdownUser) {
      return InkWell(
        onTap: () => _selectItem(item),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Row(
            children: [
              CircleAvatar(
                radius: widget.size.avatarSize / 2,
                backgroundColor: Colors.grey.shade300,
                backgroundImage: item.avatarUrl != null
                    ? NetworkImage(item.avatarUrl!)
                    : null,
                child: item.avatarUrl == null ? Text(item.name[0]) : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.name,
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    Text(item.username,
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
              ),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: item.isOnline ? Colors.green : Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              if (isSelected)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.check,
                      color: Theme.of(context).primaryColor, size: 20),
                ),
            ],
          ),
        ),
      );
    }
    if (item is OsmeaDropdownMenuSection) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12),
        child: Text(item.title,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
      );
    }
    if (item is OsmeaDropdownMenuItem) {
      return InkWell(
        onTap: () => _selectItem(item),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Row(
            children: [
              if (item.icon != null)
                Icon(item.icon,
                    size: 20,
                    color: item.isDestructive ? Colors.red : Colors.black),
              if (item.icon != null) const SizedBox(width: 12),
              Expanded(
                child: Text(item.title,
                    style: TextStyle(
                        color: item.isDestructive ? Colors.red : null)),
              ),
              if (item.shortcut != null)
                Text(item.shortcut!,
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
              if (isSelected)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.check,
                      color: Theme.of(context).primaryColor, size: 20),
                ),
            ],
          ),
        ),
      );
    }

    // Varsayılan (String veya diğer tipler)
    return InkWell(
      onTap: () => _selectItem(item),
      child: Container(
        height: widget.size.menuItemHeight,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).primaryColor.withOpacity(0.1)
              : null,
        ),
        child: Row(
          children: [
            if (widget.showCheckbox)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: isSelected
                    ? Icon(Icons.check,
                        size: widget.size.iconSize,
                        color: Theme.of(context).primaryColor)
                    : SizedBox(width: widget.size.iconSize),
              ),
            Expanded(
              child: Text(
                item.toString(),
                style: widget.size.textStyle(context).copyWith(
                      color: isSelected ? Theme.of(context).primaryColor : null,
                      fontWeight: isSelected ? FontWeight.w500 : null,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    final double avatarSize = widget.size.avatarSize;

    if (widget.avatarImage != null) {
      return CircleAvatar(
        radius: avatarSize / 2,
        backgroundImage: widget.avatarImage,
        backgroundColor: widget.avatarBackgroundColor ?? Colors.grey.shade200,
      );
    } else if (widget.avatarUrl != null) {
      return CircleAvatar(
        radius: avatarSize / 2,
        backgroundImage: NetworkImage(widget.avatarUrl!),
        backgroundColor: widget.avatarBackgroundColor ?? Colors.grey.shade200,
      );
    } else {
      return CircleAvatar(
        radius: avatarSize / 2,
        backgroundColor: widget.avatarBackgroundColor ?? Colors.grey.shade200,
        child: Icon(
          widget.avatarIcon ?? Icons.person,
          size: avatarSize / 2,
          color: Colors.white,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final decoration = widget.variant.getDecoration(context, isOpen: _isOpen);
    final textStyle = widget.size.textStyle(context);

    // Default dropdown icon
    final dropdownIcon = widget.icon ??
        Icon(
          _isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
          size: widget.size.iconSize * 1.2,
          color: widget.isEnabled
              ? (widget.errorText != null
                  ? theme.colorScheme.error
                  : theme.iconTheme.color)
              : theme.disabledColor,
        );

    Widget dropdownChild;

    // Build content based on type
    switch (widget.type) {
      case DropdownType.avatar:
        dropdownChild = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildAvatar(),
            SizedBox(width: 8.0),
            Expanded(
              child: Text(
                _selectedItem?.toString() ?? widget.hint ?? '',
                style: textStyle.copyWith(
                  color: _selectedItem == null ? theme.hintColor : null,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            dropdownIcon,
          ],
        );
        break;

      case DropdownType.avatarLeading:
        dropdownChild = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.iconPosition == DropdownIconPosition.leading)
              dropdownIcon,
            _buildAvatar(),
            SizedBox(width: 8.0),
            Expanded(
              child: Text(
                _selectedItem?.toString() ?? widget.hint ?? '',
                style: textStyle.copyWith(
                  color: _selectedItem == null ? theme.hintColor : null,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (widget.iconPosition == DropdownIconPosition.trailing)
              dropdownIcon,
          ],
        );
        break;

      case DropdownType.input:
        dropdownChild = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.leading != null) ...[
              widget.leading!,
              SizedBox(width: 8.0),
            ],
            if (widget.iconPosition == DropdownIconPosition.leading)
              dropdownIcon,
            Expanded(
              child: widget.selectedItemBuilder != null && _selectedItem != null
                  ? widget.selectedItemBuilder!(_selectedItem)
                  : Text(
                      _selectedItem?.toString() ?? widget.hint ?? '',
                      style: textStyle.copyWith(
                        color: _selectedItem == null ? theme.hintColor : null,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
            ),
            if (widget.iconPosition == DropdownIconPosition.trailing)
              dropdownIcon,
          ],
        );
        break;

      case DropdownType.regular:
      default:
        dropdownChild = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.showLeadingIcon &&
                widget.iconPosition == DropdownIconPosition.leading)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: dropdownIcon,
              ),
            Expanded(
              child: widget.selectedItemBuilder != null && _selectedItem != null
                  ? widget.selectedItemBuilder!(_selectedItem)
                  : Text(
                      _selectedItem?.toString() ?? widget.hint ?? '',
                      style: textStyle.copyWith(
                        color: _selectedItem == null ? theme.hintColor : null,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
            ),
            if (!widget.showLeadingIcon ||
                widget.iconPosition == DropdownIconPosition.trailing)
              dropdownIcon,
          ],
        );
        break;
    }

    // Main dropdown button
    final dropdownButton = CompositedTransformTarget(
      link: _layerLink,
      child: Focus(
        focusNode: _focusNode,
        child: InkWell(
          onTap: widget.isEnabled && !widget.isLoading ? _toggleDropdown : null,
          borderRadius: widget.size.borderRadius,
          child: Container(
            height: widget.size.height,
            padding: widget.size.padding,
            decoration: decoration.copyWith(
              border: widget.errorText != null
                  ? Border.all(color: theme.colorScheme.error, width: 1.0)
                  : decoration.border,
            ),
            child: widget.isLoading
                ? Center(
                    child: SizedBox(
                      width: widget.size.iconSize,
                      height: widget.size.iconSize,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  )
                : dropdownChild,
          ),
        ),
      ),
    );

    // Full widget with label and helper text
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              widget.label!,
              style: textStyle.copyWith(
                fontWeight: FontWeight.w500,
                color:
                    widget.errorText != null ? theme.colorScheme.error : null,
              ),
            ),
          ),
        widget.fullWidth ? dropdownButton : Wrap(children: [dropdownButton]),
        if (widget.errorText != null || widget.helperText != null)
          Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 4.0),
            child: Text(
              widget.errorText ?? widget.helperText ?? '',
              style: theme.textTheme.bodySmall?.copyWith(
                color: widget.errorText != null
                    ? theme.colorScheme.error
                    : theme.hintColor,
              ),
            ),
          ),
      ],
    );
  }
}

// Gelişmiş dropdown item modelleri
class OsmeaDropdownUser {
  final String name;
  final String username;
  final String? avatarUrl;
  final bool isOnline;
  OsmeaDropdownUser(
      {required this.name,
      required this.username,
      this.avatarUrl,
      this.isOnline = false});
}

class OsmeaDropdownMenuItem {
  final String title;
  final IconData? icon;
  final String? shortcut;
  final bool isDestructive;
  OsmeaDropdownMenuItem(
      {required this.title,
      this.icon,
      this.shortcut,
      this.isDestructive = false});
}

class OsmeaDropdownMenuSection {
  final String title;
  OsmeaDropdownMenuSection({required this.title});
}
