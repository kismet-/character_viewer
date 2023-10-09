import 'package:flutter/material.dart';

import 'color.dart' as model;

/// Wrapper for all colors we use in Ktf.
/// This class only exists for easy importing!
class AppColors {
  /// Creates a Flutter color from a shared CC/ Dart model color.
  static Color fromModelColor(model.Color modelColor) =>
      Color(modelColor.toArgbBytes());

  static const white = Colors.white;
  // General Text
  static const defaultText = Color.fromRGBO(255, 255, 255, 0.9);
  static const secondaryText = Color.fromRGBO(255, 255, 255, 0.6);
  static const disabledText = Color.fromRGBO(255, 255, 255, 0.4);
  static const linkText = Color.fromRGBO(0, 229, 255, 1.0);
  static const premiumText = Color.fromRGBO(141, 91, 255, 1.0);
  static const background = Color.fromRGBO(42, 42, 42, 1.0);

  // Button Text
  static const buttonPrimaryText = Color.fromRGBO(32, 33, 36, 1.0);
  static const buttonPrimaryDisabledText = Color.fromRGBO(32, 33, 36, 0.6);
  static const buttonSecondaryText = Color.fromRGBO(255, 255, 255, 0.9);
  static const buttonSecondaryDisabledText = Color.fromRGBO(255, 255, 255, 0.3);
  static const buttonHairlineText = Color.fromRGBO(255, 255, 255, 0.9);
  static const buttonHairlineDisabledText = Color.fromRGBO(255, 255, 255, 0.2);

  // Component colors from

  // Container (used to combine information into groups, like list rows & cards)
  static const primaryContainer = Color.fromRGBO(255, 255, 255, 0.06);
  static const secondaryContainer = Color.fromRGBO(255, 255, 255, 0.03);
  static const transparentContainer = Colors.transparent;

  // Surface (elements that sit on top of backgrounds & containers, like icons)
  static const primarySurface = Color.fromRGBO(255, 255, 255, 0.9);
  static const secondarySurface = Color.fromRGBO(255, 255, 255, 0.3);

  // Button
  static const buttonPrimaryBackground = Color.fromRGBO(255, 255, 255, 0.9);
  static const buttonPrimaryDisabledBackground =
      Color.fromRGBO(255, 255, 255, 0.6);
  static const buttonSecondaryBackground = Color.fromRGBO(255, 255, 255, 0.2);
  static const buttonSecondaryDisabledBackground =
      Color.fromRGBO(255, 255, 255, 0.03);
  static const buttonHairlineBackground = Color.fromRGBO(255, 255, 255, 0.6);
  static const buttonHairlineDisabledBackground =
      Color.fromRGBO(255, 255, 255, 0.2);

  // Informative (indicates states or branding)
  static const success = Color.fromRGBO(76, 175, 80, 1.0);
  static const error = Color.fromRGBO(211, 47, 47, 1.0);
  static const update = Color.fromRGBO(211, 47, 47, 1.0);
  static const primary = Color.fromRGBO(0, 229, 255, 1.0);
  static const premium = Color.fromRGBO(141, 91, 255, 1.0);

  // Brand palette
  static const highlightText = Color(0xFFF75E46);
  static const darkBlue = Color.fromRGBO(0, 70, 127, 1);
  static const blue = Color.fromRGBO(0, 120, 210, 1);
  static const lightBlue = Color.fromRGBO(77, 180, 250, 1);
  static const teal = Color.fromRGBO(177, 225, 235, 1.0);
  static const highlightBlue = Color.fromRGBO(225, 240, 250, 1.0);
  static const black = Color.fromRGBO(19, 19, 19, 1.0);
  static const darkGray = Color.fromRGBO(54, 73, 90, 1.0);
  static const mediumGray = Color.fromRGBO(110, 137, 153, 1.0);
  static const gray = Color.fromRGBO(157, 166, 171, 1.0);
  static const lightGray = Color.fromRGBO(208, 218, 224, 1.0);
  static const ultraLightGray = Color.fromRGBO(235, 238, 240, 1.0);
  static const darkRead = Color.fromRGBO(195, 0, 25, 1.0);
  static const red = Color.fromRGBO(245, 35, 5, 1.0);
  static const orange = Color.fromRGBO(255, 115, 24, 1.0);
  static const lightOrange = Color.fromRGBO(250, 175, 0, 1.0);
  static const yellowGreen = Color.fromRGBO(209, 213, 50, 1.0);
  static const green = Color.fromRGBO(0, 185, 137, 1.0);

  // Misc Colors
  static const cardGradient = Color(0xFF1D3644);
  static const captureCardGradient = Color.fromRGBO(42, 42, 42, 0.9);

  // Background
  static const playButtonRegularBackground = Color.fromRGBO(255, 255, 255, 1.0);
  static const playButtonFocusedBackground = Color.fromRGBO(255, 255, 255, 1.0);
  static const playButtonLoadingBackground = buttonPrimaryDisabledBackground;
  static const playButtonDisabledBackground =
      Color.fromRGBO(255, 255, 255, 0.06);
  static const screenSelectorBackground = Color.fromRGBO(0, 0, 0, 0.6);
  // Text
  static const playButtonRegularText = buttonPrimaryText;
  static const playButtonFocusedText = buttonPrimaryText;
  static const playButtonLoadingText = buttonPrimaryDisabledText;
  static const playButtonDisabledText = Color.fromRGBO(255, 255, 255, 0.9);
  static const screenSelectorText = Color.fromRGBO(255, 255, 255, 0.9);
  static const screenSelectorSubtext = Color.fromRGBO(255, 255, 255, 0.6);
  static const screenSelectorIcon = Color.fromRGBO(196, 196, 196, 1.0);
  static const screenSelectorDisabledIcon = Color.fromRGBO(196, 196, 196, 0.6);

  // Material Theme Colors
  static const materialPrimary = Color.fromRGBO(247, 94, 70, 1.0);
  static const materialPrimaryVariant = Color.fromRGBO(214, 59, 56, 1.0);

  // Text field
  static const textFieldFillColor = Color.fromRGBO(0, 0, 0, 0.3);

  static const primaryBackground = Color.fromRGBO(32, 33, 36, 1.0);
}

class SimpsonsTheme {
  // Primary Yellow of the Simpson's skin tone
  static const Color primaryYellow = Color(0xFFFFD90F);

  // Blue inspired by the sky in The Simpsons
  static const Color primaryBlue = Color(0xFF4D8DF6);

  // Brown inspired by the Simpson house
  static const Color primaryBrown = Color(0xFF8E7460);

  // Green inspired by the surroundings in Springfield
  static const Color primaryGreen = Color(0xFF33A552);

  // Red inspired by various elements in the show
  static const Color primaryRed = Color(0xFFE63946);

  // A basic color scheme based on the above
  ThemeData buildTheme() {
    return ThemeData(
      // Background for general screens
      scaffoldBackgroundColor: primaryYellow,

      // App bar color
      appBarTheme: AppBarTheme(
        color: primaryBlue,
        titleTextStyle: TextStyle(color: Colors.white),
      ),

      // List tile color
      listTileTheme: ListTileThemeData(
        tileColor: primaryGreen,
      ),

      // Search bar color
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: primaryBrown,
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: primaryRed),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),

      // Button theme
      buttonTheme: ButtonThemeData(
        buttonColor: primaryRed,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
