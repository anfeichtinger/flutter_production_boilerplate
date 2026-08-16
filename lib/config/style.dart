import 'package:flutter/material.dart';

/// This class contains all custom styles and theme information
/// to be easily updated in a single place.
class Style {
  const Style();

  // =================
  // | Border radius |
  // =================

  /// Large circular radius: 24
  static const Radius radiusLg = Radius.circular(24);

  /// Medium circular radius: 12
  static const Radius radiusMd = Radius.circular(12);

  /// Small circular radius: 8
  static const Radius radiusSm = Radius.circular(8);

  // ===============
  // | Light Theme |
  // ===============

  /// The custom light theme of this application
  static final ThemeData lightTheme =
      ThemeData.light(useMaterial3: true).copyWith(
    // Light or dark mode
    brightness: Brightness.light,
    // Basic color definitions
    colorScheme: ColorScheme.fromSeed(
      // The seed sets the primary colors automatically
      seedColor: const Color(0xFF7c3aed), // violet-600
      // How the colors are calculated from the seed
      dynamicSchemeVariant: DynamicSchemeVariant.rainbow,
      onPrimary: Colors.white,
      secondary: const Color(0xFF7c3aed), // violet-600
      onSecondary: Colors.white,
      tertiary: const Color(0xFFdb2777), // pink-600
      onTertiary: Colors.white,
      error: const Color(0xFFdc2626), // red-600
      // The main background
      surface: const Color(0xFFF1F5F9), // slate-100
      // Elements like cards on the main background
      surfaceContainer: Colors.white,
      // Text on the main background
      onSurface: const Color(0xFF030712), // gray-950
      // Text on the cards
      onSurfaceVariant: const Color(0xFF111827), // gray-900
    ),
    // Divider
    dividerColor: const Color(0xFFcbd5e1), // slate-300
    // Used for shadows and in this project also borders of cards
    shadowColor: Colors.black.withOpacity(.1),
    // Specific text styles and fonts
    textTheme: ThemeData.light(useMaterial3: true).textTheme.apply(
          fontFamily: 'Nunito',
          displayColor: const Color(0xFF030712), // gray-950
          bodyColor: const Color(0xFF111827), // gray-900
        ),
    primaryTextTheme: ThemeData.light(useMaterial3: true).textTheme.apply(
          fontFamily: 'Nunito',
          displayColor: Colors.white,
          bodyColor: const Color(0xFFf9fafb), // gray-50
        ),
    // Bottom navigation theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      elevation: 2,
    ),
    // Note: If different components are used you might need to provide specific styles for them
  );

  // ===============
  // | Dark Theme |
  // ===============

  /// The custom dark theme of this application
  static final ThemeData darkTheme =
      ThemeData.dark(useMaterial3: true).copyWith(
    // Light or dark mode
    brightness: Brightness.dark,
    // Basic color definitions
    colorScheme: ColorScheme.fromSeed(
      // Example: Overwrite the primary color
      seedColor: const Color(0xFFc4b5fd), // violet-400
      primary: const Color(0xFFc4b5fd), // violet-400
      onPrimary: Colors.black,
      secondary: const Color(0xFFa78bfa), // violet-400
      onSecondary: Colors.white,
      tertiary: const Color(0xFFf472b6), // pink-400
      onTertiary: Colors.white,
      error: const Color(0xFFef4444), // red-500
      // The main background
      surface: Colors.black,
      // Elements like cards on the main background
      surfaceContainer: const Color(0xFF18181b), // zinc-900
      // Text on the main background
      onSurface: const Color(0xFFf9fafb), // gray-50
      // Text on the cards
      onSurfaceVariant: const Color(0xFFf3f4f6), // gray-100
    ),
    // Divider
    dividerColor: const Color(0xFF52525b), // zinc-600
    // Used for shadows and in this project also borders of cards
    shadowColor: Colors.white.withOpacity(.1),
    // Specific text styles and fonts
    textTheme: ThemeData.dark(useMaterial3: true).textTheme.apply(
          fontFamily: 'Nunito',
          displayColor: const Color(0xFFf9fafb), // gray-50
          bodyColor: const Color(0xFFf3f4f6), // gray-100
        ),
    primaryTextTheme: ThemeData.dark(useMaterial3: true).textTheme.apply(
          fontFamily: 'Nunito',
          displayColor: const Color(0xFF030712), // gray-950
          bodyColor: const Color(0xFF111827), // gray-900
        ),
    // Bottom navigation theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF27272a), // zinc-800,
      elevation: 2,
    ),
    // Note: If different components are used you might need to provide specific styles for them
  );
}
