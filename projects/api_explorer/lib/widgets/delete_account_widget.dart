import 'package:apis/models/auth/woo_jwt_token.dart';
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
        debugPrint(
            '🔐 JWT token loaded: ${_jwtToken!.length > 20 ? '${_jwtToken!.substring(0, 20)}...' : _jwtToken}');
        debugPrint('👤 Current user ID: $_currentUserId');
      } else {
        setState(() {
          _jwtToken = null;
          _currentUserId = null;
        });
        debugPrint('❌ No JWT token found in local storage');
      }
    } catch (e) {
      debugPrint('❌ Error loading JWT token: $e');
      setState(() {
        _jwtToken = null;
        _currentUserId = null;
      });
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
        title: const Row(
          children: [
            Icon(Icons.check_circle, color: Colors.green),
            SizedBox(width: 8),
            Text('Success'),
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
        title: const Row(
          children: [
            Icon(Icons.error, color: Colors.red),
            SizedBox(width: 8),
            Text('Error'),
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
  void dispose() {
    _authKeyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.8,
      ),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    const Icon(Icons.delete_forever,
                        color: Colors.red, size: 28),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Delete Account',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Permanently delete your account. This action cannot be undone.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Authentication Status
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color:
                        _jwtToken != null ? Colors.green[50] : Colors.red[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: _jwtToken != null ? Colors.green : Colors.red,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        _jwtToken != null ? Icons.check_circle : Icons.error,
                        color: _jwtToken != null ? Colors.green : Colors.red,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          _jwtToken != null
                              ? 'JWT token loaded. Enter AUTH_KEY below to delete your account.'
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
                const SizedBox(height: 24),

                // JWT Token Field (Read-only)
                TextFormField(
                  initialValue: _jwtToken != null
                      ? (_jwtToken!.length > 50
                          ? '${_jwtToken!.substring(0, 50)}...'
                          : _jwtToken!)
                      : 'No JWT token found',
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'JWT Token',
                    hintText: 'JWT token from local storage',
                    prefixIcon: const Icon(Icons.security),
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor:
                        _jwtToken != null ? Colors.green[50] : Colors.red[50],
                    suffixIcon: Icon(
                      _jwtToken != null ? Icons.check_circle : Icons.error,
                      color: _jwtToken != null ? Colors.green : Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // AUTH_KEY Field (Required)
                TextFormField(
                  controller: _authKeyController,
                  enabled: _jwtToken != null,
                  decoration: InputDecoration(
                    labelText: 'AUTH_KEY *',
                    hintText: _jwtToken == null
                        ? 'Please login first'
                        : 'Enter AUTH_KEY for deletion',
                    prefixIcon: const Icon(Icons.key),
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: _jwtToken == null ? Colors.grey[100] : null,
                  ),
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
                const SizedBox(height: 24),

                // Action Buttons
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: (_jwtToken == null || _isLoading)
                            ? null
                            : () {
                                if (_formKey.currentState!.validate()) {
                                  _deleteAccount();
                                }
                              },
                        icon: _isLoading
                            ? const SizedBox(
                                width: 16,
                                height: 16,
                                child:
                                    CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Icon(Icons.delete_forever),
                        label: Text(_isLoading
                            ? 'Deleting...'
                            : _jwtToken == null
                                ? 'Login Required'
                                : 'Delete Account'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              _jwtToken == null ? Colors.grey : Colors.red,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: (_jwtToken == null || _isLoading)
                            ? null
                            : _clearForm,
                        icon: const Icon(Icons.clear),
                        label: const Text('Clear Form'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                  ],
                ),

                // Warning Message
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.orange[200]!),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.warning, color: Colors.orange[700]),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'This action cannot be undone. All your data will be permanently deleted.',
                          style: TextStyle(
                            color: Colors.orange[700],
                            fontWeight: FontWeight.w500,
                          ),
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
