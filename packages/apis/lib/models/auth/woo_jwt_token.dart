import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

/// 🔐 JWT Token model for WooCommerce authentication
class WooJwtToken {
  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final DateTime issuedAt;
  final String? refreshToken;
  final String? scope;
  final Map<String, dynamic>? userData;

  const WooJwtToken({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.issuedAt,
    this.refreshToken,
    this.scope,
    this.userData,
  });

  factory WooJwtToken.fromJson(Map<String, dynamic> json) {
    return WooJwtToken(
      accessToken: json['access_token'] as String? ?? '',
      tokenType: json['token_type'] as String? ?? 'Bearer',
      expiresIn: json['expires_in'] as int? ?? 3600,
      issuedAt: DateTime.parse(
          json['issued_at'] as String? ?? DateTime.now().toIso8601String()),
      refreshToken: json['refresh_token'] as String?,
      scope: json['scope'] as String?,
      userData: json['user_data'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'token_type': tokenType,
      'expires_in': expiresIn,
      'issued_at': issuedAt.toIso8601String(),
      'refresh_token': refreshToken,
      'scope': scope,
      'user_data': userData,
    };
  }

  /// Create JWT token from WooCommerce authentication response
  factory WooJwtToken.fromWooResponse(Map<String, dynamic> response) {
    return WooJwtToken(
      accessToken: response['access_token'] as String? ?? '',
      tokenType: response['token_type'] as String? ?? 'Bearer',
      expiresIn: response['expires_in'] as int? ?? 3600,
      issuedAt: DateTime.now(),
      refreshToken: response['refresh_token'] as String?,
      scope: response['scope'] as String?,
      userData: response['user'] as Map<String, dynamic>?,
    );
  }
}

/// Extension to add computed properties
extension WooJwtTokenExtension on WooJwtToken {
  /// Get token expiry date
  DateTime get expiresAt {
    return issuedAt.add(Duration(seconds: expiresIn));
  }

  /// Check if token is expired
  bool get isExpired {
    return DateTime.now().isAfter(expiresAt);
  }

  /// Check if token needs refresh (expires in less than 10 minutes)
  bool get needsRefresh {
    final refreshThreshold = Duration(minutes: 10);
    return DateTime.now().isAfter(expiresAt.subtract(refreshThreshold));
  }

  /// Get authorization header value
  String get authorizationHeader {
    return '$tokenType $accessToken';
  }
}

/// 🔐 JWT Token Storage Manager
class WooJwtTokenStorage {
  static const String _tokenKey = 'woo_jwt_token';
  static const String _refreshTokenKey = 'woo_refresh_token';
  static const String _tokenExpiryKey = 'woo_token_expiry';
  static const String _userDataKey = 'woo_user_data';
  static const String _tokenTypeKey = 'woo_token_type';
  static const String _tokenScopeKey = 'woo_token_scope';
  static const String _issuedAtKey = 'woo_issued_at';
  static const String _expiresInKey = 'woo_expires_in';
  static const String _lastSavedKey = 'woo_last_saved';

