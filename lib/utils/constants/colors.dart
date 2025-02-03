import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //App Baic Colors
  static const Color primary = Colors.black;
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  // Gradient Colors

  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [Color(0xFF4b68ff), Color(0xFFFFE24B), Color(0xFFb0c7ff)]);

  //Text Colors

  static const Color textPrimary = Color(0xFF444444);
  static const Color TextSecondary = Color(0xFF646262);
  static const Color textWhite = Colors.white;

  //Background Colors

  static const Color lightBackground = Colors.white;
  static const Color darkBackground = Color(0xFF646262);
  static const Color primaryBackground = Colors.white;

  static Color greybackground = Colors.grey;

  static Color customTeal =
      const Color.fromRGBO(38, 198, 218, 1); //rgb(38, 198, 218)
  static Color customGold = Colors.yellow.shade700;
}
