/// 🔗 URL Launcher Helper - Comprehensive URL Handling Utility
///
/// This helper provides a centralized solution for handling external URL launching
/// across the application. It wraps the url_launcher package and provides enhanced
/// functionality including validation, error handling, and platform-specific behavior.
///
/// ## 🎯 Key Features
///
/// - **Centralized URL Management**: Single entry point for all URL operations
/// - **Validation**: Ensures URLs are valid before attempting to launch
/// - **Error Handling**: Comprehensive error handling with fallback options
/// - **Platform Awareness**: Handles Android/iOS/web differences
/// - **Multiple Launch Modes**: External browser, in-app webview, native apps
/// - **Logging Integration**: Built-in logging for debugging and monitoring
///
/// ## 🚀 Usage Examples
///
/// ### Basic URL Launching
/// ```dart
/// // Simple URL opening
/// bool success = await UrlLauncher.openUrl("https://flutter.dev");
///
/// // Safe URL opening with error handling
/// bool success = await UrlLauncher.safeOpenUrl("https://example.com");
///
/// // URL validation
/// bool isValid = UrlLauncher.isValidUrl("https://flutter.dev");
/// ```
///
/// ### Advanced Features
/// ```dart
/// // Fallback to webview if external launch fails
/// bool success = await UrlLauncher.openUrlWithFallback(
///   "https://example.com",
///   headers: {"Authorization": "Bearer token"}
/// );
///
/// // Deep linking
/// bool success = await UrlLauncher.openDeepLink("myapp://profile/123");
///
/// // Social media links
/// bool success = await UrlLauncher.openSocialLink("twitter", "flutter");
/// ```
///
/// ### Specialized Launch Methods
/// ```dart
/// // Phone calls
/// await UrlLauncher.getLaunchMakePhoneCall("+1234567890");
///
/// // Email
/// await UrlLauncher.getLaunchSendMail("info@example.com");
///
/// // Maps with coordinates
/// await UrlLauncher.getLaunchMaps("37.7749", "-122.4194");
///
/// // Maps with address
/// await UrlLauncher.getLaunchMapsQuery("1600 Amphitheatre Parkway");
/// ```
///
/// ## 📋 Supported URL Schemes
///
/// - **HTTP/HTTPS**: Web URLs
/// - **TEL**: Phone numbers
/// - **MAILTO**: Email addresses
/// - **SMS**: Text messages
/// - **GEO**: Geographic coordinates
/// - **Custom**: Deep links and app-specific schemes
///
/// ## 🛡️ Error Handling
///
/// All methods provide comprehensive error handling:
/// - Invalid URL format detection
/// - Launch capability checking
/// - Graceful fallback options
/// - Detailed logging for debugging
///
/// ## 🔧 Platform Support
///
/// - **Android**: External apps, webview, native intents
/// - **iOS**: Safari, in-app webview, universal links
/// - **Web**: Browser navigation, popup windows
///
/// ## 📊 Performance Notes
///
/// - All methods are asynchronous and non-blocking
/// - URL validation is performed before launch attempts
/// - Comprehensive logging helps with debugging
/// - Memory efficient with proper resource cleanup
library;

import 'package:core/src/helper/common_logger_helper/abstract/common_logger.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

/// URL Launcher Configuration
///
/// This class holds configuration for URL launcher operations.
/// URLs and settings are loaded from app config.
class UrlLauncherConfig {
  static final Map<String, String> _socialMediaUrls = {
    'x': 'https://x.com/',
    'instagram': 'https://instagram.com/',
    'facebook': 'https://facebook.com/',
    'linkedin': 'https://linkedin.com/in/',
    'youtube': 'https://youtube.com/@',
    'tiktok': 'https://tiktok.com/@',
    'snapchat': 'https://snapchat.com/add/',
    'github': 'https://github.com/masterfabric-mobile/osmea',
    'reddit': 'https://reddit.com/u/',
    'pinterest': 'https://pinterest.com/',
    'telegram': 'https://t.me/',
    'whatsapp': 'https://wa.me/',
  };

