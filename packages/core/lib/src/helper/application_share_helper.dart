import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:share_plus/share_plus.dart';
import 'url_launcher_helper.dart';

/// 📤 Application Share Helper
///
/// Centralized utility to share text, URLs, files, and multiple files
/// across platforms with consistent API and logging. Mirrors the style
/// and structure of other helpers in the core package.
///
/// ## Usage Examples
///
/// ### Share Text
/// ```dart
/// await ApplicationShareHelper.shareText('Hello World!', subject: 'Greeting');
/// ```
///
/// ### Share URL
/// ```dart
/// await ApplicationShareHelper.shareUrl('https://flutter.dev', subject: 'Flutter');
/// ```
///
/// ### Share Single File
/// ```dart
/// final file = File('/path/to/document.pdf');
/// await ApplicationShareHelper.shareFile(
///   file,
///   text: 'Check out this document',
///   subject: 'Document',
///   fileName: 'my_document.pdf',
///   mimeType: 'application/pdf',
/// );
/// ```
///
/// ### Share Multiple Files
/// ```dart
/// final files = [
///   File('/path/to/image1.jpg'),
///   File('/path/to/image2.jpg'),
/// ];
/// await ApplicationShareHelper.shareFiles(
///   files,
///   text: 'Here are the photos',
///   subject: 'Photos',
/// );
/// ```
class ApplicationShareHelper {
  ApplicationShareHelper._();

  /// Shares plain text content.
  static Future<bool> shareText(String text, {String? subject}) async {
    try {
      assert(text.isNotEmpty, 'Text to share cannot be empty');
      await Share.share(text, subject: subject);
      return true;
    } catch (e) {
      debugPrint('🔴 Error sharing text: $e');
      return false;
    }
  }

  /// Shares a URL after validating it.
  static Future<bool> shareUrl(String url, {String? subject}) async {
    try {
      if (!UrlLauncher.isValidUrl(url)) {
        debugPrint('❌ Invalid URL to share: $url');
        return false;
      }
      await Share.share(url, subject: subject);
      return true;
    } catch (e) {
      debugPrint('🔴 Error sharing url: $e');
      return false;
    }
  }

  /// Shares a single file using its [File] reference.
  static Future<bool> shareFile(
    File file, {
    String? text,
    String? subject,
    String? fileName,
    String? mimeType,
  }) async {
    try {
      if (!file.existsSync()) {
        debugPrint('❌ File does not exist to share: ${file.path}');
        return false;
      }
      final xFile = XFile(
        file.path,
        name: fileName,
        mimeType: mimeType,
      );
      await Share.shareXFiles([xFile], text: text, subject: subject);
      return true;
    } catch (e) {
      debugPrint('🔴 Error sharing file: $e');
      return false;
    }
  }

  /// Shares multiple files.
  static Future<bool> shareFiles(List<File> files, {String? text, String? subject}) async {
    try {
      assert(files.isNotEmpty, 'Files list cannot be empty');
      final existing = files.where((f) => f.existsSync()).toList();
      if (existing.isEmpty) {
        debugPrint('❌ No existing files to share');
        return false;
      }
      final xfiles = existing.map((f) => XFile(f.path)).toList(growable: false);
      await Share.shareXFiles(xfiles, text: text, subject: subject);
      return true;
    } catch (e) {
      debugPrint('🔴 Error sharing files: $e');
      return false;
    }
  }
}


