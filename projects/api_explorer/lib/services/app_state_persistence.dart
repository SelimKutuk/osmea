import 'package:flutter/foundation.dart';
import 'package:core/core.dart';

class AppStatePersistence {
  static const String _currentApiQueryKey = 'current_api_query';
  static const String _selectedServiceKey = 'selected_service';
  static const String _selectedMethodKey = 'selected_method';
  static const String _currentStepKey = 'current_step';
  static const String _lastVisitedPageKey = 'last_visited_page';
  static const String _apiParametersKey = 'api_parameters';
  static const String _rawBodyKey = 'raw_body';
  static const String _currentApiUrlKey = 'current_api_url';

  // Core package's LocalStorageHelper instance
  static final LocalStorageHelper _storage = LocalStorageHelper();

  static Future<void> saveCurrentApiQuery({
    required String query,
    required String service,
    required String method,
    required Map<String, String> parameters,
    String? rawBody,
    String? currentApiUrl,
  }) async {
    try {
      // Initialize Core package's LocalStorageHelper if not already done
      await _storage.init();

      await _storage.setItem(_currentApiQueryKey, query);
      await _storage.setItem(_selectedServiceKey, service);
      await _storage.setItem(_selectedMethodKey, method);
      await _storage.setItem(_currentApiUrlKey, currentApiUrl ?? '');

      // Save parameters as JSON string
      final paramsJson =
          parameters.entries.map((e) => '${e.key}:${e.value}').join('|');
      await _storage.setItem(_apiParametersKey, paramsJson);

      if (rawBody != null) {
        await _storage.setItem(_rawBodyKey, rawBody);
      }

      debugPrint(
          '✅ App state saved successfully using Core LocalStorageHelper');
    } catch (e) {
      debugPrint('❌ Error saving app state: $e');
    }
  }

  static Future<Map<String, dynamic>?> loadCurrentApiQuery() async {
    try {
      // Initialize Core package's LocalStorageHelper if not already done
      await _storage.init();

      final query = await _storage.getItem(_currentApiQueryKey);
      final service = await _storage.getItem(_selectedServiceKey);
      final method = await _storage.getItem(_selectedMethodKey);
      final currentApiUrl = await _storage.getItem(_currentApiUrlKey);
      final paramsJson = await _storage.getItem(_apiParametersKey);
      final rawBody = await _storage.getItem(_rawBodyKey);

      if (query == null || service == null || method == null) {
        return null;
      }

      // Parse parameters from JSON string
      Map<String, String> parameters = {};
      if (paramsJson != null && paramsJson.isNotEmpty) {
        final params = paramsJson.split('|');
        for (final param in params) {
          final parts = param.split(':');
          if (parts.length == 2) {
            parameters[parts[0]] = parts[1];
          }
        }
      }

      return {
        'query': query,
        'service': service,
        'method': method,
        'parameters': parameters,
        'rawBody': rawBody,
        'currentApiUrl': currentApiUrl,
      };
    } catch (e) {
      debugPrint('❌ Error loading app state: $e');
      return null;
    }
  }

  static Future<void> saveCurrentStep(int step) async {
    try {
      // Initialize Core package's LocalStorageHelper if not already done
      await _storage.init();
      await _storage.setItem(_currentStepKey, step.toString());
      debugPrint('✅ Current step saved: $step using Core LocalStorageHelper');
    } catch (e) {
      debugPrint('❌ Error saving current step: $e');
    }
  }

  static Future<int?> loadCurrentStep() async {
    try {
      // Initialize Core package's LocalStorageHelper if not already done
      await _storage.init();
      final stepString = await _storage.getItem(_currentStepKey);
      return stepString != null ? int.tryParse(stepString) : null;
    } catch (e) {
      debugPrint('❌ Error loading current step: $e');
      return null;
    }
  }

  static Future<void> saveLastVisitedPage(String pageName) async {
    try {
      // Initialize Core package's LocalStorageHelper if not already done
      await _storage.init();
      await _storage.setItem(_lastVisitedPageKey, pageName);
      debugPrint(
          '✅ Last visited page saved: $pageName using Core LocalStorageHelper');
    } catch (e) {
      debugPrint('❌ Error saving last visited page: $e');
    }
  }

  static Future<String?> loadLastVisitedPage() async {
    try {
      // Initialize Core package's LocalStorageHelper if not already done
      await _storage.init();
      return await _storage.getItem(_lastVisitedPageKey);
    } catch (e) {
      debugPrint('❌ Error loading last visited page: $e');
      return null;
    }
  }

  static Future<void> clearAppState() async {
    try {
      // Initialize Core package's LocalStorageHelper if not already done
      await _storage.init();

      await _storage.removeItem(_currentApiQueryKey);
      await _storage.removeItem(_selectedServiceKey);
      await _storage.removeItem(_selectedMethodKey);
      await _storage.removeItem(_currentStepKey);
      await _storage.removeItem(_lastVisitedPageKey);
      await _storage.removeItem(_apiParametersKey);
      await _storage.removeItem(_rawBodyKey);
      await _storage.removeItem(_currentApiUrlKey);

      debugPrint(
          '✅ App state cleared successfully using Core LocalStorageHelper');
    } catch (e) {
      debugPrint('❌ Error clearing app state: $e');
    }
  }

  static Future<Map<String, dynamic>> getAppStateSummary() async {
    try {
      // Initialize Core package's LocalStorageHelper if not already done
      await _storage.init();

      final query = await _storage.getItem(_currentApiQueryKey);
      final service = await _storage.getItem(_selectedServiceKey);
      final step = await _storage.getItem(_currentStepKey);
      final page = await _storage.getItem(_lastVisitedPageKey);

      return {
        'hasApiQuery': query != null,
        'hasSelectedService': service != null,
        'hasCurrentStep': step != null,
        'hasLastVisitedPage': page != null,
        'storageType': 'Core LocalStorageHelper',
      };
    } catch (e) {
      debugPrint('❌ Error getting app state summary: $e');
      return {};
    }
  }
}
