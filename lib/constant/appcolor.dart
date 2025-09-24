import 'package:flutter/material.dart';

class Appcolor {
  static const gradientblue = Color.fromRGBO(0, 122, 255, 1);
  static const gradientorang = Color.fromRGBO(255, 112, 67, 1);
  static const orangebackground = Color.fromRGBO(255, 245, 237, 1);
  static const primary = Color.fromRGBO(0, 86, 179, 1);
  static const primarrylight = Color.fromRGBO(13, 124, 244, 1);
  static const gry = Color.fromRGBO(243, 244, 246, 1);
  static const grytextfield = Color.fromRGBO(209, 213, 219, 1);
  static const topbackground = Color.fromRGBO(180, 197, 253, 1);
  static const bottombackground = Color.fromRGBO(255, 245, 237, 1);

  // static const gradientblue = Color.fromRGBO(0, 122, 255, 1);
}

// Use App Colors please !!!!
class AppColors {
  // LIGHT MODE
  static const Color primaryBlue = Color(0xFF007AFF);
  static const Color primaryPurple = Color(0xFF6C63FF);
  static const Color fadeblue = Color(0xFFE6F2FF);
  static const Color fadeorang = Color.fromRGBO(255, 240, 218, 1);
  static const Color fadegreen = Color(0xFFEDFFF2);
  static const Color fadecardgreen = Color(0xFFE8FFEB);
  static const Color primaryOrange = Color(0xFFFF7043);
  static const Color primaryRed = Color(0xFFFF3D71);

  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF8C8C8C);
  static const Color textMuted = Color(0xFFBFBFBF);
  static const Color textWhite = Color(0xFFFFFFFF);

  static const Color backgroundLight = Color(0xFFF9FAFB);
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color navInactive = Color(0xFFF2F4F7);

  static const Color success = Color(0xFF27AE60);
  static const Color warning = Color(0xFFFF9900);
  static const Color error = Color(0xFFFF3B30);

  static const Color borderLight = Color(0xFFE5E7EB);

  static const Color colorBlue = Color(0xFF0152A8);

  // DARK MODE
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkCard = Color(0xFF1E1E1E);

  static const Color darkTextPrimary = Color(0xFFFFFFFF);
  static const Color darkTextSecondary = Color(0xFFB0B0B0);
  static const Color darkTextMuted = Color(0xFF8A8A8A);

  static const Color darkNavInactive = Color(0xFF2C2C2C);
  static const Color darkBorder = Color(0xFF333333);

  // Gradients
  static const LinearGradient tripGradient = LinearGradient(
    colors: [primaryBlue, primaryPurple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient packageGradient = LinearGradient(
    colors: [primaryOrange, primaryRed],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient buttongradient = LinearGradient(
    colors: [Appcolor.gradientblue, Appcolor.gradientorang],
  );
}