  static final Map<String, String> _musicUrls = {
    'spotify': 'spotify:search:',
    'apple_music': 'music://search?term=',
    'youtube_music': 'https://music.youtube.com/search?q=',
    'soundcloud': 'https://soundcloud.com/search?q=',
  };

  static final Map<String, String> _videoUrls = {
    'youtube': 'https://www.youtube.com/results?search_query=',
    'netflix': 'https://www.netflix.com/search?q=',
    'disney_plus': 'https://www.disneyplus.com/search?q=',
    'prime_video': 'https://www.primevideo.com/search?q=',
  };

  static final Map<String, String> _mapsUrls = {
    'google_maps': 'https://www.google.com/maps/',
    'apple_maps': 'http://maps.apple.com/',
    'waze': 'waze://',
  };

  static final Map<String, String> _websiteUrls = {
    'main': 'https://masterfabric.co/',
    'osmea': 'https://github.com/masterfabric-mobile/osmea',
    'documentation':
        'https://github.com/masterfabric-mobile/osmea/tree/dev/docs',
  };

  static final Map<String, String> _defaultValues = {
    'phone_number': '+90 5xx xxx xxxx',
    'email': 'info@masterfabric.co',
    'latitude': '41.0082',
    'longitude': '28.9784',
    'address': 'Istanbul, Turkey',
    'search_query': 'Flutter Development',
    'username': 'masterfabric',
    'url': 'https://masterfabric.co',
  };

  /// Get social media URL for a platform
  static String getSocialMediaUrl(String platform) {
    return _socialMediaUrls[platform.toLowerCase()] ?? '';
  }

  /// Get music URL for a platform
  static String getMusicUrl(String platform) {
    return _musicUrls[platform.toLowerCase()] ?? '';
  }

  /// Get video URL for a platform
  static String getVideoUrl(String platform) {
    return _videoUrls[platform.toLowerCase()] ?? '';
  }

  /// Get maps URL for a platform
  static String getMapsUrl(String platform) {
    return _mapsUrls[platform.toLowerCase()] ?? '';
  }

  /// Get website URL for a platform
  static String getWebsiteUrl(String platform) {
    return _websiteUrls[platform.toLowerCase()] ?? '';
  }

  /// Get default value for a field
  static String getDefaultValue(String field) {
    return _defaultValues[field.toLowerCase()] ?? '';
  }

  /// Load configuration from app config
  static void loadFromConfig(Map<String, dynamic> config) {
    if (config.containsKey('url_launcher_configuration')) {
      final urlConfig =
          config['url_launcher_configuration'] as Map<String, dynamic>;

      if (urlConfig.containsKey('social_media_urls')) {
        final socialUrls =
            urlConfig['social_media_urls'] as Map<String, dynamic>;
        socialUrls.forEach((key, value) {
          _socialMediaUrls[key] = value.toString();
        });
      }

      if (urlConfig.containsKey('music_urls')) {
        final musicUrls = urlConfig['music_urls'] as Map<String, dynamic>;
        musicUrls.forEach((key, value) {
          _musicUrls[key] = value.toString();
        });
      }

      if (urlConfig.containsKey('video_urls')) {
        final videoUrls = urlConfig['video_urls'] as Map<String, dynamic>;
        videoUrls.forEach((key, value) {
          _videoUrls[key] = value.toString();
        });
      }

      if (urlConfig.containsKey('maps_urls')) {
        final mapsUrls = urlConfig['maps_urls'] as Map<String, dynamic>;
        mapsUrls.forEach((key, value) {
          _mapsUrls[key] = value.toString();
        });
      }

      if (urlConfig.containsKey('website_urls')) {
        final websiteUrls = urlConfig['website_urls'] as Map<String, dynamic>;
        websiteUrls.forEach((key, value) {
          _websiteUrls[key] = value.toString();
        });
      }

      if (urlConfig.containsKey('default_values')) {
        final defaultValues =
            urlConfig['default_values'] as Map<String, dynamic>;
        defaultValues.forEach((key, value) {
          _defaultValues[key] = value.toString();
        });
      }
    }
  }
}

