import 'package:flutter/material.dart';

// Light Theme
final ThemeData googleLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xFF4285F4), // Google Blue
  colorScheme: ColorScheme.light(
    primary: const Color(0xFF4285F4),
    secondary: const Color(0xFFEA4335),  // Use secondary instead of accentColor
  ),
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Roboto',  // Native Google font
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF4285F4),
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF4285F4), // Button background color
    foregroundColor: Colors.white,  // Text color (previously onPrimary)
  ),
),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: const Color(0xFF4285F4), // TextButton color
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: const Color(0xFF4285F4),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle( // Using headlineLarge instead of headline1
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Color(0xFF4285F4),
    ),
    bodyLarge: TextStyle( // Using bodyLarge instead of bodyText1
      fontSize: 16.0,
      color: Colors.black87,
    ),
  ),
);

// Dark Theme
final ThemeData googleDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF4285F4), // Google Blue
  colorScheme: ColorScheme.dark(
    primary: const Color(0xFF4285F4),
    secondary: const Color(0xFFEA4335),  // Use secondary instead of accentColor
  ),
  scaffoldBackgroundColor: const Color(0xFF202124),  // Dark background similar to Google apps
  fontFamily: 'Roboto',  // Native Google font
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF303134),
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF4285F4), // Button background color
    foregroundColor: Colors.white,  // Text color (previously onPrimary)
  ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: const Color(0xFF4285F4), // TextButton color
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: const Color(0xFF4285F4),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle( // Using headlineLarge instead of headline1
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Color(0xFF4285F4),
    ),
    bodyLarge: TextStyle( // Using bodyLarge instead of bodyText1
      fontSize: 16.0,
      color: Colors.white,
    ),
  ),
);

List <Color> googlegradient = [
  Color(0xFF4285F4),  // Google Blue
      Color(0xFFEA4335),  // Google Red
      Color(0xFFFBBC05),  // Google Yellow
      Color(0xFF34A853), 
];
