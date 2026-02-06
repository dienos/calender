import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = _buildDarkTheme();

  static ThemeData _buildDarkTheme() {
    const colorScheme = ColorScheme.dark(
      primary: Color(0xFF4CAF50),
      secondary: Color(0xFF81C784),
      background: Color(0xFF121212),
      surface: Color(0xFF1E1E1E),
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onBackground: Colors.white,
      onSurface: Colors.white,
      error: Colors.redAccent,
      onError: Colors.black,
    );

    return ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
      cardTheme: CardThemeData(
        color: colorScheme.surface,
        elevation: 2,
      ),
      // Add other global theme definitions here
    );
  }

  // You can also define a light theme if needed
  // static final lightTheme = _buildLightTheme();
}
