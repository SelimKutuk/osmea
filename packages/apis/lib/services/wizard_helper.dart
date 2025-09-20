import 'package:apis/services/store_management_service.dart';
import 'package:apis/services/store_change_notifier.dart';
import 'package:apis/models/store_configuration.dart';
import 'package:flutter/foundation.dart';

class WizardHelper {
  static final WizardHelper _instance = WizardHelper._internal();
  factory WizardHelper() => _instance;
  WizardHelper._internal();

  static StoreManagementService? _storeService;
  static StoreChangeNotifier? _changeNotifier;
  static bool _isInitialized = false;

  /// Initialize the wizard helper
  static Future<void> init() async {
    if (_isInitialized) {
      debugPrint('🔧 WizardHelper already initialized, skipping...');
      return;
    }

    try {
      debugPrint('🔧 Initializing WizardHelper...');
      _storeService = StoreManagementService();
      _changeNotifier = StoreChangeNotifier();
      await _storeService!.init();
      _isInitialized = true;
      debugPrint('✅ WizardHelper initialized successfully');
    } catch (e) {
      debugPrint('❌ Error initializing WizardHelper: $e');
      rethrow;
    }
  }

  /// Get the store change notifier stream
  static Stream<StoreChangeEvent> get storeChangeStream {
    if (_changeNotifier == null) {
      throw Exception('WizardHelper not initialized. Call init() first.');
    }
    return _changeNotifier!.stream;
  }

  /// Add a new store
  static Future<bool> addStore(StoreConfiguration config) async {
    if (_storeService == null) {
      throw Exception('WizardHelper not initialized. Call init() first.');
    }
    return await _storeService!.addStore(config);
  }

  /// Update an existing store
  static Future<bool> updateStore(StoreConfiguration config) async {
    if (_storeService == null) {
      throw Exception('WizardHelper not initialized. Call init() first.');
    }
    return await _storeService!.updateStore(config);
  }

  /// Get current store
  static Future<StoreConfiguration?> getCurrentStore() async {
    if (_storeService == null) {
      throw Exception('WizardHelper not initialized. Call init() first.');
    }
    return await _storeService!.getCurrentStore();
  }

  /// Get all stores
  static Future<List<StoreConfiguration>> getAllStores() async {
    if (_storeService == null) {
      throw Exception('WizardHelper not initialized. Call init() first.');
    }
    return await _storeService!.getAllStores();
  }

  /// Get active stores
  static Future<List<StoreConfiguration>> getActiveStores() async {
    if (_storeService == null) {
      throw Exception('WizardHelper not initialized. Call init() first.');
    }
    return await _storeService!.getActiveStores();
  }

  /// Get stores by platform
  static Future<List<StoreConfiguration>> getStoresByPlatform(
      String platform) async {
    if (_storeService == null) {
      throw Exception('WizardHelper not initialized. Call init() first.');
    }
    return _storeService!.getStoresByPlatform(platform);
  }

  /// Get store profile for UI display
  static Future<Map<String, dynamic>?> getStoreProfile() async {
    try {
      final currentStore = await getCurrentStore();
      if (currentStore == null) {
        return null;
      }

      return {
        'id': currentStore.id,
        'name': currentStore.displayName,
        'platform': currentStore.platform,
        'platformDisplayName': _getPlatformDisplayName(currentStore.platform),
        'icon': _getPlatformIcon(currentStore.platform),
        'color': _getPlatformColor(currentStore.platform),
        'baseUrl': currentStore.baseUrl,
        'apiVersion': currentStore.apiVersion,
      };
    } catch (e) {
      debugPrint('❌ Error getting store profile: $e');
      return null;
    }
  }

  /// Load configuration for specific platform
  static Future<StoreConfiguration?> loadConfiguration() async {
    try {
      return await getCurrentStore();
    } catch (e) {
      debugPrint('❌ Error loading configuration: $e');
      return null;
    }
  }

  /// Get configuration status
  static Future<String> getConfigurationStatus() async {
    try {
      final config = await getCurrentStore();
      if (config == null) {
        return 'No configuration found';
      }

      if (config.isComplete) {
        return 'Configuration complete for ${config.platform}';
      } else {
        return 'Configuration incomplete for ${config.platform}';
      }
    } catch (e) {
      return 'Error getting configuration status: $e';
    }
  }

  /// Get brand name from current store configuration
  static Future<String?> getBrandName() async {
    try {
      final currentStore = await getCurrentStore();
      return currentStore?.storeName;
    } catch (e) {
      debugPrint('❌ Error getting brand name: $e');
      return null;
    }
  }

  /// Get brand name for authentication requests
  static Future<String> getBrandNameForAuth() async {
    try {
      final brandName = await getBrandName();
      return brandName ?? 'woocomm'; // Default fallback
    } catch (e) {
      debugPrint('❌ Error getting brand name for auth: $e');
      return 'woocomm'; // Default fallback
    }
  }

  /// Get storage information
  static Future<Map<String, dynamic>> getStorageInfo() async {
    try {
      final allStores = await getAllStores();
      final currentStore = await getCurrentStore();

      return {
        'total_stores': allStores.length,
        'active_stores': allStores.where((s) => s.isActive).length,
        'current_store': currentStore?.displayName ?? 'None',
        'platforms': allStores.map((s) => s.platform).toSet().toList(),
      };
    } catch (e) {
      return {
        'error': 'Failed to get storage info: $e',
        'total_stores': 0,
        'active_stores': 0,
        'current_store': 'Error',
        'platforms': [],
      };
    }
  }

  static String _getPlatformIcon(String platform) {
    switch (platform.toLowerCase()) {
      case 'shopify':
        return '🛍️';
      case 'woocommerce':
        return '🛒';
      default:
        return '🏪';
    }
  }

  static String _getPlatformColor(String platform) {
    switch (platform.toLowerCase()) {
      case 'shopify':
        return '#96bf47';
      case 'woocommerce':
        return '#7f54b3';
      default:
        return '#666666';
    }
  }

  /// Get platform-specific tabs for WooCommerce
  static List<String> getWooCommerceTabs() {
    return ['store', 'customer'];
  }

  /// Get platform-specific tab display names
  static Map<String, String> getPlatformTabNames(String platform) {
    switch (platform.toLowerCase()) {
      case 'woocommerce':
        return {
          'store': 'Store Configuration',
          'customer': 'Customer Authentication',
        };
      case 'shopify':
        return {
          'store': 'Store Configuration',
        };
      default:
        return {
          'store': 'Store Configuration',
        };
    }
  }

  /// Get platform-specific tab icons
  static Map<String, String> getPlatformTabIcons(String platform) {
    switch (platform.toLowerCase()) {
      case 'woocommerce':
        return {
          'store': '🏪',
          'customer': '👤',
        };
      case 'shopify':
        return {
          'store': '🏪',
        };
      default:
        return {
          'store': '🏪',
        };
    }
  }

  /// Check if platform has multiple tabs
  static bool hasMultipleTabs(String platform) {
    switch (platform.toLowerCase()) {
      case 'woocommerce':
        return true;
      case 'shopify':
        return false;
      default:
        return false;
    }
  }

  static String _getPlatformDisplayName(String platform) {
    switch (platform.toLowerCase()) {
      case 'shopify':
        return 'Shopify';
      case 'woocommerce':
        return 'WooCommerce';
      default:
        return 'Unknown';
    }
  }
}
