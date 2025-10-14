import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:osmea_components/osmea_components.dart';
import 'package:osmea_components/src/core/text_field_widget.dart';
import 'package:osmea_components/src/enums/components_enum.dart';
import 'package:osmea_components/src/components.dart';
import 'package:osmea_components/src/components/phone_picker/models/country.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String digitsOnly = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    if (digitsOnly.length > 15) {
      digitsOnly = digitsOnly.substring(0, 15);
    }

    return TextEditingValue(
      text: digitsOnly,
      selection: TextSelection.collapsed(offset: digitsOnly.length),
    );
  }
}

/// 📱 **OSMEA Phone Picker**
///
/// A comprehensive phone number input component with country code dropdown.
///
/// **Features:**
/// - Country code dropdown with flags
/// - Phone number input field
/// - Input validation and formatting
/// - Customizable styling
/// - Multiple size options
/// - Search functionality
///
/// **Usage:**
/// ```dart
/// OsmeaPhonePicker(
///   controller: phoneController,
///   label: 'Phone Number',
///   hint: 'Enter your phone number',
///   variant: TextFieldVariant.outlined,
///   size: TextFieldSize.medium,
///   searchHint: 'Search country',
///   selectCountryTitle: 'Select Country',
///   noCountriesFoundText: 'No countries found',
///   tryDifferentSearchText: 'Try a different search term',
///   onCountryChanged: (countryCode) => print('Country: $countryCode'),
///   onPhoneChanged: (phoneNumber) => print('Phone: $phoneNumber'),
/// )
/// ```

class OsmeaPhonePicker extends CoreTextField {
  const OsmeaPhonePicker({
    super.key,
    super.customTheme,
    super.controller,
    super.focusNode,
    super.label,
    super.hint,
    super.helperText,
    super.errorText,
    super.prefixIcon,
    super.suffixIcon,
    super.size = TextFieldSize.medium,
    super.variant = TextFieldVariant.outlined,
    super.state = TextFieldState.enabled,
    super.type = TextFieldType.phone,
    super.isRequired = false,
    super.validator,
    super.onChanged,
    super.onSubmitted,
    super.onTap,
    super.onEditingComplete,
    super.maxLines = 1,
    super.minLines,
    super.maxLength,
    super.obscureText = false,
    super.readOnly = false,
    super.autofocus = false,
    super.enabled,
    super.textAlign = TextAlign.start,
    super.textCapitalization = TextCapitalization.none,
    super.keyboardType,
    super.textInputAction,
    super.inputFormatters,
    super.textStyle,
    super.textColor,
    super.backgroundColor,
    super.borderColor,
    super.focusColor,
    super.errorColor,
    super.hintColor,
    super.labelColor,
    super.fullWidth = true,
    super.animationDuration,
    this.initialCountryCode = 'TR',
    this.onCountryChanged,
    this.onPhoneChanged,
    this.showCountryFlag = true,
    this.countryDropdownWidth = 120.0,
    this.flagSize = 20.0,
    this.searchHint = 'Search country',
    this.enableSearch = true,
    this.maxDropdownHeight = 300.0,
    this.customCountries,
    this.dropdownDecoration,
    this.selectCountryText = 'Select Country',
    this.noCountriesFoundText = 'No countries found',
    this.searchText = 'Try a different search term',
  });

  /// Initial country code (e.g., 'US', 'TR', 'GB')
  final String initialCountryCode;

  /// Callback when country is changed
  final ValueChanged<String>? onCountryChanged;

  /// Callback when phone number is changed (includes country code)
  final ValueChanged<String>? onPhoneChanged;

  /// Whether to show country flag
  final bool showCountryFlag;

  /// Width of country dropdown
  final double countryDropdownWidth;

  /// Size of the country flag
  final double flagSize;

  /// Hint text for country search
  final String searchHint;

  /// Whether to enable country search
  final bool enableSearch;

  /// Maximum height for country dropdown
  final double maxDropdownHeight;

  /// Custom list of countries (if null, uses default)
  final List<Country>? customCountries;

  /// Custom decoration for dropdown
  final BoxDecoration? dropdownDecoration;

  /// Title text for country selection modal
  final String selectCountryText;

  /// Text shown when no countries are found in search
  final String noCountriesFoundText;

  /// Helper text for search suggestions
  final String searchText;

  @override
  Widget buildWidget(BuildContext context) {
    return _OsmeaPhonePickerWidget(phonePicker: this);
  }
}

class _OsmeaPhonePickerWidget extends StatefulWidget {
  const _OsmeaPhonePickerWidget({required this.phonePicker});

  final OsmeaPhonePicker phonePicker;

  @override
  State<_OsmeaPhonePickerWidget> createState() => _OsmeaPhonePickerState();
}

