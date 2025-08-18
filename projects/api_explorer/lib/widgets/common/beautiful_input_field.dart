import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A beautiful, customizable input field with consistent styling
/// Features optional label, hint, prefix icon and validation
class BeautifulInputField extends StatefulWidget {
  /// Text editing controller to manage the input
  final TextEditingController controller;

  /// Field label shown above the input
  final String label;

  /// Hint text shown when field is empty
  final String? hint;

  /// Optional prefix icon
  final IconData? prefixIcon;

  /// Optional callback for validation
  final String? Function(String?)? validator;

  /// Whether the field is required
  final bool isRequired;

  /// Whether to obscure text (for passwords)
  final bool obscureText;

  /// Maximum number of lines
  final int? maxLines;

  /// Keyboard type
  final TextInputType? keyboardType;

  /// Input formatting
  final List<TextInputFormatter>? inputFormatters;

  /// Focus node
  final FocusNode? focusNode;

  /// Callback when field is submitted
  final ValueChanged<String>? onFieldSubmitted;

  /// Callback when field changes
  final ValueChanged<String>? onChanged;

  const BeautifulInputField({
    super.key,
    required this.controller,
    required this.label,
    this.hint,
    this.prefixIcon,
    this.validator,
    this.isRequired = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.keyboardType,
    this.inputFormatters,
    this.focusNode,
    this.onFieldSubmitted,
    this.onChanged,
  });

  @override
  State<BeautifulInputField> createState() => _BeautifulInputFieldState();
}

class _BeautifulInputFieldState extends State<BeautifulInputField> {
  bool _isFocused = false;
  bool _hasText = false;
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();
    _hasText = widget.controller.text.isNotEmpty;
    widget.controller.addListener(_handleTextChange);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_handleTextChange);
    super.dispose();
  }

  void _handleTextChange() {
    final hasText = widget.controller.text.isNotEmpty;
    if (_hasText != hasText) {
      setState(() => _hasText = hasText);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label.isNotEmpty)
          OsmeaComponents.padding(
            padding: EdgeInsets.only(
              bottom: context.spacing6,
              left: context.spacing2,
            ),
            child: OsmeaComponents.row(
              children: [
                OsmeaComponents.text(
                  widget.label,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: colorScheme.onSurface,
                ),
                if (widget.isRequired) ...[
                  OsmeaComponents.sizedBox(width: context.spacing4),
                  OsmeaComponents.text(
                    '*',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: colorScheme.error,
                  ),
                ],
              ],
            ),
          ),
        OsmeaComponents.textField(
          controller: widget.controller,
          hint: widget.hint,
          prefixIcon: widget.prefixIcon != null
              ? Icon(
                  widget.prefixIcon,
                  size: 20,
                  color: colorScheme.onSurfaceVariant,
                )
              : null,
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility : Icons.visibility_off,
                    color: colorScheme.onSurfaceVariant,
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() => _isObscured = !_isObscured);
                  },
                )
              : (_hasText
                  ? IconButton(
                      icon: Icon(
                        Icons.cancel,
                        size: 18,
                        color: colorScheme.onSurfaceVariant.withAlpha(179),
                      ),
                      onPressed: () {
                        widget.controller.clear();
                      },
                    )
                  : null),
          size: TextFieldSize.medium,
          variant: TextFieldVariant.outlined,
          state: TextFieldState.enabled,
          type: widget.obscureText
              ? TextFieldType.password
              : (widget.keyboardType == TextInputType.number
                  ? TextFieldType.number
                  : TextFieldType.text),
          isRequired: widget.isRequired,
          validator: widget.validator,
          onChanged: (value) {
            widget.onChanged?.call(value);
          },
          onSubmitted: widget.onFieldSubmitted,
          focusNode: widget.focusNode,
        ),
      ],
    );
  }
}