  /// 💾 Save JWT token to storage with comprehensive information
  static Future<void> saveToken(WooJwtToken token) async {
    try {
      debugPrint('💾 Saving JWT token to local storage...');
      debugPrint('🔐 Access token: ${token.accessToken.substring(0, 20)}...');
      debugPrint('🔑 Token type: ${token.tokenType}');
      debugPrint('⏰ Expires in: ${token.expiresIn} seconds');
      debugPrint('📅 Issued at: ${token.issuedAt}');
      debugPrint(
          '🔄 Refresh token: ${token.refreshToken != null ? "Present" : "Not present"}');
      debugPrint('📊 Scope: ${token.scope ?? "None"}');
      debugPrint(
          '👤 User data: ${token.userData != null ? "Present" : "Not present"}');

      if (kIsWeb) {
        // Use SharedPreferences for web
        final prefs = await SharedPreferences.getInstance();

        // Save all token information
        await prefs.setString(_tokenKey, token.accessToken);
        await prefs.setString(_refreshTokenKey, token.refreshToken ?? '');
        await prefs.setString(_tokenTypeKey, token.tokenType);
        await prefs.setString(_tokenScopeKey, token.scope ?? '');
        await prefs.setString(_issuedAtKey, token.issuedAt.toIso8601String());
        await prefs.setInt(_expiresInKey, token.expiresIn);
        await prefs.setString(
            _tokenExpiryKey, token.expiresAt.toIso8601String());
        await prefs.setString(_userDataKey, json.encode(token.userData ?? {}));
        await prefs.setString(_lastSavedKey, DateTime.now().toIso8601String());

        debugPrint('✅ JWT token saved to SharedPreferences successfully');
        debugPrint('🔍 Verification - Reading back from storage:');
        final savedToken = prefs.getString(_tokenKey);
        final savedType = prefs.getString(_tokenTypeKey);
        debugPrint(
            '  - Saved access token: ${savedToken != null ? "Found (${savedToken.length} chars)" : "Not found"}');
        debugPrint(
            '  - Saved token type: ${savedType != null ? "Found ($savedType)" : "Not found"}');
      } else {
        // Use SQLite for mobile
        final db = await DatabaseHelper.instance.database;
        await db.insert(
          'woo_tokens',
          {
            'access_token': token.accessToken,
            'refresh_token': token.refreshToken ?? '',
            'token_type': token.tokenType,
            'scope': token.scope ?? '',
            'issued_at': token.issuedAt.toIso8601String(),
            'expires_in': token.expiresIn,
            'expires_at': token.expiresAt.toIso8601String(),
            'user_data': json.encode(token.userData ?? {}),
            'created_at': DateTime.now().toIso8601String(),
            'last_saved': DateTime.now().toIso8601String(),
          },
          conflictAlgorithm: ConflictAlgorithm.replace,
        );

        debugPrint('✅ JWT token saved to SQLite successfully');
      }

      debugPrint('🔐 JWT token saved successfully to local storage');
    } catch (e) {
      debugPrint('❌ Error saving JWT token: $e');
      rethrow; // Re-throw to allow calling code to handle the error
    }
  }

