import 'dart:math' as math;

/// 🔢 **OSMEA Double Extension Helper**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Comprehensive double utilities for precision handling, formatting,
/// and mathematical operations with consistent behavior across the OSMEA ecosystem.
///
/// ## Problem Statement
/// Currently, the project does not provide a centralized utility for handling
/// precision and formatting operations on double values. As a result:
///
/// - **Code Duplication**: Developers repeatedly write ad-hoc solutions
///   (e.g., toStringAsFixed) whenever precision handling is needed.
/// - **Inconsistency**: Different modules may apply different precision handling
///   logic, which can lead to inconsistent numeric representations across the app.
/// - **Reduced Maintainability**: Updating or changing precision logic requires
///   modifications in multiple parts of the codebase instead of a single place.
///
/// ## Solution
/// This comprehensive Double Extension Helper provides reusable and standardized
/// precision handling, formatting utilities, and mathematical operations.
///
/// ## Usage Examples
/// ```dart
/// import 'package:core/core.dart';
///
/// // Basic precision
/// final price = 19.999;
/// print(price.toPrecision(2)); // "20.00"
///
/// // Currency formatting
/// print(price.toCurrency()); // "20.00"
/// print(price.toCurrency('$')); // "$20.00"
///
/// // Percentage formatting
/// final progress = 0.8567;
/// print(progress.toPercentage()); // "85.7%"
///
/// // Compact numbers
/// final big = 1234567.0;
/// print(big.toCompact()); // "1.23M"
///
/// // Clean display
/// final clean = 19.00;
/// print(clean.toClean()); // "19"
/// ```
///
/// {@category Helper}
/// {@subCategory DoubleExtension}

/// 🎯 Double Extension Helper
///
/// This extension addresses the core problem and extends beyond basic precision
/// to provide a complete toolkit for double value handling across OSMEA.
extension DoubleExtensionHelper on double {
  // ==================== CORE PRECISION METHODS ====================

  /// 🎯 **Primary Method **
  ///
  /// Formats double to specified precision with consistent behavior.
  /// This is the core method that replaces scattered `toStringAsFixed()` calls
  /// throughout the codebase.
  ///
  /// **[precision]** - Number of decimal places (default: 2)
  ///

  /// ```dart
  /// final price = 19.999;
  /// print(price.toPrecision(2)); // "20.00"
  /// print(price.toPrecision(1)); // "20.0"
  /// print(price.toPrecision(0)); // "20"
  /// ```
  String toPrecision([int precision = 2]) {
    if (precision < 0) precision = 0;
    return toStringAsFixed(precision);
  }

  /// 🔄 **Mathematical Precision**
  ///
  /// Round to specified decimal places and return as double
  ///
  /// Example:
  /// ```dart
  /// final value = 19.999;
  /// print(value.roundToPrecision(2)); // 20.0 (as double)
  /// ```
  double roundToPrecision(int precision) {
    if (precision < 0) precision = 0;
    final factor = math.pow(10, precision);
    return (this * factor).round() / factor;
  }

  // ==================== BUSINESS FORMATTING ====================

  /// 💰 **Currency Formatting**
  ///
  /// Standard currency display with 2 decimal places
  ///
  /// Example:
  /// ```dart
  /// final amount = 1234.5;
  /// print(amount.toCurrency()); // "1234.50"
  /// print(amount.toCurrency('$')); // "$1234.50"
  /// print(amount.toCurrency('₺')); // "₺1234.50"
  /// ```
  String toCurrency([String symbol = '']) {
    final formatted = toPrecision(2);
    return symbol.isEmpty ? formatted : '$symbol$formatted';
  }

  /// 📊 **Percentage Formatting**
  ///
  /// Convert decimal to percentage with specified precision
  ///
  /// Example:
  /// ```dart
  /// final ratio = 0.8567;
  /// print(ratio.toPercentage()); // "85.7%"
  /// print(ratio.toPercentage(2)); // "85.67%"
  /// print(ratio.toPercentage(0)); // "86%"
  /// ```
  String toPercentage([int precision = 1]) {
    final percentage = this * 100;
    return '${percentage.toPrecision(precision)}%';
  }

