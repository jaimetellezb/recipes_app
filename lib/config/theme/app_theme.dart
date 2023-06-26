import 'package:flutter/material.dart';

/// class where the app theme is defined
class AppTheme {
  /// get ThemeData
  ThemeData getTheme() => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8D427C),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      );
}