  /// 📖 Load JWT token from storage with comprehensive information
  static Future<WooJwtToken?> loadToken() async {
    try {
      debugPrint('📖 Loading JWT token from local storage...');

      String? accessToken;
      String? refreshToken;
      String? tokenType;
      String? scope;
      String? issuedAt;
      int? expiresIn;
      String? expiresAt;
      String? userData;
      String? lastSaved;

      if (kIsWeb) {
        // Use SharedPreferences for web
        final prefs = await SharedPreferences.getInstance();
        accessToken = prefs.getString(_tokenKey);
        refreshToken = prefs.getString(_refreshTokenKey);
        tokenType = prefs.getString(_tokenTypeKey);
        scope = prefs.getString(_tokenScopeKey);
        issuedAt = prefs.getString(_issuedAtKey);
        expiresIn = prefs.getInt(_expiresInKey);
        expiresAt = prefs.getString(_tokenExpiryKey);
        userData = prefs.getString(_userDataKey);
        lastSaved = prefs.getString(_lastSavedKey);

        debugPrint('🔍 Loading from SharedPreferences:');
        debugPrint(
            '  - Access token: ${accessToken != null ? "Found (${accessToken.length} chars)" : "Not found"}');
        debugPrint(
            '  - Token type: ${tokenType != null ? "Found ($tokenType)" : "Not found"}');
        debugPrint(
            '  - Issued at: ${issuedAt != null ? "Found ($issuedAt)" : "Not found"}');
        debugPrint(
            '  - Expires in: ${expiresIn != null ? "Found ($expiresIn)" : "Not found"}');
        debugPrint(
            '  - Refresh token: ${refreshToken != null ? "Found" : "Not found"}');
        debugPrint(
            '  - Scope: ${scope != null ? "Found ($scope)" : "Not found"}');
        debugPrint(
            '  - User data: ${userData != null ? "Found" : "Not found"}');
        debugPrint(
            '  - Last saved: ${lastSaved != null ? "Found ($lastSaved)" : "Not found"}');
      } else {
        // Use SQLite for mobile
        final db = await DatabaseHelper.instance.database;
        final result = await db.query(
          'woo_tokens',
          orderBy: 'created_at DESC',
          limit: 1,
        );

        if (result.isNotEmpty) {
          accessToken = result.first['access_token'] as String?;
          refreshToken = result.first['refresh_token'] as String?;
          tokenType = result.first['token_type'] as String?;
          scope = result.first['scope'] as String?;
          issuedAt = result.first['issued_at'] as String?;
          expiresIn = result.first['expires_in'] as int?;
          expiresAt = result.first['expires_at'] as String?;
          userData = result.first['user_data'] as String?;
          lastSaved = result.first['last_saved'] as String?;
        }
      }

      if (accessToken != null && tokenType != null) {
        final token = WooJwtToken(
          accessToken: accessToken,
          tokenType: tokenType,
          expiresIn: expiresIn ?? 3600,
          issuedAt:
              issuedAt != null ? DateTime.parse(issuedAt) : DateTime.now(),
          refreshToken: refreshToken?.isEmpty == true ? null : refreshToken,
          scope: scope?.isEmpty == true ? null : scope,
          userData: userData != null ? json.decode(userData) : null,
        );

        debugPrint('✅ JWT token loaded from local storage successfully');
        debugPrint('📅 Token issued at: ${token.issuedAt}');
        debugPrint('⏰ Token expires at: ${token.expiresAt}');
        debugPrint('🔄 Last saved: $lastSaved');
        debugPrint('📊 Expires at string: $expiresAt');
        debugPrint('🔐 Access token: ${accessToken.substring(0, 20)}...');
        debugPrint('🔑 Token type: $tokenType');

        return token;
      }

      debugPrint('⚠️ No valid JWT token found in local storage');
      debugPrint('🔍 Debug info:');
      debugPrint(
          '  - Access token: ${accessToken != null ? "Found (${accessToken.length} chars)" : "Not found"}');
      debugPrint(
          '  - Token type: ${tokenType != null ? "Found ($tokenType)" : "Not found"}');
      debugPrint(
          '  - Issued at: ${issuedAt != null ? "Found ($issuedAt)" : "Not found"}');
      debugPrint(
          '  - Expires in: ${expiresIn != null ? "Found ($expiresIn)" : "Not found"}');
      return null;
    } catch (e) {
      debugPrint('❌ Error loading JWT token: $e');
      return null;
    }
  }

  /// 🧪 Test JWT token storage functionality
  static Future<void> testTokenStorage() async {
    try {
      debugPrint('🧪 Testing JWT token storage...');

      // Create a test token
      final testToken = WooJwtToken(
        accessToken: 'test_access_token_12345',
        tokenType: 'Bearer',
        expiresIn: 3600,
        issuedAt: DateTime.now(),
        refreshToken: 'test_refresh_token_67890',
        scope: 'read write',
        userData: {'id': '1', 'email': 'test@example.com'},
      );

      // Save the test token
      debugPrint('💾 Saving test token...');
      await saveToken(testToken);

      // Load the test token
      debugPrint('📖 Loading test token...');
      final loadedToken = await loadToken();

      if (loadedToken != null) {
        debugPrint('✅ Test token loaded successfully!');
        debugPrint(
            '🔐 Access token matches: ${loadedToken.accessToken == testToken.accessToken}');
        debugPrint(
            '🔑 Token type matches: ${loadedToken.tokenType == testToken.tokenType}');
        debugPrint(
            '⏰ Expires in matches: ${loadedToken.expiresIn == testToken.expiresIn}');
        debugPrint(
            '🔄 Refresh token matches: ${loadedToken.refreshToken == testToken.refreshToken}');
        debugPrint('📊 Scope matches: ${loadedToken.scope == testToken.scope}');
        debugPrint(
            '👤 User data matches: ${loadedToken.userData != null && loadedToken.userData!['id'] == '1'}');
      } else {
        debugPrint('❌ Test token could not be loaded!');
      }

      // Clean up test token
      debugPrint('🗑️ Cleaning up test token...');
      await clearToken();
    } catch (e) {
      debugPrint('❌ Test token storage failed: $e');
    }
  }