  /// 📏 **Compact Number Formatting**
  ///
  /// Format large numbers with K, M, B suffixes
  ///
  /// Example:
  /// ```dart
  /// final big = 1234567.0;
  /// print(big.toCompact()); // "1.23M"
  /// print(1500.0.toCompact()); // "1.50K"
  /// print(2500000000.0.toCompact()); // "2.50B"
  /// ```
  String toCompact([int precision = 2]) {
    final absValue = abs();
    if (absValue >= 1000000000) {
      return '${(this / 1000000000).toPrecision(precision)}B';
    } else if (absValue >= 1000000) {
      return '${(this / 1000000).toPrecision(precision)}M';
    } else if (absValue >= 1000) {
      return '${(this / 1000).toPrecision(precision)}K';
    } else {
      return toPrecision(precision);
    }
  }

  /// 🎨 **Clean Display**
  ///
  /// Remove unnecessary trailing zeros for clean presentation
  ///
  /// Example:
  /// ```dart
  /// print(19.00.toClean()); // "19"
  /// print(19.50.toClean()); // "19.5"
  /// print(19.123.toClean()); // "19.123"
  /// ```
  String toClean() {
    if (this == truncateToDouble()) {
      return truncate().toString();
    } else {
      return toString()
          .replaceAll(RegExp(r'0*$'), '')
          .replaceAll(RegExp(r'\.$'), '');
    }
  }

  /// 💼 **Financial Display**
  ///
  /// Format with thousand separators for financial data
  ///
  /// Example:
  /// ```dart
  /// print(1234567.89.toFinancial()); // "1,234,567.89"
  /// print(1000.0.toFinancial(0)); // "1,000"
  /// ```
  String toFinancial([int precision = 2]) {
    final parts = toPrecision(precision).split('.');
    final integerPart = parts[0];
    final decimalPart = parts.length > 1 ? '.${parts[1]}' : '';

    // Add thousand separators
    final regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    final formatted =
        integerPart.replaceAllMapped(regex, (Match match) => '${match[1]},');

    return '$formatted$decimalPart';
  }

  // ==================== SPECIALIZED FORMATTERS ====================

  /// ⭐ **Rating Display**
  ///
  /// Format as rating (clamped 0.0 to 5.0)
  ///
  /// Example:
  /// ```dart
  /// print(4.567.toRating()); // "4.6"
  /// print(6.0.toRating()); // "5.0"
  /// ```
  String toRating() {
    return clamp(0.0, 5.0).toDouble().toPrecision(1);
  }

  /// 🎯 **Score Display**
  ///
  /// Format as score (clamped 0 to 100)
  ///
  /// Example:
  /// ```dart
  /// print(85.67.toScore()); // "86"
  /// print(150.0.toScore()); // "100"
  /// ```
  String toScore() {
    return clamp(0.0, 100.0).toDouble().toPrecision(0);
  }

  /// 🌡️ **Temperature Display**
  ///
  /// Example:
  /// ```dart
  /// print(23.5.toTemperature()); // "23.5°C"
  /// print(75.2.toTemperature('°F')); // "75.2°F"
  /// ```
  String toTemperature([String unit = '°C']) {
    return '${toPrecision(1)}$unit';
  }

  /// 📏 **Distance Display**
  ///
  /// Auto-convert meters to kilometers when appropriate
  ///
  /// Example:
  /// ```dart
  /// print(500.0.toDistance()); // "500m"
  /// print(1500.0.toDistance()); // "1.50km"
  /// ```
  String toDistance([String unit = 'm']) {
    if (unit == 'm' && this >= 1000) {
      return '${(this / 1000).toPrecision(2)}km';
    }
    return '${toClean()}$unit';
  }

  /// ⚖️ **Weight Display**
  ///
  /// Auto-convert kg to grams when appropriate
  ///
  /// Example:
  /// ```dart
  /// print(2.5.toWeight()); // "2.5kg"
  /// print(0.5.toWeight()); // "500g"
  /// ```
  String toWeight([String unit = 'kg']) {
    if (unit == 'kg' && this < 1) {
      return '${(this * 1000).toPrecision(0)}g';
    }
    return '${toClean()}$unit';
  }

  // ==================== VALIDATION & UTILITIES ====================

  /// ✅ **Range Validation**
  ///
  /// Check if value is within specified range
  ///
  /// Example:
  /// ```dart
  /// print(85.5.isInRange(0, 100)); // true
  /// print(150.0.isInRange(0, 100)); // false
  /// ```
  bool isInRange(double min, double max) {
    return this >= min && this <= max;
  }

  /// 🔒 **Clamp with Precision**
  ///
  /// Clamp value to range and apply precision formatting
  ///
  /// Example:
  /// ```dart
  /// print(150.789.clampWithPrecision(0, 100, 2)); // "100.00"
  /// ```
  String clampWithPrecision(double min, double max, int precision) {
    return clamp(min, max).toDouble().toPrecision(precision);
  }