class _OsmeaPhonePickerState extends State<_OsmeaPhonePickerWidget> {
  late String selectedCountryCode;
  late Country selectedCountry;
  late TextEditingController phoneController;

  @override
  void initState() {
    super.initState();
    selectedCountryCode = widget.phonePicker.initialCountryCode;
    selectedCountry = _getCountryByCode(selectedCountryCode);
    phoneController = widget.phonePicker.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    // Only dispose if we created the controller
    if (widget.phonePicker.controller == null) {
      phoneController.dispose();
    }
    super.dispose();
  }

  Country _getCountryByCode(String code) {
    final countries = widget.phonePicker.customCountries ?? CountryCodes.all;
    return countries.firstWhere(
      (country) => country.code == code,
      orElse: () => countries.first,
    );
  }

  void _onCountryChanged(Country country) {
    setState(() {
      selectedCountry = country;
      selectedCountryCode = country.code;
    });

    widget.phonePicker.onCountryChanged?.call(country.code);
    _updateFullPhoneNumber();
  }

  void _onPhoneChanged(String phoneNumber) {
    // Remove non-numeric characters to get clean number
    final cleanNumber = phoneNumber.replaceAll(RegExp(r'[^0-9]'), '');

    // Limit to 9 digits
    final limitedNumber =
        cleanNumber.length > 9 ? cleanNumber.substring(0, 9) : cleanNumber;

    // Call onChanged with clean number (without formatting)
    widget.phonePicker.onChanged?.call(limitedNumber);
    _updateFullPhoneNumber();
  }

  void _updateFullPhoneNumber() {
    // Get clean number without formatting for the full phone number
    final cleanNumber = phoneController.text.replaceAll(RegExp(r'[^0-9]'), '');
    final fullPhoneNumber = '${selectedCountry.dialCode} $cleanNumber';
    widget.phonePicker.onPhoneChanged?.call(fullPhoneNumber);
  }

  Widget _buildFlagWidget(String countryCode, double size) {
    return Image.asset(
      'assets/flags/${countryCode.toLowerCase()}.png',
      package: 'osmea_components',
      width: size,
      height: size,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        // Fallback widget when flag image fails to load
        return OsmeaComponents.container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: OsmeaColors.snow,
            borderRadius: BorderRadius.circular(context.radiusLow),
          ),
          child: OsmeaComponents.center(
            child: OsmeaComponents.text(countryCode,
                fontSize: size * 0.3,
                fontWeight: FontWeight.bold,
                color: OsmeaColors.pewter),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.textField(
      controller: phoneController,
      label: widget.phonePicker.label,
      hint: widget.phonePicker.hint,
      helperText: widget.phonePicker.helperText,
      errorText: widget.phonePicker.errorText,
      size: widget.phonePicker.size,
      variant: widget.phonePicker.variant,
      state: widget.phonePicker.state,
      isRequired: widget.phonePicker.isRequired,
      validator: widget.phonePicker.validator,
      onChanged: _onPhoneChanged,
      onSubmitted: widget.phonePicker.onSubmitted,
      onTap: widget.phonePicker.onTap,
      type: TextFieldType.phone,
      keyboardType: TextInputType.phone,
      inputFormatters: [
        PhoneNumberFormatter(),
      ],
      prefixIcon: _buildCountryDropdown(),
      suffixIcon: widget.phonePicker.suffixIcon,
    );
  }

  Widget _buildCountryDropdown() {
    return GestureDetector(
      onTap: _showCountryPicker,
      child: OsmeaComponents.container(
        padding: EdgeInsets.symmetric(
          horizontal: context.spacing8,
          vertical: context.spacing4,
        ),
        child: OsmeaComponents.row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.phonePicker.showCountryFlag) ...[
              _buildFlagWidget(
                  selectedCountry.code, widget.phonePicker.flagSize),
              OsmeaComponents.sizedBox(width: context.spacing4),
            ],
            OsmeaComponents.text(
              selectedCountry.dialCode,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            OsmeaComponents.sizedBox(width: context.spacing4),
            Icon(
              Icons.arrow_drop_down,
              size: context.iconSizeSmall,
              color: OsmeaColors.pewter,
            ),
          ],
        ),
      ),
    );
  }

  void _showCountryPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _CountryPickerBottomSheet(
        countries: widget.phonePicker.customCountries ?? CountryCodes.all,
        selectedCountry: selectedCountry,
        onCountrySelected: _onCountryChanged,
        showFlag: widget.phonePicker.showCountryFlag,
        flagSize: widget.phonePicker.flagSize,
        searchHint: widget.phonePicker.searchHint,
        selectCountryTitle: widget.phonePicker.selectCountryText,
        noCountriesFoundText: widget.phonePicker.noCountriesFoundText,
        tryDifferentSearchText: widget.phonePicker.searchText,
      ),
    );
  }
}