  /// 🗑️ Clear JWT token from storage
  static Future<void> clearToken() async {
    try {
      debugPrint('🗑️ Clearing JWT token from local storage...');

      if (kIsWeb) {
        // Use SharedPreferences for web
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove(_tokenKey);
        await prefs.remove(_refreshTokenKey);
        await prefs.remove(_tokenTypeKey);
        await prefs.remove(_tokenScopeKey);
        await prefs.remove(_issuedAtKey);
        await prefs.remove(_expiresInKey);
        await prefs.remove(_tokenExpiryKey);
        await prefs.remove(_userDataKey);
        await prefs.remove(_lastSavedKey);

        debugPrint('✅ JWT token cleared from SharedPreferences successfully');
      } else {
        // Use SQLite for mobile
        final db = await DatabaseHelper.instance.database;
        await db.delete('woo_tokens');

        debugPrint('✅ JWT token cleared from SQLite successfully');
      }

      debugPrint('🔐 JWT token cleared successfully from local storage');
    } catch (e) {
      debugPrint('❌ Error clearing JWT token: $e');
      rethrow; // Re-throw to allow calling code to handle the error
    }
  }

  /// ⏰ Check if token is expired
  static Future<bool> isTokenExpired() async {
    try {
      final token = await loadToken();
      if (token == null) return true;

      return token.isExpired;
    } catch (e) {
      debugPrint('❌ Error checking token expiry: $e');
      return true;
    }
  }

  /// 🔄 Check if token needs refresh
  static Future<bool> needsRefresh() async {
    try {
      final token = await loadToken();
      if (token == null || token.refreshToken == null) return false;

      return token.needsRefresh;
    } catch (e) {
      debugPrint('❌ Error checking refresh need: $e');
      return false;
    }
  }

  /// 📊 Get comprehensive token information
  static Future<Map<String, dynamic>> getTokenInfo() async {
    try {
      final token = await loadToken();
      if (token == null) {
        return {
          'hasToken': false,
          'isExpired': true,
          'needsRefresh': false,
          'message': 'No token found in local storage',
        };
      }

      return {
        'hasToken': true,
        'isExpired': token.isExpired,
        'needsRefresh': token.needsRefresh,
        'tokenType': token.tokenType,
        'scope': token.scope,
        'issuedAt': token.issuedAt.toIso8601String(),
        'expiresAt': token.expiresAt.toIso8601String(),
        'expiresIn': token.expiresIn,
        'hasRefreshToken': token.refreshToken != null,
        'hasUserData': token.userData != null,
        'userData': token.userData,
        'timeUntilExpiry': token.expiresAt.difference(DateTime.now()).inMinutes,
      };
    } catch (e) {
      debugPrint('❌ Error getting token info: $e');
      return {
        'hasToken': false,
        'isExpired': true,
        'needsRefresh': false,
        'error': e.toString(),
      };
    }
  }

  /// 🔍 Check if token exists in storage
  static Future<bool> hasToken() async {
    try {
      final token = await loadToken();
      return token != null;
    } catch (e) {
      debugPrint('❌ Error checking token existence: $e');
      return false;
    }
  }

  /// 📅 Get token expiry date
  static Future<DateTime?> getTokenExpiry() async {
    try {
      final token = await loadToken();
      return token?.expiresAt;
    } catch (e) {
      debugPrint('❌ Error getting token expiry: $e');
      return null;
    }
  }

  /// 👤 Get user data from stored token
  static Future<Map<String, dynamic>?> getUserData() async {
    try {
      final token = await loadToken();
      return token?.userData;
    } catch (e) {
      debugPrint('❌ Error getting user data: $e');
      return null;
    }
  }

  /// 🔄 Update only user data in stored token
  static Future<void> updateUserData(Map<String, dynamic> userData) async {
    try {
      final token = await loadToken();
      if (token != null) {
        final updatedToken = WooJwtToken(
          accessToken: token.accessToken,
          tokenType: token.tokenType,
          expiresIn: token.expiresIn,
          issuedAt: token.issuedAt,
          refreshToken: token.refreshToken,
          scope: token.scope,
          userData: userData,
        );
        await saveToken(updatedToken);
        debugPrint('✅ User data updated in stored token');
      } else {
        debugPrint('⚠️ No token found to update user data');
      }
    } catch (e) {
      debugPrint('❌ Error updating user data: $e');
      rethrow;
    }
  }

