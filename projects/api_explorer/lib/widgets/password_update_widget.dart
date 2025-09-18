import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:apis/apis.dart';
import 'package:api_explorer/services/handlers/woocommerce/auth_handlers/password_update_handler.dart';

/// 🔐 Password Update Widget
/// User-friendly interface for updating user password
class PasswordUpdateWidget extends StatefulWidget {
  const PasswordUpdateWidget({super.key});

  @override
  State<PasswordUpdateWidget> createState() => _PasswordUpdateWidgetState();
}

class _PasswordUpdateWidgetState extends State<PasswordUpdateWidget> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _jwtTokenController = TextEditingController();

  bool _isLoading = false;
  bool _obscureNewPassword = true;
  bool _obscureConfirmPassword = true;
  String? _jwtToken;
  String? _currentUserId;

  @override
  void initState() {
    super.initState();
    _loadAuthData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Refresh JWT token when dialog opens
    _loadAuthData();
  }

  /// 🔐 Load JWT token from local storage using WooJwtTokenStorage
  Future<void> _loadAuthData() async {
    try {
      // Use WooJwtTokenStorage which is the correct way to load JWT tokens
      final token = await WooJwtTokenStorage.loadToken();

      if (token != null && token.accessToken.isNotEmpty) {
        setState(() {
          _jwtToken = token.accessToken;
          _currentUserId = token.userData?['id']?.toString();
        });

        // Update JWT token controller
        _jwtTokenController.text = _jwtToken!.length > 50
            ? '${_jwtToken!.substring(0, 50)}...'
            : _jwtToken!;

        debugPrint(
            '🔐 JWT token loaded: ${_jwtToken!.length > 20 ? '${_jwtToken!.substring(0, 20)}...' : _jwtToken}');
        debugPrint('👤 Current user ID: $_currentUserId');
        debugPrint('👤 User data: ${token.userData}');
      } else {
        setState(() {
          _jwtToken = null;
          _currentUserId = null;
        });

        // Update JWT token controller
        _jwtTokenController.text = 'No JWT token found';

        debugPrint('❌ No JWT token found in local storage');
      }
    } catch (e) {
      debugPrint('❌ Error loading JWT token: $e');
      setState(() {
        _jwtToken = null;
        _currentUserId = null;
      });

      // Update JWT token controller
      _jwtTokenController.text = 'Error loading token';
    }
  }

  /// 🔐 Update password using JWT token
  Future<void> _updatePassword() async {
    if (_jwtToken == null) {
      _showErrorDialog('JWT token is required. Please login first.');
      return;
    }

    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      // Use the real API handler
      final handler = PasswordUpdateHandler();

      // Get current store name from WizardHelper
      final currentStore = await WizardHelper.getCurrentStore();
      debugPrint('🔍 Current Store Debug:');
      debugPrint('  - Store: $currentStore');
      debugPrint('  - Store Name: ${currentStore?.storeName}');
      debugPrint('  - Platform: ${currentStore?.platform}');

      if (currentStore == null || currentStore.storeName.isEmpty) {
        _showErrorDialog('Store not selected. Please select a store first.');
        return;
      }

      // Prepare parameters for the handler
      final params = <String, String>{
        'JWT': _jwtToken!,
        'email': _emailController.text.trim(),
        'new_password': _newPasswordController.text,
        'brand_name': currentStore.storeName,
      };

      debugPrint('🔍 Password Update Parameters:');
      debugPrint('  - JWT: ${_jwtToken!.substring(0, 20)}...');
      debugPrint('  - Email: ${_emailController.text.trim()}');
      debugPrint('  - Brand Name: ${currentStore.storeName}');

      // Call the handler
      final result = await handler.handleRequest('POST', params);

      if (result['status'] == 'success') {
        _showSuccessDialog('Password updated successfully!');
        _clearForm();
      } else {
        _showErrorDialog('Failed to update password: ${result['message']}');
      }
    } catch (e) {
      debugPrint('❌ Update password error: $e');
      _showErrorDialog('Error updating password: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  /// 🧹 Clear form fields
  void _clearForm() {
    _emailController.clear();
    _newPasswordController.clear();
    _confirmPasswordController.clear();
  }

  /// ✅ Show success dialog
  void _showSuccessDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: OsmeaColors.white,
        title: OsmeaComponents.row(
          children: [
            Icon(Icons.check_circle, color: OsmeaColors.forestHeart),
            OsmeaComponents.sizedBox(width: 8),
            OsmeaComponents.text(
              'Success',
              variant: OsmeaTextVariant.titleMedium,
              color: OsmeaColors.forestHeart,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        content: OsmeaComponents.text(
          message,
          variant: OsmeaTextVariant.bodyMedium,
        ),
        actions: [
          OsmeaComponents.button(
            text: 'OK',
            onPressed: () => Navigator.of(context).pop(),
            variant: ButtonVariant.primary,
            size: ButtonSize.medium,
            textStyle: OsmeaTextStyle.buttonMedium(context),
          ),
        ],
      ),
    );
  }

  /// ❌ Show error dialog
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: OsmeaComponents.row(
          children: [
            Icon(Icons.error, color: OsmeaColors.amberFlame),
            OsmeaComponents.sizedBox(width: 8),
            OsmeaComponents.text(
              'Error',
              variant: OsmeaTextVariant.titleMedium,
              color: OsmeaColors.amberFlame,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        content: OsmeaComponents.text(
          message,
          variant: OsmeaTextVariant.bodyMedium,
        ),
        actions: [
          OsmeaComponents.button(
            text: 'OK',
            onPressed: () => Navigator.of(context).pop(),
            variant: ButtonVariant.primary,
            size: ButtonSize.medium,
            textStyle: OsmeaTextStyle.buttonMedium(context),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    _jwtTokenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: OsmeaColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: OsmeaColors.platinum,
        ),
      ),
      child: Form(
        key: _formKey,
        child: OsmeaComponents.column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            OsmeaComponents.row(
              children: [
                OsmeaComponents.sizedBox(
                  width: 28,
                  height: 28,
                  child: Icon(
                    Icons.lock_reset,
                    color: OsmeaColors.steel,
                    size: 28,
                  ),
                ),
                OsmeaComponents.sizedBox(width: 12),
                OsmeaComponents.expanded(
                  child: OsmeaComponents.column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OsmeaComponents.text(
                        'Password Update',
                        variant: OsmeaTextVariant.headlineLarge,
                        color: OsmeaColors.steel,
                        fontWeight: FontWeight.bold,
                      ),
                      OsmeaComponents.sizedBox(height: 2),
                      OsmeaComponents.text(
                        'Update your account password securely',
                        variant: OsmeaTextVariant.bodyMedium,
                        color: OsmeaColors.slate,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            OsmeaComponents.sizedBox(height: 20),

            // Authentication Status
            OsmeaComponents.container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: _jwtToken != null
                    ? OsmeaColors.forestHeart.withValues(alpha: 0.1)
                    : OsmeaColors.amberFlame.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: _jwtToken != null
                      ? OsmeaColors.forestHeart
                      : OsmeaColors.amberFlame,
                ),
              ),
              child: OsmeaComponents.row(
                children: [
                  Icon(
                    _jwtToken != null ? Icons.check_circle : Icons.error,
                    color: _jwtToken != null
                        ? OsmeaColors.forestHeart
                        : OsmeaColors.amberFlame,
                  ),
                  OsmeaComponents.sizedBox(width: 8),
                  OsmeaComponents.expanded(
                    child: OsmeaComponents.text(
                      _jwtToken != null
                          ? 'JWT token loaded. Enter details below to update password.'
                          : 'JWT token not found. Please login first.',
                      variant: OsmeaTextVariant.bodyMedium,
                      color: _jwtToken != null
                          ? OsmeaColors.forestHeart
                          : OsmeaColors.amberFlame,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            OsmeaComponents.sizedBox(height: 20),

            // JWT Token Field (Read-only)
            OsmeaComponents.textField(
              controller: _jwtTokenController,
              readOnly: true,
              label: 'JWT Token',
              hint: 'JWT token from local storage',
              prefixIcon: const Icon(Icons.security),
              variant: TextFieldVariant.outlined,
              size: TextFieldSize.medium,
              backgroundColor: _jwtToken != null
                  ? OsmeaColors.forestHeart.withValues(alpha: 0.1)
                  : OsmeaColors.amberFlame.withValues(alpha: 0.1),
              suffixIcon: Icon(
                _jwtToken != null ? Icons.check_circle : Icons.error,
                color: _jwtToken != null
                    ? OsmeaColors.forestHeart
                    : OsmeaColors.amberFlame,
              ),
            ),
            OsmeaComponents.sizedBox(height: 12),

            // Email Field
            OsmeaComponents.textField(
              controller: _emailController,
              label: 'Email Address *',
              hint: 'Enter user email address',
              prefixIcon: const Icon(Icons.email_outlined),
              variant: TextFieldVariant.outlined,
              size: TextFieldSize.medium,
              type: TextFieldType.email,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (_jwtToken == null) {
                  return 'Please login first';
                }
                if (value == null || value.isEmpty) {
                  return 'Email address is required';
                }
                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                    .hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            OsmeaComponents.sizedBox(height: 12),

            // New Password Field
            OsmeaComponents.textField(
              controller: _newPasswordController,
              obscureText: _obscureNewPassword,
              label: 'New Password *',
              hint: 'Choose a strong password',
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureNewPassword ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _obscureNewPassword = !_obscureNewPassword;
                  });
                },
              ),
              variant: TextFieldVariant.outlined,
              size: TextFieldSize.medium,
              validator: (value) {
                if (_jwtToken == null) {
                  return 'Please login first';
                }
                if (value == null || value.isEmpty) {
                  return 'New password is required';
                }
                return null;
              },
            ),
            OsmeaComponents.sizedBox(height: 12),

            // Confirm Password Field
            OsmeaComponents.textField(
              controller: _confirmPasswordController,
              obscureText: _obscureConfirmPassword,
              label: 'Confirm Password *',
              hint: 'Re-enter your new password',
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureConfirmPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _obscureConfirmPassword = !_obscureConfirmPassword;
                  });
                },
              ),
              variant: TextFieldVariant.outlined,
              size: TextFieldSize.medium,
              validator: (value) {
                if (_jwtToken == null) {
                  return 'Please login first';
                }
                if (value == null || value.isEmpty) {
                  return 'Password confirmation is required';
                }
                return null;
              },
            ),
            OsmeaComponents.sizedBox(height: 20),

            // Action Buttons
            OsmeaComponents.row(
              children: [
                OsmeaComponents.expanded(
                  child: OsmeaComponents.button(
                    text: _isLoading
                        ? 'Updating...'
                        : _jwtToken == null
                            ? 'Login Required'
                            : 'Update Password',
                    onPressed: (_jwtToken == null || _isLoading)
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              _updatePassword();
                            }
                          },
                    variant: ButtonVariant.primary,
                    size: ButtonSize.medium,
                    textStyle: OsmeaTextStyle.buttonMedium(context),
                    icon: _isLoading
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Icon(Icons.update),
                    iconPosition: IconPosition.leading,
                    fullWidth: true,
                    state:
                        _isLoading ? ButtonState.loading : ButtonState.enabled,
                  ),
                ),
                OsmeaComponents.sizedBox(width: 12),
                OsmeaComponents.expanded(
                  child: OsmeaComponents.button(
                    text: 'Clear Form',
                    onPressed:
                        (_jwtToken == null || _isLoading) ? null : _clearForm,
                    variant: ButtonVariant.outlined,
                    size: ButtonSize.medium,
                    textStyle: OsmeaTextStyle.buttonMedium(context),
                    icon: const Icon(Icons.clear),
                    iconPosition: IconPosition.leading,
                    fullWidth: true,
                  ),
                ),
              ],
            ),

            // Info Message
            OsmeaComponents.sizedBox(height: 12),
            OsmeaComponents.container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: OsmeaColors.forestHeart.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: OsmeaColors.forestHeart.withValues(alpha: 0.3),
                ),
              ),
              child: OsmeaComponents.row(
                children: [
                  Icon(
                    Icons.info,
                    color: OsmeaColors.forestHeart,
                  ),
                  OsmeaComponents.sizedBox(width: 8),
                  OsmeaComponents.expanded(
                    child: OsmeaComponents.text(
                      'Password will be updated securely. Make sure to use a strong password.',
                      variant: OsmeaTextVariant.bodyMedium,
                      color: OsmeaColors.forestHeart,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
