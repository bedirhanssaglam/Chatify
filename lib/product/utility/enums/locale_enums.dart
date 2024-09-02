import 'package:flutter/material.dart';

/// Project locale enum for operation and configuration
enum Locales {
  /// Turkish locale
  tr(Locale('tr', 'TR')),

  /// English locale
  en(Locale('en', 'US'));

  const Locales(this.locale);

  /// Locale value
  final Locale locale;

  /// Getter to return the name of the locale as a string
  String get languageName {
    switch (this) {
      case Locales.tr:
        return 'Türkçe';
      case Locales.en:
        return 'English';
      default:
        return 'Unknown';
    }
  }
}