  /// ≈ **Approximate Equality**
  ///
  /// Check if approximately equal (for floating point comparison)
  ///
  /// Example:
  /// ```dart
  /// print(0.1 + 0.2 == 0.3); // false (floating point precision)
  /// print((0.1 + 0.2).isApproximatelyEqual(0.3)); // true
  /// ```
  bool isApproximatelyEqual(double other, [double tolerance = 0.0001]) {
    return (this - other).abs() < tolerance;
  }

  // ==================== MATHEMATICAL UTILITIES ====================

  /// 📈 **Percentage Calculation**
  ///
  /// Calculate what percentage this value is of another value
  ///
  /// Example:
  /// ```dart
  /// print(25.0.percentageOf(100.0)); // 25.0
  /// print(30.0.percentageOf(120.0)); // 25.0
  /// ```
  double percentageOf(double total) {
    if (total == 0) return 0;
    return (this / total) * 100;
  }

  /// 🔢 **Fractional Part**
  ///
  /// Get the decimal/fractional part of the number
  ///
  /// Example:
  /// ```dart
  /// print(19.567.fractionalPart); // 0.567
  /// print(25.0.fractionalPart); // 0.0
  /// ```
  double get fractionalPart => this - truncateToDouble();

  /// 🔢 **Whole Number Check**
  ///
  /// Check if the value is a whole number
  ///
  /// Example:
  /// ```dart
  /// print(19.0.isWholeNumber); // true
  /// print(19.5.isWholeNumber); // false
  /// ```
  bool get isWholeNumber => fractionalPart == 0;

  /// 🔬 **Scientific Notation**
  ///
  /// Format in scientific notation when appropriate
  ///
  /// Example:
  /// ```dart
  /// print(1234567.0.toScientificIfNeeded()); // "1.23e+6"
  /// print(123.45.toScientificIfNeeded()); // "123.45"
  /// ```
  String toScientificIfNeeded([int threshold = 6]) {
    final absValue = abs();
    if (absValue >= math.pow(10, threshold) ||
        (absValue < math.pow(10, -threshold) && this != 0)) {
      return toStringAsExponential(2);
    }
    return toClean();
  }
}

/// 🛠️ **Static Double Utilities**
///
/// Additional utility functions for working with doubles
class DoubleUtils {
  /// 🔄 **Safe Parsing**
  ///
  /// Parse string to double with fallback value
  ///
  /// Example:
  /// ```dart
  /// print(DoubleUtils.tryParse("19.99")); // 19.99
  /// print(DoubleUtils.tryParse("invalid", 0.0)); // 0.0
  /// ```
  static double tryParse(String value, [double fallback = 0.0]) {
    return double.tryParse(value) ?? fallback;
  }

  /// 🎲 **Random Generation**
  ///
  /// Generate random double in specified range
  ///
  /// Example:
  /// ```dart
  /// final random = DoubleUtils.randomInRange(1.0, 10.0);
  /// print(random); // e.g., 7.234
  /// ```
  static double randomInRange(double min, double max) {
    final random = math.Random();
    return min + random.nextDouble() * (max - min);
  }

  /// 📊 **Statistical Functions**
  ///
  /// Calculate average of a list of doubles
  ///
  /// Example:
  /// ```dart
  /// final avg = DoubleUtils.average([1.0, 2.0, 3.0, 4.0, 5.0]);
  /// print(avg); // 3.0
  /// ```
  static double average(List<double> values) {
    if (values.isEmpty) return 0.0;
    return values.reduce((a, b) => a + b) / values.length;
  }

  /// 📊 **Median Calculation**
  ///
  /// Find median value in a list
  ///
  /// Example:
  /// ```dart
  /// final median = DoubleUtils.median([1.0, 3.0, 2.0, 5.0, 4.0]);
  /// print(median); // 3.0
  /// ```
  static double median(List<double> values) {
    if (values.isEmpty) return 0.0;
    final sorted = List<double>.from(values)..sort();
    final middle = sorted.length ~/ 2;
    if (sorted.length % 2 == 0) {
      return (sorted[middle - 1] + sorted[middle]) / 2;
    } else {
      return sorted[middle];
    }
  }

  // ==================== CONSTANTS ====================

  /// Mathematical constants for convenience
  static const double epsilon = 0.0001;
  static const double pi = math.pi;
  static const double e = math.e;
}
