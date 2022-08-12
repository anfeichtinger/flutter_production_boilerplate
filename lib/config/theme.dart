import 'package:flutter/material.dart';

/// Colors from Tailwind CSS (v3.0) - June 2022
///
/// https://tailwindcss.com/docs/customizing-colors

const int _primaryColor = 0xFF6366F1;
const MaterialColor primarySwatch = MaterialColor(_primaryColor, <int, Color>{
  50: Color(0xFFEEF2FF), // indigo-50
  100: Color(0xFFE0E7FF), // indigo-100
  200: Color(0xFFC7D2FE), // indigo-200
  300: Color(0xFFA5B4FC), // indigo-300
  400: Color(0xFF818CF8), // indigo-400
  500: Color(_primaryColor), // indigo-500
  600: Color(0xFF4F46E5), // indigo-600
  700: Color(0xFF4338CA), // indigo-700
  800: Color(0xFF3730A3), // indigo-800
  900: Color(0xFF312E81), // indigo-900
});

const int _textColor = 0xFF64748B;
const MaterialColor textSwatch = MaterialColor(_textColor, <int, Color>{
  50: Color(0xFFF8FAFC), // slate-50
  100: Color(0xFFF1F5F9), // slate-100
  200: Color(0xFFE2E8F0), // slate-200
  300: Color(0xFFCBD5E1), // slate-300
  400: Color(0xFF94A3B8), // slate-400
  500: Color(_textColor), // slate-500
  600: Color(0xFF475569), // slate-600
  700: Color(0xFF334155), // slate-700
  800: Color(0xFF1E293B), // slate-800
  900: Color(0xFF0F172A), // slate-900
});

const Color errorColor = Color(0xFFDC2626); // red-600

final ColorScheme lightColorScheme = ColorScheme.light(
  primary: primarySwatch.shade500,
  secondary: primarySwatch.shade500,
  onSecondary: Colors.white,
  error: errorColor,
  background: textSwatch.shade200,
  onBackground: textSwatch.shade500,
  onSurface: textSwatch.shade500,
  surface: textSwatch.shade50,
  surfaceVariant: Colors.white,
  shadow: textSwatch.shade900.withOpacity(.1),
);

final ColorScheme darkColorScheme = ColorScheme.dark(
  primary: primarySwatch.shade500,
  secondary: primarySwatch.shade500,
  onSecondary: Colors.white,
  error: errorColor,
  background: const Color(0xFF171724),
  onBackground: textSwatch.shade400,
  onSurface: textSwatch.shade300,
  surface: const Color(0xFF262630),
  surfaceVariant: const Color(0xFF282832),
  shadow: textSwatch.shade900.withOpacity(.2),
);

final ThemeData lightTheme = ThemeData(
  colorScheme: lightColorScheme,
  fontFamily: 'Nunito',
  toggleableActiveColor: primarySwatch.shade500,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: textSwatch.shade700,
      fontFamily: 'Nunito',
    ),
    displayMedium: TextStyle(
      color: textSwatch.shade600,
      fontFamily: 'Nunito',
    ),
    displaySmall: TextStyle(
      color: textSwatch.shade500,
      fontFamily: 'Nunito',
    ),
    headlineLarge: TextStyle(
      color: textSwatch.shade700,
      fontFamily: 'Nunito',
    ),
    headlineMedium: TextStyle(
      color: textSwatch.shade600,
      fontFamily: 'Nunito',
    ),
    headlineSmall: TextStyle(
      color: textSwatch.shade500,
      fontFamily: 'Nunito',
    ),
    titleLarge: TextStyle(
      color: textSwatch.shade700,
      fontFamily: 'Nunito',
    ),
    titleMedium: TextStyle(
      color: textSwatch.shade600,
      fontFamily: 'Nunito',
    ),
    titleSmall: TextStyle(
      color: textSwatch.shade500,
      fontFamily: 'Nunito',
    ),
    bodyLarge: TextStyle(
      color: textSwatch.shade700,
      fontFamily: 'Nunito',
    ),
    bodyMedium: TextStyle(
      color: textSwatch.shade600,
      fontFamily: 'Nunito',
    ),
    bodySmall: TextStyle(
      color: textSwatch.shade500,
      fontFamily: 'Nunito',
    ),
    labelLarge: TextStyle(
      color: textSwatch.shade700,
      fontFamily: 'Nunito',
    ),
    labelMedium: TextStyle(
      color: textSwatch.shade600,
      fontFamily: 'Nunito',
    ),
    labelSmall: TextStyle(
      color: textSwatch.shade500,
      fontFamily: 'Nunito',
    ),
  ),
);

final ThemeData darkTheme = lightTheme.copyWith(
  colorScheme: darkColorScheme,
  toggleableActiveColor: primarySwatch.shade500,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: textSwatch.shade200,
      fontFamily: 'Nunito',
    ),
    displayMedium: TextStyle(
      color: textSwatch.shade300,
      fontFamily: 'Nunito',
    ),
    displaySmall: TextStyle(
      color: textSwatch.shade400,
      fontFamily: 'Nunito',
    ),
    headlineLarge: TextStyle(
      color: textSwatch.shade200,
      fontFamily: 'Nunito',
    ),
    headlineMedium: TextStyle(
      color: textSwatch.shade300,
      fontFamily: 'Nunito',
    ),
    headlineSmall: TextStyle(
      color: textSwatch.shade400,
      fontFamily: 'Nunito',
    ),
    titleLarge: TextStyle(
      color: textSwatch.shade200,
      fontFamily: 'Nunito',
    ),
    titleMedium: TextStyle(
      color: textSwatch.shade300,
      fontFamily: 'Nunito',
    ),
    titleSmall: TextStyle(
      color: textSwatch.shade400,
      fontFamily: 'Nunito',
    ),
    bodyLarge: TextStyle(
      color: textSwatch.shade200,
      fontFamily: 'Nunito',
    ),
    bodyMedium: TextStyle(
      color: textSwatch.shade300,
      fontFamily: 'Nunito',
    ),
    bodySmall: TextStyle(
      color: textSwatch.shade400,
      fontFamily: 'Nunito',
    ),
    labelLarge: TextStyle(
      color: textSwatch.shade200,
      fontFamily: 'Nunito',
    ),
    labelMedium: TextStyle(
      color: textSwatch.shade300,
      fontFamily: 'Nunito',
    ),
    labelSmall: TextStyle(
      color: textSwatch.shade400,
      fontFamily: 'Nunito',
    ),
  ),
);
