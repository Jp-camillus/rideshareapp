import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/appcolor.dart';

class AppThemes {
  /// Track current theme mode
  var themeMode = ThemeMode.light.obs;

  /// Toggle between light and dark
  void toggleTheme() {
    if (themeMode.value == ThemeMode.dark) {
      themeMode.value = ThemeMode.light;
      Get.changeThemeMode(ThemeMode.light);
    } else {
      themeMode.value = ThemeMode.dark;
      Get.changeThemeMode(ThemeMode.dark);
    }
  }

  final lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: 'Nunito',
    scaffoldBackgroundColor: AppColors.backgroundLight,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryBlue,
      secondary: AppColors.primaryPurple,
      surface: AppColors.cardLight,
      background: AppColors.backgroundLight,
      error: AppColors.error,
      onPrimary: AppColors.textWhite,
      onSecondary: AppColors.textWhite,
      onSurface: AppColors.textPrimary,
      onBackground: AppColors.textPrimary,
      onError: AppColors.textWhite,
    ),
    shadowColor: AppColors.borderLight,
    dividerTheme: const DividerThemeData(color: AppColors.borderLight),
    cardTheme: const CardThemeData(
      color: AppColors.cardLight,
      shadowColor: AppColors.borderLight,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.textPrimary,
      elevation: 0,
    ),
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.primaryBlue),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.cardLight,
    ),
    textTheme: TextTheme(
      titleLarge: titleLarge.copyWith(color: AppColors.textPrimary),
      titleMedium: titleMedium.copyWith(color: AppColors.textPrimary),
      titleSmall: titleSmall.copyWith(color: AppColors.textPrimary),
      bodyLarge: bodyLarge.copyWith(color: AppColors.textPrimary),
      bodyMedium: bodyMedium.copyWith(color: AppColors.textSecondary),
      bodySmall: bodySmall.copyWith(color: AppColors.textMuted),
    ),
  );

  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: 'Nunito',
    scaffoldBackgroundColor: AppColors.darkBackground,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryBlue,
      secondary: AppColors.primaryPurple,
      surface: AppColors.darkCard,
      background: AppColors.darkBackground,
      error: AppColors.error,
      onPrimary: AppColors.textWhite,
      onSecondary: AppColors.textWhite,
      onSurface: AppColors.darkTextPrimary,
      onBackground: AppColors.darkTextPrimary,
      onError: AppColors.textWhite,
    ),
    shadowColor: AppColors.darkBorder,
    cardTheme: const CardThemeData(
      color: AppColors.darkCard,
      shadowColor: AppColors.darkBorder,
    ),
    dividerTheme: const DividerThemeData(color: AppColors.darkBorder),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.darkTextPrimary,
      elevation: 0,
    ),
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.primaryBlue),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.darkCard,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.resolveWith((states) {
          return bodySmall.copyWith(color: AppColors.darkTextPrimary);
        }),
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          return AppColors.darkTextPrimary;
        }),
      ),
    ),
    textTheme: TextTheme(
      titleLarge: titleLarge.copyWith(color: AppColors.darkTextPrimary),
      titleMedium: titleMedium.copyWith(color: AppColors.darkTextPrimary),
      titleSmall: titleSmall.copyWith(color: AppColors.darkTextPrimary),
      bodyLarge: bodyLarge.copyWith(color: AppColors.darkTextPrimary),
      bodyMedium: bodyMedium.copyWith(color: AppColors.darkTextSecondary),
      bodySmall: bodySmall.copyWith(color: AppColors.darkTextMuted),
    ),
  );

  // Text Styles ()
  static const TextStyle titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle titleSmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}