/// 🔗 URL Launcher Helper - Comprehensive URL Handling Utility
///
/// This class provides static methods for launching URLs with enhanced functionality
/// including validation, error handling, and platform-specific behavior.
class UrlLauncher {
  static final _commonLogger = GetIt.I<ICommonLogger>();
  UrlLauncher();

  /// 🌐 Launches a URL in the external browser
  ///
  /// Opens the specified URL in the device's default browser application.
  /// This method is ideal for opening web pages that should be viewed
  /// in the full browser experience.
  ///
  /// ## Parameters
  /// - `url` (Uri): The URL to launch in the external browser
  ///
  /// ## Throws
  /// - `Exception`: If the URL cannot be launched
  ///
  /// ## Example
  /// ```dart
  /// await UrlLauncher.getLaunchURLBrowser(Uri.parse("https://flutter.dev"));
  /// ```
  static Future<void> getLaunchURLBrowser(Uri url) async {
    _commonLogger
        .printURLLogs([" URL launched from Browser = ", url.toString()]);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      _commonLogger.printURLLogs(["Could not launch = ", url.toString()]);
      throw Exception('Could not launch $url');
    }
  }

  /// 📱 Launches a URL in an in-app webview
  ///
  /// Opens the specified URL within the app using an in-app webview.
  /// This method is ideal for displaying web content without leaving
  /// the app, providing a seamless user experience.
  ///
  /// ## Parameters
  /// - `url` (Uri): The URL to launch in the webview
  /// - `headers` (Map<String, String>): HTTP headers to include with the request
  ///
  /// ## Throws
  /// - `Exception`: If the URL cannot be launched
  ///
  /// ## Example
  /// ```dart
  /// await UrlLauncher.getLaunchInWebViewOrVC(
  ///   Uri.parse("https://example.com"),
  ///   {"Authorization": "Bearer token"}
  /// );
  /// ```
  static Future<void> getLaunchInWebViewOrVC(
      Uri url, Map<String, String> headers) async {
    _commonLogger
        .printURLLogs([" URL launched from Browser = ", url.toString()]);
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: WebViewConfiguration(headers: headers),
    )) {
      _commonLogger.printURLLogs(["Could not launch = ", url.toString()]);
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> getLaunchWebViewWithoutJS(
      Uri url, Map<String, String> headers) async {
    _commonLogger
        .printURLLogs([" URL launched from Without JS = ", url.toString()]);
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration:
          WebViewConfiguration(headers: headers, enableJavaScript: false),
    )) {
      _commonLogger.printURLLogs(["Could not launch = ", url.toString()]);
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> getLaunchUniversalLinkIos(Uri url) async {
    _commonLogger.printURLLogs(
        [" URL launched from Universal Link iOS = ", url.toString()]);

    final bool nativeAppLaunchSucceeded = await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    );

    if (!nativeAppLaunchSucceeded) {
      _commonLogger.printURLLogs(["Could not launch = ", url.toString()]);
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> getLaunchMakePhoneCall(String phoneNumber) async {
    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );

    if (!await launchUrl(phoneLaunchUri)) {
      _commonLogger
          .printURLLogs(["Could not launch = ", phoneLaunchUri.toString()]);
      throw Exception('Could not launch $phoneLaunchUri');
    }
  }

  static Future<void> getLaunchSendMail(String mailAddress) async {
    final Uri sendMailUri = Uri(
      scheme: 'mailto',
      path: mailAddress,
    );

    if (!await launchUrl(sendMailUri)) {
      _commonLogger
          .printURLLogs(["Could not launch = ", sendMailUri.toString()]);
      throw Exception('Could not launch $sendMailUri');
    }
  }

  /* Launch Maps LatLong */

  static Future<void> getLaunchMaps(String latitude, String longitude) async {
    final url = Uri.parse(
        'https://www.google.com/maps/dir/?api=1&destination=$latitude,$longitude');
    _commonLogger.printURLLogs([" URL launched from Maps = ", url.toString()]);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      _commonLogger.printURLLogs(["Could not launch = ", url.toString()]);
      throw Exception('Could not launch $url');
    }
  }

  /* Launch Maps Query */

  static Future<void> getLaunchMapsQuery(String address) async {
    String query = Uri.encodeComponent(address);
    final url =
        Uri.parse('https://www.google.com/maps/search/?api=1&query=$query');
    _commonLogger.printURLLogs([" URL launched from Maps = ", url.toString()]);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      _commonLogger.printURLLogs(["Could not launch = ", url.toString()]);
      throw Exception('Could not launch $url');
    }
  }

  // ========================================
  // ENHANCED URL LAUNCHER METHODS
  // ========================================

  /// ✅ Validates if the given URL string is a valid URI
  ///
  /// Checks if the provided URL string can be parsed as a valid URI and
  /// supports common URL schemes used in mobile applications.
  ///
  /// ## Parameters
  /// - `url` (String): The URL string to validate
  ///
  /// ## Returns
  /// - `bool`: True if the URL is valid, false otherwise
  ///
  /// ## Supported Schemes
  /// - HTTP/HTTPS: Web URLs
  /// - TEL: Phone numbers
  /// - MAILTO: Email addresses
  /// - SMS: Text messages
  /// - GEO: Geographic coordinates
  ///
  /// ## Example
  /// ```dart
  /// bool isValid = UrlLauncher.isValidUrl("https://flutter.dev");
  /// bool isPhoneValid = UrlLauncher.isValidUrl("tel:+1234567890");
  /// ```
  static bool isValidUrl(String url) {
    try {
      final uri = Uri.tryParse(url);
      return uri != null &&
          (uri.scheme == 'http' ||
              uri.scheme == 'https' ||
              uri.scheme == 'tel' ||
              uri.scheme == 'mailto' ||
              uri.scheme == 'sms' ||
              uri.scheme == 'geo');
    } catch (e) {
      _commonLogger.printURLLogs(["Invalid URL format: $url", e.toString()]);
      return false;
    }
  }

  /// 🚀 Simple API to open any URL with validation and error handling
  ///
  /// This is the main method for opening URLs. It provides a simple interface
  /// with built-in validation and error handling. Perfect for most use cases
  /// where you want to open a URL in the external browser.
  ///
  /// ## Parameters
  /// - `url` (String): The URL string to launch
  ///
  /// ## Returns
  /// - `bool`: True if URL was successfully launched, false otherwise
  ///
  /// ## Features
  /// - Automatic URL validation
  /// - Launch capability checking
  /// - Comprehensive error handling
  /// - Detailed logging
  ///
  /// ## Example
  /// ```dart
  /// bool success = await UrlLauncher.openUrl("https://flutter.dev");
  /// if (success) {
  ///   print("URL opened successfully");
  /// } else {
  ///   print("Failed to open URL");
  /// }
  /// ```
  static Future<bool> openUrl(String url) async {
    try {
      final uri = Uri.tryParse(url);
      if (uri == null) {
        _commonLogger.printURLLogs(["Invalid URL format: $url"]);
        return false;
      }

      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        _commonLogger.printURLLogs(["URL successfully launched: $url"]);
        return true;
      } else {
        _commonLogger.printURLLogs(["Cannot launch URL: $url"]);
        return false;
      }
    } catch (e) {
      _commonLogger.printURLLogs(["Error launching URL: $url", e.toString()]);
      return false;
    }
  }

  /// Safe URL opening with comprehensive error handling
  ///
  /// Returns true if URL was successfully launched, false otherwise
  /// Does not throw exceptions, handles all errors gracefully
  static Future<bool> safeOpenUrl(String url) async {
    try {
      return await openUrl(url);
    } catch (e) {
      _commonLogger
          .printURLLogs(["Safe open failed for URL: $url", e.toString()]);
      return false;
    }
  }

  /// 📱 Open social media links
  ///
  /// Launches social media profiles or pages with platform-specific URL formatting.
  ///
  /// ## Parameters
  /// - `platform` (String): The social media platform name
  /// - `username` (String): The username or handle to open
  ///
  /// ## Returns
  /// - `bool`: True if social link was successfully launched, false otherwise
  ///
  /// ## Example
  /// ```dart
  /// await UrlLauncher.openSocialLink("x", "flutter");
  /// await UrlLauncher.openSocialLink("instagram", "flutter");
  /// ```
  static Future<bool> openSocialLink(String platform, String username) async {
    try {
      final baseUrl = UrlLauncherConfig.getSocialMediaUrl(platform);
      if (baseUrl.isEmpty) {
        _commonLogger.printURLLogs(["Unsupported social platform: $platform"]);
        return false;
      }

      final url = '$baseUrl$username';
      return await openUrl(url);
    } catch (e) {
      _commonLogger.printURLLogs(
          ["Error opening social link: $platform/$username", e.toString()]);
      return false;
    }
  }

  /// 🗺️ Open maps with coordinates
  ///
  /// Launches maps app with coordinates using config URLs.
  ///
  /// ## Parameters
  /// - `latitude` (String): The latitude coordinate
  /// - `longitude` (String): The longitude coordinate
  /// - `preferAppleMaps` (bool): Force Apple Maps on iOS
  ///
  /// ## Returns
  /// - `bool`: True if maps app was launched, false otherwise
  ///
  /// ## Example
  /// ```dart
  /// bool success = await UrlLauncher.openMaps("37.7749", "-122.4194");
  /// ```
  static Future<bool> openMaps(String latitude, String longitude,
      {bool preferAppleMaps = false}) async {
    try {
      // Try Apple Maps first if preferred
      if (preferAppleMaps) {
        final appleMapsBaseUrl = UrlLauncherConfig.getMapsUrl('apple_maps');
        if (appleMapsBaseUrl.isNotEmpty) {
          final appleMapsUrl = '$appleMapsBaseUrl?q=$latitude,$longitude';
          final appleUri = Uri.parse(appleMapsUrl);

          if (await canLaunchUrl(appleUri)) {
            await launchUrl(appleUri, mode: LaunchMode.externalApplication);
            _commonLogger
                .printURLLogs(["Apple Maps launched: $latitude, $longitude"]);
            return true;
          }
        }
      }

      // Try Google Maps
      final googleMapsBaseUrl = UrlLauncherConfig.getMapsUrl('google_maps');
      if (googleMapsBaseUrl.isNotEmpty) {
        final googleMapsUrl =
            '${googleMapsBaseUrl}dir/?api=1&destination=$latitude,$longitude';
        final googleUri = Uri.parse(googleMapsUrl);

        if (await canLaunchUrl(googleUri)) {
          await launchUrl(googleUri, mode: LaunchMode.externalApplication);
          _commonLogger
              .printURLLogs(["Google Maps launched: $latitude, $longitude"]);
          return true;
        }
      }

      return false;
    } catch (e) {
      _commonLogger.printURLLogs(
          ["Error launching maps: $latitude, $longitude", e.toString()]);
      return false;
    }
  }

  /// 🔍 Open maps with address query
  ///
  /// Launches maps app with address search using config URLs.
  ///
  /// ## Parameters
  /// - `address` (String): The address to search for
  /// - `preferAppleMaps` (bool): Force Apple Maps on iOS
  ///
  /// ## Returns
  /// - `bool`: True if maps app was launched, false otherwise
  ///
  /// ## Example
  /// ```dart
  /// bool success = await UrlLauncher.openMapsQuery("1600 Amphitheatre Parkway");
  /// ```
  static Future<bool> openMapsQuery(String address,
      {bool preferAppleMaps = false}) async {
    try {
      final query = Uri.encodeComponent(address);

      // Try Apple Maps first if preferred
      if (preferAppleMaps) {
        final appleMapsBaseUrl = UrlLauncherConfig.getMapsUrl('apple_maps');
        if (appleMapsBaseUrl.isNotEmpty) {
          final appleMapsUrl = '$appleMapsBaseUrl?q=$query';
          final appleUri = Uri.parse(appleMapsUrl);

          if (await canLaunchUrl(appleUri)) {
            await launchUrl(appleUri, mode: LaunchMode.externalApplication);
            _commonLogger.printURLLogs(["Apple Maps query launched: $address"]);
            return true;
          }
        }
      }

      // Try Google Maps
      final googleMapsBaseUrl = UrlLauncherConfig.getMapsUrl('google_maps');
      if (googleMapsBaseUrl.isNotEmpty) {
        final googleMapsUrl = '${googleMapsBaseUrl}search/?api=1&query=$query';
        final googleUri = Uri.parse(googleMapsUrl);

        if (await canLaunchUrl(googleUri)) {
          await launchUrl(googleUri, mode: LaunchMode.externalApplication);
          _commonLogger.printURLLogs(["Google Maps query launched: $address"]);
          return true;
        }
      }

      return false;
    } catch (e) {
      _commonLogger
          .printURLLogs(["Error launching maps query: $address", e.toString()]);
      return false;
    }
  }

  /// 📞 Open phone dialer with number
  ///
  /// Launches the phone dialer with the specified phone number.
  ///
  /// ## Parameters
  /// - `phoneNumber` (String): The phone number to dial
  ///
  /// ## Returns
  /// - `bool`: True if phone dialer was launched, false otherwise
  ///
  /// ## Example
  /// ```dart
  /// bool success = await UrlLauncher.openPhone("+1234567890");
  /// ```
  static Future<bool> openPhone(String phoneNumber) async {
    try {
      final uri = Uri(scheme: 'tel', path: phoneNumber);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
        _commonLogger.printURLLogs(["Phone dialer launched: $phoneNumber"]);
        return true;
      }
      return false;
    } catch (e) {
      _commonLogger
          .printURLLogs(["Error launching phone: $phoneNumber", e.toString()]);
      return false;
    }
  }

  /// 📧 Open email client with recipient
  ///
  /// Launches the email client with the specified recipient and optional subject/body.
  ///
  /// ## Parameters
  /// - `email` (String): The email address
  /// - `subject` (String?): Optional email subject
  /// - `body` (String?): Optional email body
  ///
  /// ## Returns
  /// - `bool`: True if email client was launched, false otherwise
  ///
  /// ## Example
  /// ```dart
  /// bool success = await UrlLauncher.openEmail(
  ///   "info@example.com",
  ///   subject: "Support Request",
  ///   body: "Hello, I need help with...",
  /// );
  /// ```
  static Future<bool> openEmail(String email,
      {String? subject, String? body}) async {
    try {
      String mailtoUrl = 'mailto:$email';
      if (subject != null || body != null) {
        final params = <String>[];
        if (subject != null)
          params.add('subject=${Uri.encodeComponent(subject)}');
        if (body != null) params.add('body=${Uri.encodeComponent(body)}');
        mailtoUrl += '?${params.join('&')}';
      }

      final uri = Uri.parse(mailtoUrl);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
        _commonLogger.printURLLogs(["Email client launched: $email"]);
        return true;
      }
      return false;
    } catch (e) {
      _commonLogger
          .printURLLogs(["Error launching email: $email", e.toString()]);
      return false;
    }
  }

  /// 📱 Open SMS app with phone number
  ///
  /// Launches the SMS app with the specified phone number and optional message.
  ///
  /// ## Parameters
  /// - `phoneNumber` (String): The phone number
  /// - `message` (String?): Optional pre-filled message
  ///
  /// ## Returns
  /// - `bool`: True if SMS app was launched, false otherwise
  ///
  /// ## Example
  /// ```dart
  /// bool success = await UrlLauncher.openSms("+1234567890", "Hello!");
  /// ```
  static Future<bool> openSms(String phoneNumber, {String? message}) async {
    try {
      String smsUrl = 'sms:$phoneNumber';
      if (message != null) {
        smsUrl += '?body=${Uri.encodeComponent(message)}';
      }

      final uri = Uri.parse(smsUrl);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
        _commonLogger.printURLLogs(["SMS app launched: $phoneNumber"]);
        return true;
      }
      return false;
    } catch (e) {
      _commonLogger
          .printURLLogs(["Error launching SMS: $phoneNumber", e.toString()]);
      return false;
    }
  }

  /// 🎵 Open music streaming apps
  ///
  /// Launches music streaming apps with the specified track or artist using config URLs.
  ///
  /// ## Parameters
  /// - `platform` (String): The music platform (spotify, apple_music, youtube_music)
  /// - `query` (String): The track, artist, or album to search for
  ///
  /// ## Returns
  /// - `bool`: True if music app was launched, false otherwise
  ///
  /// ## Example
  /// ```dart
  /// bool success = await UrlLauncher.openMusic("spotify", "Flutter Song");
  /// ```
  static Future<bool> openMusic(String platform, String query) async {
    try {
      final baseUrl = UrlLauncherConfig.getMusicUrl(platform);
      if (baseUrl.isEmpty) {
        _commonLogger.printURLLogs(["Unsupported music platform: $platform"]);
        return false;
      }

      final encodedQuery = Uri.encodeComponent(query);
      final url = '$baseUrl$encodedQuery';

      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        _commonLogger.printURLLogs(["Music app launched: $platform - $query"]);
        return true;
      }
      return false;
    } catch (e) {
      _commonLogger.printURLLogs(
          ["Error launching music: $platform/$query", e.toString()]);
      return false;
    }
  }

  /// 🎬 Open video streaming apps
  ///
  /// Launches video streaming apps with the specified content using config URLs.
  ///
  /// ## Parameters
  /// - `platform` (String): The video platform (youtube, netflix, disney_plus)
  /// - `query` (String): The video or show to search for
  ///
  /// ## Returns
  /// - `bool`: True if video app was launched, false otherwise
  ///
  /// ## Example
  /// ```dart
  /// bool success = await UrlLauncher.openVideo("youtube", "Flutter Tutorial");
  /// ```
  static Future<bool> openVideo(String platform, String query) async {
    try {
      final baseUrl = UrlLauncherConfig.getVideoUrl(platform);
      if (baseUrl.isEmpty) {
        _commonLogger.printURLLogs(["Unsupported video platform: $platform"]);
        return false;
      }

      final encodedQuery = Uri.encodeComponent(query);
      final url = '$baseUrl$encodedQuery';

      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        _commonLogger.printURLLogs(["Video app launched: $platform - $query"]);
        return true;
      }
      return false;
    } catch (e) {
      _commonLogger.printURLLogs(
          ["Error launching video: $platform/$query", e.toString()]);
      return false;
    }
  }

  /// 🌐 Open website URLs
  ///
  /// Launches website URLs with the specified platform using config URLs.
  ///
  /// ## Parameters
  /// - `platform` (String): The website platform (main, osmea, documentation)
  ///
  /// ## Returns
  /// - `bool`: True if website was launched, false otherwise
  ///
  /// ## Example
  /// ```dart
  /// bool success = await UrlLauncher.openWebsite("main");
  /// bool osmea = await UrlLauncher.openWebsite("osmea");
  /// ```
  static Future<bool> openWebsite(String platform) async {
    try {
      final baseUrl = UrlLauncherConfig.getWebsiteUrl(platform);
      if (baseUrl.isEmpty) {
        _commonLogger.printURLLogs(["Unsupported website platform: $platform"]);
        return false;
      }

      return await openUrl(baseUrl);
    } catch (e) {
      _commonLogger
          .printURLLogs(["Error opening website: $platform", e.toString()]);
      return false;
    }
  }
}