  /// 🧹 Clean up expired tokens
  static Future<void> cleanupExpiredTokens() async {
    try {
      debugPrint('🧹 Cleaning up expired tokens...');

      if (kIsWeb) {
        // For web, we only store one token, so just check if it's expired
        final token = await loadToken();
        if (token != null && token.isExpired) {
          await clearToken();
          debugPrint('✅ Expired token cleaned up from SharedPreferences');
        }
      } else {
        // For mobile, clean up expired tokens from SQLite
        final db = await DatabaseHelper.instance.database;
        final now = DateTime.now().toIso8601String();
        final deletedCount = await db.delete(
          'woo_tokens',
          where: 'expires_at < ?',
          whereArgs: [now],
        );

        if (deletedCount > 0) {
          debugPrint('✅ Cleaned up $deletedCount expired tokens from SQLite');
        } else {
          debugPrint('ℹ️ No expired tokens found to clean up');
        }
      }
    } catch (e) {
      debugPrint('❌ Error cleaning up expired tokens: $e');
    }
  }

  /// 📈 Get storage statistics
  static Future<Map<String, dynamic>> getStorageStats() async {
    try {
      if (kIsWeb) {
        final prefs = await SharedPreferences.getInstance();
        final keys = prefs.getKeys();
        final jwtKeys = keys.where((key) => key.startsWith('woo_')).length;

        return {
          'platform': 'web',
          'storageType': 'SharedPreferences',
          'totalKeys': keys.length,
          'jwtKeys': jwtKeys,
          'hasToken': await hasToken(),
        };
      } else {
        final db = await DatabaseHelper.instance.database;
        final result =
            await db.rawQuery('SELECT COUNT(*) as count FROM woo_tokens');
        final count = result.first['count'] as int;

        return {
          'platform': 'mobile',
          'storageType': 'SQLite',
          'tokenCount': count,
          'hasToken': await hasToken(),
        };
      }
    } catch (e) {
      debugPrint('❌ Error getting storage stats: $e');
      return {
        'error': e.toString(),
      };
    }
  }
}

/// 🗄️ Database Helper for JWT token storage
class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static DatabaseHelper get instance => _instance;

  DatabaseHelper._internal();

  Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'woo_jwt_tokens.db');

    return await openDatabase(
      path,
      version: 2, // Increment version for schema update
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE woo_tokens (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            access_token TEXT NOT NULL,
            refresh_token TEXT,
            token_type TEXT NOT NULL,
            scope TEXT,
            issued_at TEXT NOT NULL,
            expires_in INTEGER NOT NULL,
            expires_at TEXT NOT NULL,
            user_data TEXT,
            created_at TEXT NOT NULL,
            last_saved TEXT NOT NULL
          )
        ''');
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          // Add new columns for version 2
          await db.execute('ALTER TABLE woo_tokens ADD COLUMN token_type TEXT');
          await db.execute('ALTER TABLE woo_tokens ADD COLUMN scope TEXT');
          await db.execute('ALTER TABLE woo_tokens ADD COLUMN issued_at TEXT');
          await db
              .execute('ALTER TABLE woo_tokens ADD COLUMN expires_in INTEGER');
          await db.execute('ALTER TABLE woo_tokens ADD COLUMN last_saved TEXT');

          // Set default values for existing records
          await db.execute(
              'UPDATE woo_tokens SET token_type = "Bearer" WHERE token_type IS NULL');
          await db.execute(
              'UPDATE woo_tokens SET expires_in = 3600 WHERE expires_in IS NULL');
          await db.execute(
              'UPDATE woo_tokens SET issued_at = datetime("now", "-1 hour") WHERE issued_at IS NULL');
          await db.execute(
              'UPDATE woo_tokens SET last_saved = datetime("now") WHERE last_saved IS NULL');
        }
      },
    );
  }
}
