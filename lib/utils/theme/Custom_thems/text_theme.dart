import 'package:cab_co19/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  //Customize Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: TColors.textPrimary),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: TColors.textPrimary),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: TColors.textPrimary),
    labelLarge: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: TColors.textPrimary),
    labelMedium: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: TColors.textPrimary),
    labelSmall: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: TColors.textPrimary),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: TColors.textWhite),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: TColors.textWhite),
  );

  //Customize Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: TColors.textWhite),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: TColors.textWhite),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: TColors.textWhite),
    labelLarge: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: TColors.textWhite),
    labelMedium: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: TColors.textWhite),
    labelSmall: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: TColors.textWhite),
  );
}