class _CountryPickerBottomSheet extends StatefulWidget {
  const _CountryPickerBottomSheet({
    required this.countries,
    required this.selectedCountry,
    required this.onCountrySelected,
    required this.showFlag,
    required this.flagSize,
    required this.searchHint,
    required this.selectCountryTitle,
    required this.noCountriesFoundText,
    required this.tryDifferentSearchText,
  });

  final List<Country> countries;
  final Country selectedCountry;
  final ValueChanged<Country> onCountrySelected;
  final bool showFlag;
  final double flagSize;
  final String searchHint;
  final String selectCountryTitle;
  final String noCountriesFoundText;
  final String tryDifferentSearchText;

  @override
  State<_CountryPickerBottomSheet> createState() =>
      _CountryPickerBottomSheetState();
}

class _CountryPickerBottomSheetState extends State<_CountryPickerBottomSheet> {
  final TextEditingController _searchController = TextEditingController();
  List<Country> _filteredCountries = [];

  @override
  void initState() {
    super.initState();
    _filteredCountries = widget.countries;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredCountries = widget.countries;
      } else {
        _filteredCountries = widget.countries.where((country) {
          return country.name.toLowerCase().contains(query) ||
              country.code.toLowerCase().contains(query) ||
              country.dialCode.contains(query);
        }).toList();
      }
    });
  }

  Widget _buildFlagWidget(String countryCode, double size) {
    return Image.asset(
      'assets/flags/${countryCode.toLowerCase()}.png',
      package: 'osmea_components',
      width: size,
      height: size,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        // Fallback widget when flag image fails to load
        return OsmeaComponents.container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: OsmeaColors.silver,
            borderRadius: BorderRadius.circular(context.radiusLow),
          ),
          child: OsmeaComponents.center(
            child: OsmeaComponents.text(
              countryCode,
              fontSize: size * 0.3,
              fontWeight: FontWeight.bold,
              color: OsmeaColors.pewter,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.container(
      height: context.dynamicHeight(0.6),
      child: OsmeaComponents.column(
        children: [
          // Header
          OsmeaComponents.container(
            padding: context.paddingNormal,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: OsmeaColors.silver,
                  width: context.borderWidth,
                ),
              ),
            ),
            child: OsmeaComponents.column(
              children: [
                OsmeaComponents.text(
                  widget.selectCountryTitle,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                OsmeaComponents.sizedBox(height: context.spacing12),
                // Search Input
                OsmeaComponents.textField(
                  controller: _searchController,
                  hint: widget.searchHint,
                  variant: TextFieldVariant.outlined,
                  size: TextFieldSize.small,
                  prefixIcon: Icon(
                    Icons.search,
                    size: context.iconSizeSmall,
                    color: OsmeaColors.pewter,
                  ),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? GestureDetector(
                          onTap: () {
                            _searchController.clear();
                          },
                          child: Icon(
                            Icons.clear,
                            size: context.iconSizeSmall,
                            color: OsmeaColors.pewter,
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
          // Countries List
          OsmeaComponents.expanded(
            child: _filteredCountries.isEmpty
                ? _buildEmptyState()
                : ListView.builder(
                    itemCount: _filteredCountries.length,
                    itemBuilder: (context, index) {
                      final country = _filteredCountries[index];
                      final isSelected =
                          country.code == widget.selectedCountry.code;
                      return ListTile(
                        leading: widget.showFlag
                            ? _buildFlagWidget(country.code, widget.flagSize)
                            : null,
                        title: OsmeaComponents.text(
                          country.name,
                          fontWeight:
                              isSelected ? FontWeight.w600 : FontWeight.normal,
                        ),
                        trailing: OsmeaComponents.text(
                          country.dialCode,
                          fontSize: 14,
                          color: OsmeaColors.pewter,
                          fontWeight:
                              isSelected ? FontWeight.w600 : FontWeight.normal,
                        ),
                        selected: isSelected,
                        selectedColor: OsmeaColors.crystalBay,
                        onTap: () {
                          widget.onCountrySelected(country);
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return OsmeaComponents.center(
      child: OsmeaComponents.column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: context.iconSizeExtraHigh,
            color: OsmeaColors.steel,
          ),
          OsmeaComponents.sizedBox(height: context.spacing16),
          OsmeaComponents.text(
            widget.noCountriesFoundText,
            fontSize: 16,
            color: OsmeaColors.pewter,
            fontWeight: FontWeight.w500,
          ),
          OsmeaComponents.sizedBox(height: context.spacing8),
          OsmeaComponents.text(
            widget.tryDifferentSearchText,
            fontSize: 14,
            color: OsmeaColors.steel,
          ),
        ],
      ),
    );
  }
}
