import 'package:apis/models/auth/woo_jwt_token.dart';
import 'package:flutter/material.dart';
import 'package:apis/apis.dart';
import 'package:api_explorer/services/handlers/woocommerce/auth_handlers/password_update_handler.dart';
import 'package:osmea_components/osmea_components.dart';

/// 🔐 Password Update Widget
/// User-friendly interface for updating user password
class PasswordUpdateWidget extends StatefulWidget {
  const PasswordUpdateWidget({Key? key}) : super(key: key);

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
  String? _resultMessage;
  bool _isSuccess = false;
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

  @override
  void dispose() {
    _emailController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    _jwtTokenController.dispose();
    super.dispose();
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
      _resultMessage = null;
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
        title: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.green[700]),
            const SizedBox(width: 8),
            Text(
              'Success',
              style: TextStyle(
                color: Colors.green[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
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
        title: Row(
          children: [
            Icon(Icons.error, color: Colors.red[700]),
            const SizedBox(width: 8),
            Text(
              'Error',
              style: TextStyle(
                color: Colors.red[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.lock_reset,
                  color: Theme.of(context).primaryColor,
                  size: 28,
                ),
                const SizedBox(width: 12),
                Text(
                  'Password Update',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Update your account password securely',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
            const SizedBox(height: 24),

            // Authentication Status
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: _jwtToken != null ? Colors.green[50] : Colors.red[50],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color:
                      _jwtToken != null ? Colors.green[200]! : Colors.red[200]!,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    _jwtToken != null ? Icons.check_circle : Icons.error,
                    color:
                        _jwtToken != null ? Colors.green[700] : Colors.red[700],
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _jwtToken != null
                          ? 'JWT token loaded. Enter details below to update password.'
                          : 'JWT token not found. Please login first.',
                      style: TextStyle(
                        color: _jwtToken != null
                            ? Colors.green[700]
                            : Colors.red[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // JWT Token Field (Read-only)
            TextFormField(
              controller: _jwtTokenController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'JWT Token',
                hintText: 'JWT token from local storage',
                prefixIcon: const Icon(Icons.security),
                suffixIcon: Icon(
                  _jwtToken != null ? Icons.check_circle : Icons.error,
                  color:
                      _jwtToken != null ? Colors.green[700] : Colors.red[700],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor:
                    _jwtToken != null ? Colors.green[50] : Colors.red[50],
              ),
            ),
            const SizedBox(height: 16),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  // Email Field
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      hintText:
                          'Email of the user whose password you want to update',
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey[50],
                    ),
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
                  const SizedBox(height: 16),

                  // New Password Field
                  TextFormField(
                    controller: _newPasswordController,
                    obscureText: _obscureNewPassword,
                    decoration: InputDecoration(
                      labelText: 'New Password',
                      hintText: 'Choose a strong password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureNewPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureNewPassword = !_obscureNewPassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey[50],
                    ),
                    validator: (value) {
                      if (_jwtToken == null) {
                        return 'Please login first';
                      }
                      if (value == null || value.isEmpty) {
                        return 'New password is required';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),

                  // Confirm Password Field
                  TextFormField(
                    controller: _confirmPasswordController,
                    obscureText: _obscureConfirmPassword,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Re-enter your new password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirmPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey[50],
                    ),
                    validator: (value) {
                      if (_jwtToken == null) {
                        return 'Please login first';
                      }
                      if (value == null || value.isEmpty) {
                        return 'Password confirmation is required';
                      }
                      if (value != _newPasswordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),

                  // Update Button
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: (_jwtToken == null || _isLoading)
                          ? null
                          : _updatePassword,
                      icon: _isLoading
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.white),
                              ),
                            )
                          : const Icon(Icons.update),
                      label: Text(
                        _isLoading
                            ? 'Updating...'
                            : _jwtToken == null
                                ? 'Login Required'
                                : 'Update Password',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 2,
                      ),
                    ),
                  ),

                  // Result Message
                  if (_resultMessage != null) ...[
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _isSuccess ? Colors.green[50] : Colors.red[50],
                        border: Border.all(
                          color: _isSuccess
                              ? Colors.green[200]!
                              : Colors.red[200]!,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            _isSuccess ? Icons.check_circle : Icons.error,
                            color: _isSuccess
                                ? Colors.green[700]
                                : Colors.red[700],
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              _resultMessage!,
                              style: TextStyle(
                                color: _isSuccess
                                    ? Colors.green[700]
                                    : Colors.red[700],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
