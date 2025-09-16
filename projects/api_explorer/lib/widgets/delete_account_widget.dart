import 'package:apis/models/auth/woo_jwt_token.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:api_explorer/services/handlers/woocommerce/auth_handlers/delete_user_handler.dart';

/// 🗑️ Delete Account Widget
///
/// Provides a user-friendly interface for deleting user accounts
/// with JWT token from local storage
class DeleteAccountWidget extends StatefulWidget {
  const DeleteAccountWidget({super.key});

  @override
  State<DeleteAccountWidget> createState() => _DeleteAccountWidgetState();
}

class _DeleteAccountWidgetState extends State<DeleteAccountWidget> {
  final _formKey = GlobalKey<FormState>();
  final _authKeyController = TextEditingController();
  final _jwtTokenController = TextEditingController();
  bool _isLoading = false;
  String? _jwtToken;
  String? _currentUserId;

  @override
  void initState() {
    super.initState();
    _loadAuthData();

    // Add listener to AUTH_KEY field for real-time updates
    _authKeyController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
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

  /// 🗑️ Delete current user account using JWT and AUTH_KEY
  Future<void> _deleteAccount() async {
    if (_jwtToken == null) {
      _showErrorDialog('JWT token is required. Please login first.');
      return;
    }

    if (_authKeyController.text.trim().isEmpty) {
      _showErrorDialog('Please enter AUTH_KEY to delete account.');
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      // Use the real API handler
      final handler = DeleteUserHandler();

      // Prepare parameters for the handler
      final params = <String, String>{
        'JWT': _jwtToken!,
        'AUTH_KEY': _authKeyController.text.trim(),
      };

      // Call the handler
      final result = await handler.handleRequest('DELETE', params);

      if (result['status'] == 'success') {
        _showSuccessDialog('Account deleted successfully!');
        _clearForm();
      } else {
        _showErrorDialog('Failed to delete account: ${result['message']}');
      }
    } catch (e) {
      debugPrint('❌ Delete account error: $e');
      _showErrorDialog('Error deleting account: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  /// 🧹 Clear form fields
  void _clearForm() {
    _authKeyController.clear();
  }

  /// ✅ Show success dialog
  void _showSuccessDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
    _authKeyController.dispose();
    _jwtTokenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.sizedBox(
      width: 400,
      child: OsmeaComponents.basicCard(
        variant: ComponentAppearance.elevated,
        size: ComponentSize.medium,
        customContent: OsmeaComponents.padding(
          padding: const EdgeInsets.all(20),
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
                        Icons.delete_forever,
                        color: OsmeaColors.amberFlame,
                        size: 28,
                      ),
                    ),
                    OsmeaComponents.sizedBox(width: 12),
                    OsmeaComponents.expanded(
                      child: OsmeaComponents.column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OsmeaComponents.text(
                            'Delete Account',
                            variant: OsmeaTextVariant.headlineLarge,
                            color: OsmeaColors.amberFlame,
                            fontWeight: FontWeight.bold,
                          ),
                          OsmeaComponents.sizedBox(height: 2),
                          OsmeaComponents.text(
                            'Permanently delete your account. This action cannot be undone.',
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
                        ? OsmeaColors.forestHeart.withOpacity(0.1)
                        : OsmeaColors.amberFlame.withOpacity(0.1),
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
                              ? 'JWT token loaded. Enter AUTH_KEY below to delete your account.'
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
                      ? OsmeaColors.forestHeart.withOpacity(0.1)
                      : OsmeaColors.amberFlame.withOpacity(0.1),
                  suffixIcon: Icon(
                    _jwtToken != null ? Icons.check_circle : Icons.error,
                    color: _jwtToken != null
                        ? OsmeaColors.forestHeart
                        : OsmeaColors.amberFlame,
                  ),
                ),
                OsmeaComponents.sizedBox(height: 12),

                // AUTH_KEY Field (Required)
                OsmeaComponents.textField(
                  controller: _authKeyController,
                  enabled: true, // Always enabled to show the field
                  label: 'AUTH_KEY *',
                  hint: _jwtToken == null
                      ? 'Please login first'
                      : 'Enter AUTH_KEY for deletion',
                  prefixIcon: const Icon(Icons.key),
                  variant: TextFieldVariant.outlined,
                  size: TextFieldSize.medium,
                  type: TextFieldType.text,
                  backgroundColor: _jwtToken == null
                      ? OsmeaColors.slate.withOpacity(0.05)
                      : OsmeaColors.white,
                  onChanged: (value) {
                    debugPrint('🔑 AUTH_KEY changed: $value');
                  },
                  validator: (value) {
                    if (_jwtToken == null) {
                      return 'Please login first';
                    }
                    if (value == null || value.trim().isEmpty) {
                      return 'AUTH_KEY is required';
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
                            ? 'Deleting...'
                            : _jwtToken == null
                                ? 'Login Required'
                                : 'Delete Account',
                        onPressed: (_jwtToken == null || _isLoading)
                            ? null
                            : () {
                                if (_formKey.currentState!.validate()) {
                                  _deleteAccount();
                                }
                              },
                        variant: ButtonVariant.danger,
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
                            : const Icon(Icons.delete_forever),
                        iconPosition: IconPosition.leading,
                        fullWidth: true,
                        state: _isLoading
                            ? ButtonState.loading
                            : ButtonState.enabled,
                      ),
                    ),
                    OsmeaComponents.sizedBox(width: 12),
                    OsmeaComponents.expanded(
                      child: OsmeaComponents.button(
                        text: 'Clear Form',
                        onPressed: (_jwtToken == null || _isLoading)
                            ? null
                            : _clearForm,
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

                // Warning Message
                OsmeaComponents.sizedBox(height: 12),
                OsmeaComponents.container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: OsmeaColors.sunsetGlow.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: OsmeaColors.sunsetGlow.withOpacity(0.3),
                    ),
                  ),
                  child: OsmeaComponents.row(
                    children: [
                      Icon(
                        Icons.warning,
                        color: OsmeaColors.sunsetGlow,
                      ),
                      OsmeaComponents.sizedBox(width: 8),
                      OsmeaComponents.expanded(
                        child: OsmeaComponents.text(
                          'This action cannot be undone. All your data will be permanently deleted.',
                          variant: OsmeaTextVariant.bodyMedium,
                          color: OsmeaColors.sunsetGlow,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
