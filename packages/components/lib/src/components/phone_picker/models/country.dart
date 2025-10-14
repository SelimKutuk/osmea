import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/foundation.dart' show kDebugMode;

import '../constants/country_codes.dart';

/// Country model for phone picker component
///
/// This class represents a country with essential data
/// including name, codes, and dial code.
class Country {
  const Country({
    required this.name,
    required this.code,
    required this.dialCode,
    this.iso3Code,
  });

  /// Country name (e.g., "Turkey")
  final String name;

  /// Country code (e.g., "TR")
  final String code;

  /// Dial code (e.g., "+90")
  final String dialCode;

  /// ISO3 country code (e.g., "TUR")
  final String? iso3Code;

  /// Factory constructor from country code
  factory Country.fromCountryCode(String countryCode) {
    final Map<String, String>? jsonCode = codes.firstWhereOrNull(
      (code) => code['code'] == countryCode,
    );
    if (jsonCode == null) {
      throw ArgumentError('Country code $countryCode not found');
    }
    return Country.fromJson(jsonCode);
  }

  /// Safe factory constructor from country code
  static Country? tryFromCountryCode(String countryCode) {
    try {
      return Country.fromCountryCode(countryCode);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to recognize country from countryCode: $countryCode');
      }
      return null;
    }
  }

  /// Factory constructor from dial code
  factory Country.fromDialCode(String dialCode) {
    final Map<String, String>? jsonCode = codes.firstWhereOrNull(
      (code) => code['dial_code'] == dialCode,
    );
    if (jsonCode == null) {
      throw ArgumentError('Dial code $dialCode not found');
    }
    return Country.fromJson(jsonCode);
  }

  /// Safe factory constructor from dial code
  static Country? tryFromDialCode(String dialCode) {
    try {
      return Country.fromDialCode(dialCode);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to recognize country from dialCode: $dialCode');
      }
      return null;
    }
  }

  /// Factory constructor from JSON
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name']!,
      code: json['code']!,
      dialCode: json['dial_code']!,
      iso3Code: json['iso3Code'],
    );
  }

  /// Create a copy of this country with updated properties
  Country copyWith({
    String? name,
    String? code,
    String? dialCode,
    String? iso3Code,
  }) {
    return Country(
      name: name ?? this.name,
      code: code ?? this.code,
      dialCode: dialCode ?? this.dialCode,
      iso3Code: iso3Code ?? this.iso3Code,
    );
  }

  /// Get clean country name (removes brackets and extra characters)
  String get cleanName {
    return name.replaceAll(RegExp(r'[[\]]'), '').split(',').first;
  }

  /// Convert to long string format
  String toLongString() => "$dialCode $cleanName";

  /// Convert to country string only
  String toCountryStringOnly() => cleanName;

  @override
  String toString() => '$name ($code) $dialCode';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Country &&
        other.name == name &&
        other.code == code &&
        other.dialCode == dialCode &&
        other.iso3Code == iso3Code;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        code.hashCode ^
        dialCode.hashCode ^
        iso3Code.hashCode;
  }
}

/// Country codes data
class CountryCodes {
  /// Get all countries as Country objects
  static List<Country> get all {
    return codes
        .map((data) => Country(
              name: data['name']!,
              code: data['code']!,
              dialCode: data['dial_code']!,
              iso3Code: data['iso3Code'],
            ))
        .toList();
  }

  /// Find country by country code
  static Country? findByCode(String code) {
    try {
      return all.firstWhere((country) => country.code == code);
    } catch (e) {
      return null;
    }
  }

  /// Find country by dial code
  static Country? findByDialCode(String dialCode) {
    try {
      return all.firstWhere((country) => country.dialCode == dialCode);
    } catch (e) {
      return null;
    }
  }

  /// Get default country (Turkey)
  static Country get defaultCountry => all.first;
}
