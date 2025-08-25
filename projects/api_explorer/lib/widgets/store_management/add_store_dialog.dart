import 'package:flutter/material.dart';
import 'package:apis/apis.dart';
import 'package:core/core.dart';

class AddStoreDialog extends StatefulWidget {
  final Function(StoreConfiguration)? onStoreAdded;

  const AddStoreDialog({
    super.key,
    this.onStoreAdded,
  });

  @override
  State<AddStoreDialog> createState() => _AddStoreDialogState();

  /// Show the dialog with wizard functionality
  static Future<StoreConfiguration?> show(
    BuildContext context, {
    Function(StoreConfiguration)? onStoreAdded,
  }) async {
    return showDialog<StoreConfiguration>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AddStoreDialog(onStoreAdded: onStoreAdded);
      },
    );
  }
}

class _AddStoreDialogState extends State<AddStoreDialog>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  late Animation<Offset> _slideAnimation;

  int _currentStep = 0;
  String? _selectedPlatform;
  bool _isLoading = false;

  // Regex patterns for validation (from StoreSetupWizard)
  static final RegExp _storeNameRegex = RegExp(r'^[a-zA-Z0-9\s\-_]{2,50}$');
  static final RegExp _shopifyTokenRegex = RegExp(
      r'^shpat_[a-fA-F0-9]{32}$|^shpca_[a-fA-F0-9]{32}$|^[a-fA-F0-9]{32}$');
  static final RegExp _apiVersionRegex = RegExp(r'^\d{4}-\d{2}$');
  static final RegExp _wooCommerceApiVersionRegex = RegExp(r'^v[0-9]+$');
  static final RegExp _wooCommerceUrlRegex =
      RegExp(r'^https?://[a-zA-Z0-9\-\.:]+(?:\.[a-zA-Z]{2,}|:\d+)/?.*$');

  // Validation error messages
  String? _storeNameError;
  String? _accessTokenError;
  String? _apiVersionError;
  String? _storeUrlError;
  String? _usernameError;
  String? _passwordError;

  // Controllers for form fields
  final _storeNameController = TextEditingController();
  final _accessTokenController = TextEditingController();
  final _apiVersionController = TextEditingController();
  final _storeUrlController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedPlatform = 'shopify'; // Default to Shopify
    _apiVersionController.text = '2025-07'; // Default Shopify API version
    _initializeAnimations();
    _setupAutoFillListeners();
    
    debugPrint('🔧 AddStoreDialog initialized');
    debugPrint('🔧 Initial platform: $_selectedPlatform');
    debugPrint('🔧 Initial API version: ${_apiVersionController.text}');
    debugPrint('🔧 Initial step: $_currentStep');
  }

  void _setupAutoFillListeners() {
    // Auto-fill store URL for Shopify when store name changes
    _storeNameController.addListener(() {
      if (_selectedPlatform == 'shopify') {
        // No auto URL for Shopify since it's handled differently
      }
    });
  }

  void _initializeAnimations() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.0, 0.8, curve: Curves.elasticOut),
    ));

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.0, 0.6, curve: Curves.easeIn),
    ));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.2, 1.0, curve: Curves.easeOutCubic),
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    // Remove listeners before disposing controllers
    _storeNameController.removeListener(() {});
    _storeNameController.dispose();
    _accessTokenController.dispose();
    _apiVersionController.dispose();
    _storeUrlController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool _validateForm() {
    setState(() {
      _storeNameError = null;
      _accessTokenError = null;
      _apiVersionError = null;
      _storeUrlError = null;
      _usernameError = null;
      _passwordError = null;
    });

    bool isValid = true;

    // Store name validation
    if (_storeNameController.text.isEmpty) {
      _storeNameError = 'Store name is required';
      isValid = false;
    } else if (!_storeNameRegex.hasMatch(_storeNameController.text)) {
      _storeNameError = 'Store name must be 2-50 characters, alphanumeric with spaces, hyphens, underscores';
      isValid = false;
    }

    if (_selectedPlatform == 'shopify') {
      // Shopify access token validation
      if (_accessTokenController.text.isEmpty) {
        _accessTokenError = 'Access token is required';
        isValid = false;
      } else if (!_shopifyTokenRegex.hasMatch(_accessTokenController.text)) {
        _accessTokenError = 'Invalid Shopify access token format';
        isValid = false;
      }

      // API version validation
      if (_apiVersionController.text.isEmpty) {
        _apiVersionError = 'API version is required';
        isValid = false;
      } else if (!_apiVersionRegex.hasMatch(_apiVersionController.text)) {
        _apiVersionError = 'API version must be in format YYYY-MM (e.g., 2025-07)';
        isValid = false;
      }
    } else if (_selectedPlatform == 'woocommerce') {
      // WooCommerce store URL validation
      if (_storeUrlController.text.isEmpty) {
        _storeUrlError = 'Store URL is required';
        isValid = false;
      } else if (!_wooCommerceUrlRegex.hasMatch(_storeUrlController.text)) {
        _storeUrlError = 'Please enter a valid URL (e.g., https://mysite.com)';
        isValid = false;
      }

      // Username validation
      if (_usernameController.text.isEmpty) {
        _usernameError = 'Username is required';
        isValid = false;
      }

      // Password validation
      if (_passwordController.text.isEmpty) {
        _passwordError = 'Password is required';
        isValid = false;
      }

      // API version validation for WooCommerce
      if (_apiVersionController.text.isEmpty) {
        _apiVersionError = 'API version is required';
        isValid = false;
      } else if (!_wooCommerceApiVersionRegex.hasMatch(_apiVersionController.text)) {
        _apiVersionError = 'API version must be in format v1, v2, v3, etc.';
        isValid = false;
      }
    }

    if (!isValid) {
      setState(() {});
    }

    return isValid;
  }

  void _showErrorMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: OsmeaComponents.text(
          message,
          textStyle: OsmeaTextStyle.bodyMedium(context),
        ),
        backgroundColor: OsmeaColors.slate,
      ),
    );
  }

  void _nextStep() {
    debugPrint('🔧 _nextStep called. Current step: $_currentStep');
    
    // Validate platform selection on first step
    if (_currentStep == 0 && _selectedPlatform == null) {
      _showErrorMessage('Please select a platform first');
      return;
    }

    // Only validate specific fields for each step
    if (_currentStep == 1) {
      // Store Details step - only validate store name and API version
      bool isValidStoreDetails = true;
      
      if (_storeNameController.text.trim().isEmpty) {
        setState(() {
          _storeNameError = 'Store name is required';
        });
        isValidStoreDetails = false;
      } else if (!_storeNameRegex.hasMatch(_storeNameController.text.trim())) {
        setState(() {
          _storeNameError = 'Store name must be 2-50 characters, alphanumeric with spaces, hyphens, underscores';
        });
        isValidStoreDetails = false;
      } else {
        setState(() {
          _storeNameError = null;
        });
      }

      if (_apiVersionController.text.trim().isEmpty) {
        setState(() {
          _apiVersionError = 'API version is required';
        });
        isValidStoreDetails = false;
      } else {
        // Check API version format based on platform
        if (_selectedPlatform == 'shopify' && !_apiVersionRegex.hasMatch(_apiVersionController.text.trim())) {
          setState(() {
            _apiVersionError = 'API version must be in format YYYY-MM (e.g., 2025-07)';
          });
          isValidStoreDetails = false;
        } else if (_selectedPlatform == 'woocommerce' && !_wooCommerceApiVersionRegex.hasMatch(_apiVersionController.text.trim())) {
          setState(() {
            _apiVersionError = 'API version must be in format v1, v2, v3, etc.';
          });
          isValidStoreDetails = false;
        } else {
          setState(() {
            _apiVersionError = null;
          });
        }
      }

      if (!isValidStoreDetails) {
        _showErrorMessage('Please complete all required fields correctly');
        return;
      }
    }

    if (_currentStep < 2) {
      debugPrint('✅ Moving to next step: ${_currentStep + 1}');
      setState(() {
        _currentStep++;
      });
      debugPrint('✅ Current step updated to: $_currentStep');
    } else {
      debugPrint('⚠️ Already at last step: $_currentStep');
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
    }
  }

  Future<void> _completeSetup() async {
    if (!_validateForm()) {
      _showErrorMessage('Please complete all required fields');
      return;
    }

    try {
      setState(() {
        _isLoading = true;
      });

      final config = StoreConfiguration(
        id: null,
        storeName: _storeNameController.text.trim(),
        displayName: _storeNameController.text.trim(),
        platform: _selectedPlatform!,
        shopifyAccessToken: _selectedPlatform == 'shopify'
            ? _accessTokenController.text.trim()
            : null,
        apiVersion: _apiVersionController.text.trim(),
        storeUrl: _selectedPlatform == 'woocommerce'
            ? _storeUrlController.text.trim()
            : null,
        username: _selectedPlatform == 'woocommerce'
            ? _usernameController.text.trim()
            : null,
        password: _selectedPlatform == 'woocommerce'
            ? _passwordController.text.trim()
            : null,
        isActive: true,
        isDefault: false, // Don't make it default automatically
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      // Add store using WizardHelper
      final success = await WizardHelper.addStore(config);
      
      if (success) {
        // Notify parent about the new store
        widget.onStoreAdded?.call(config);

        // Reinitialize networks after configuration
        try {
          await _reinitializeNetworks(config);
        } catch (e) {
          // Network reinitialization is not critical for store addition
          debugPrint('Warning: Failed to reinitialize networks: $e');
        }

        if (mounted) {
          // Show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: OsmeaComponents.column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OsmeaComponents.text(
                    '✅ Store configuration saved successfully!',
                    textStyle: OsmeaTextStyle.bodyMedium(context).copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  OsmeaComponents.sizedBox(height: 4),
                  OsmeaComponents.text(
                    '${config.platform.toUpperCase()}: ${config.displayName}',
                    textStyle: OsmeaTextStyle.captionMedium(context),
                  ),
                  OsmeaComponents.text(
                    'You can now explore APIs for this platform',
                    textStyle: OsmeaTextStyle.captionMedium(context),
                  ),
                ],
              ),
              backgroundColor: OsmeaColors.forestHeart,
              duration: const Duration(seconds: 4),
              behavior: SnackBarBehavior.floating,
            ),
          );

          // Wait a bit for the message to be visible, then close
          await Future.delayed(const Duration(milliseconds: 1000));
          
          if (mounted) {
            Navigator.of(context).pop(config);
          }
        }
      } else {
        if (mounted) {
          _showErrorMessage('Failed to save store configuration. Please try again.');
        }
      }
    } catch (e) {
      if (mounted) {
        _showErrorMessage('Error: ${e.toString()}');
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  /// Reinitialize networks after store configuration
  Future<void> _reinitializeNetworks(StoreConfiguration config) async {
    try {
      if (config.platform == 'shopify') {
        // Reinitialize Shopify network
        // Network initialization will be handled by the parent component
      } else if (config.platform == 'woocommerce') {
        // Reinitialize WooCommerce network
        // Network initialization will be handled by the parent component
      }
    } catch (e) {
      debugPrint('Error reinitializing networks: $e');
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return FadeTransition(
          opacity: _opacityAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Dialog(
                backgroundColor: OsmeaColors.transparent,
                child: OsmeaComponents.container(
                  width: context.dynamicWidth(0.9999), // 70% of screen width
                  constraints: BoxConstraints(
                    maxHeight:
                        context.dynamicHeight(0.7), // 70% of screen height
                    maxWidth: context.width384, // Maximum 384px width
                    minWidth: context.width320, // Minimum 320px width
                  ),
                  decoration: BoxDecoration(
                    color: OsmeaColors.white,
                    borderRadius: context.borderRadiusNormal,
                    boxShadow: [
                      BoxShadow(
                        color: OsmeaColors.black
                            .withValues(alpha: context.alpha20),
                        blurRadius: context.blurRadius20,
                        offset: context.offsetCustom(0, context.spacing10),
                      ),
                    ],
                  ),
                  child: OsmeaComponents.column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Header
                      OsmeaComponents.container(
                        width: double.infinity,
                        padding: context.paddingNormal,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              OsmeaColors.nordicBlue,
                              OsmeaColors.eclipse
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(context.radiusNormal),
                            topRight: Radius.circular(context.radiusNormal),
                          ),
                        ),
                        child: OsmeaComponents.row(
                          children: [
                            OsmeaComponents.container(
                              padding: context.paddingLow,
                              decoration: BoxDecoration(
                                color: OsmeaColors.white
                                    .withValues(alpha: context.alpha20),
                                borderRadius: context.borderRadiusNormal,
                              ),
                              child: Icon(
                                Icons.add_business,
                                color: OsmeaColors.white,
                                size: context.iconSizeNormal,
                              ),
                            ),
                            OsmeaComponents.sizedBox(width: context.spacing16),
                            OsmeaComponents.text(
                              'Add New Store',
                              textStyle: OsmeaTextStyle.displayMedium(context)
                                  .copyWith(
                                color: OsmeaColors.white,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: Icon(
                                Icons.close,
                                color: OsmeaColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Step indicator
                      OsmeaComponents.container(
                        padding: context.paddingNormal,
                        child: _buildStepIndicator(),
                      ),

                      // Content
                      Expanded(
                        child: OsmeaComponents.singleChildScrollView(
                          padding: context.horizontalPaddingNormal,
                          child: _buildStepContent(),
                        ),
                      ),

                      // Bottom navigation
                      OsmeaComponents.container(
                        padding: context.paddingNormal,
                        child: _buildNavigationButtons(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildStepIndicator() {
    return OsmeaComponents.row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return OsmeaComponents.container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index <= _currentStep
                ? OsmeaColors.nordicBlue
                : OsmeaColors.silver,
          ),
        );
      }),
    );
  }

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0:
        return _buildPlatformSelectionStep();
      case 1:
        return _buildStoreDetailsStep();
      case 2:
        return _buildCredentialsStep();
      default:
        return OsmeaComponents.container();
    }
  }

  Widget _buildPlatformSelectionStep() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OsmeaComponents.text(
          'Choose Your E-commerce Platform',
          textStyle: OsmeaTextStyle.displaySmall(context),
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.text(
          'Select the platform you want to integrate with:',
          textStyle: OsmeaTextStyle.bodyMedium(context).copyWith(
            color: OsmeaColors.steel,
          ),
        ),
        OsmeaComponents.sizedBox(height: 32),

        // Shopify Option
        OsmeaComponents.container(
          margin: const EdgeInsets.only(bottom: 16),
          child: InkWell(
            onTap: () {
              debugPrint('🔧 Shopify platform selected');
              setState(() {
                _selectedPlatform = 'shopify';
                _apiVersionController.text = '2025-07'; // Default Shopify API version
              });
              debugPrint('🔧 Platform updated to: $_selectedPlatform');
              debugPrint('🔧 API version updated to: ${_apiVersionController.text}');
            },
            borderRadius: BorderRadius.circular(12),
            child: OsmeaComponents.container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: _selectedPlatform == 'shopify'
                      ? OsmeaColors.nordicBlue
                      : OsmeaColors.silver,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
                color: _selectedPlatform == 'shopify'
                    ? OsmeaColors.nordicBlue.withValues(alpha: 0.1)
                    : OsmeaColors.transparent,
              ),
              child: OsmeaComponents.row(
                children: [
                  OsmeaComponents.container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: OsmeaColors.forestHeart,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.shopping_bag,
                      color: OsmeaColors.white,
                      size: 24,
                    ),
                  ),
                  OsmeaComponents.sizedBox(width: 16),
                  Expanded(
                    child: OsmeaComponents.column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OsmeaComponents.text(
                          'Shopify',
                          textStyle: OsmeaTextStyle.bodyLarge(context).copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        OsmeaComponents.sizedBox(height: 4),
                        OsmeaComponents.text(
                          'Integrate with your Shopify store',
                          textStyle:
                              OsmeaTextStyle.bodyMedium(context).copyWith(
                            color: OsmeaColors.steel,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (_selectedPlatform == 'shopify')
                    OsmeaComponents.container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: OsmeaColors.nordicBlue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.check,
                        color: OsmeaColors.white,
                        size: 16,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),

        // WooCommerce Option
        InkWell(
          onTap: () {
            debugPrint('🔧 WooCommerce platform selected');
            setState(() {
              _selectedPlatform = 'woocommerce';
              _apiVersionController.text = 'v3'; // Default WooCommerce API version
            });
            debugPrint('🔧 Platform updated to: $_selectedPlatform');
            debugPrint('🔧 API version updated to: ${_apiVersionController.text}');
          },
          borderRadius: BorderRadius.circular(12),
          child: OsmeaComponents.container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: _selectedPlatform == 'woocommerce'
                    ? OsmeaColors.nordicBlue
                    : OsmeaColors.silver,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
              color: _selectedPlatform == 'woocommerce'
                  ? OsmeaColors.nordicBlue.withValues(alpha: 0.1)
                  : OsmeaColors.transparent,
            ),
            child: OsmeaComponents.row(
              children: [
                OsmeaComponents.container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: OsmeaColors.nordicBlue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.wordpress,
                    color: OsmeaColors.white,
                    size: 24,
                  ),
                ),
                OsmeaComponents.sizedBox(width: 16),
                Expanded(
                  child: OsmeaComponents.column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OsmeaComponents.text(
                        'WooCommerce',
                        textStyle: OsmeaTextStyle.bodyLarge(context).copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      OsmeaComponents.sizedBox(height: 4),
                      OsmeaComponents.text(
                        'Integrate with your WordPress/WooCommerce store',
                        textStyle: OsmeaTextStyle.bodyMedium(context).copyWith(
                          color: OsmeaColors.steel,
                        ),
                      ),
                    ],
                  ),
                ),
                if (_selectedPlatform == 'woocommerce')
                  OsmeaComponents.container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: OsmeaColors.nordicBlue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check,
                      color: OsmeaColors.white,
                      size: 16,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStoreDetailsStep() {
    debugPrint('🔧 Building Store Details Step');
    debugPrint('🔧 Current platform: $_selectedPlatform');
    debugPrint('🔧 Store name: ${_storeNameController.text}');
    debugPrint('🔧 API version: ${_apiVersionController.text}');
    
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OsmeaComponents.text(
          'Store Details',
          textStyle: OsmeaTextStyle.displaySmall(context),
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.text(
          'Enter your store information:',
          textStyle: OsmeaTextStyle.bodyMedium(context).copyWith(
            color: OsmeaColors.steel,
          ),
        ),
        OsmeaComponents.sizedBox(height: 32),
        OsmeaComponents.column(
          children: [
            OsmeaComponents.textField(
              controller: _storeNameController,
              label: 'Store Name',
              hint: _selectedPlatform == 'shopify'
                  ? 'mystore (for mystore.myshopify.com)'
                  : 'MyStore',
              prefixIcon: const Icon(Icons.store),
              variant: TextFieldVariant.outlined,
              type: TextFieldType.text,
              errorText: _storeNameError,
              onChanged: (value) {
                debugPrint('🔧 Store name changed: $value');
                // Clear error when user types
                if (_storeNameError != null && value.trim().isNotEmpty) {
                  setState(() {
                    _storeNameError = null;
                  });
                }
              },
            ),
            OsmeaComponents.sizedBox(height: 20),
            OsmeaComponents.textField(
              controller: _apiVersionController,
              label: 'API Version',
              hint: _selectedPlatform == 'shopify' ? '2025-07' : 'v3',
              prefixIcon: const Icon(Icons.api),
              variant: TextFieldVariant.outlined,
              type: TextFieldType.text,
              errorText: _apiVersionError,
              onChanged: (value) {
                debugPrint('🔧 API version changed: $value');
                // Clear error when user types
                if (_apiVersionError != null && value.trim().isNotEmpty) {
                  setState(() {
                    _apiVersionError = null;
                  });
                }
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCredentialsStep() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OsmeaComponents.text(
          '${_selectedPlatform == 'shopify' ? 'Shopify' : 'WooCommerce'} Credentials',
          textStyle: OsmeaTextStyle.displaySmall(context),
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.text(
          'Enter your ${_selectedPlatform == 'shopify' ? 'Shopify access token' : 'WooCommerce login credentials'}:',
          textStyle: OsmeaTextStyle.bodyMedium(context).copyWith(
            color: OsmeaColors.steel,
          ),
        ),
        OsmeaComponents.sizedBox(height: 32),
        if (_selectedPlatform == 'shopify') ...[
          OsmeaComponents.textField(
            controller: _accessTokenController,
            label: 'Access Token',
            hint: 'shpat_xxxxxxxxxxxxxxxxxxxxx',
            prefixIcon: const Icon(Icons.key),
            variant: TextFieldVariant.outlined,
            type: TextFieldType.text,
            errorText: _accessTokenError,
          ),
        ] else if (_selectedPlatform == 'woocommerce') ...[
          OsmeaComponents.textField(
            controller: _storeUrlController,
            label: 'Store URL',
            hint: 'https://mysite.com',
            prefixIcon: const Icon(Icons.link),
            variant: TextFieldVariant.outlined,
            type: TextFieldType.text,
            errorText: _storeUrlError,
          ),
          OsmeaComponents.sizedBox(height: 20),
          OsmeaComponents.textField(
            controller: _usernameController,
            label: 'Username',
            hint: 'your_username',
            prefixIcon: const Icon(Icons.person),
            variant: TextFieldVariant.outlined,
            type: TextFieldType.text,
            errorText: _usernameError,
          ),
          OsmeaComponents.sizedBox(height: 20),
          OsmeaComponents.textField(
            controller: _passwordController,
            label: 'Password',
            hint: 'your_password',
            prefixIcon: const Icon(Icons.lock),
            variant: TextFieldVariant.outlined,
            type: TextFieldType.password,
            errorText: _passwordError,
          ),
        ],
      ],
    );
  }

  Widget _buildNavigationButtons() {
    return OsmeaComponents.row(
      children: [
        if (_currentStep > 0)
          Expanded(
            child: OsmeaComponents.button(
              text: 'Previous',
              variant: ButtonVariant.outlined,
              size: ButtonSize.large,
              onPressed: _previousStep,
            ),
          ),
        if (_currentStep > 0) OsmeaComponents.sizedBox(width: context.spacing16),
        Expanded(
          child: OsmeaComponents.button(
            text: _currentStep == 2 ? 'Complete Setup' : 'Next',
            variant: ButtonVariant.primary,
            size: ButtonSize.large,
            onPressed: _isLoading
                ? null
                : (_currentStep == 2 ? _completeSetup : () {
                    debugPrint('🔧 Next button pressed at step: $_currentStep');
                    _nextStep();
                  }),
            state: _isLoading ? ButtonState.loading : ButtonState.enabled,
          ),
        ),
      ],
    );
  }
}
