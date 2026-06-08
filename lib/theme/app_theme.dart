import 'package:flutter/material.dart';

/// Central palette. The visual theme (deep navy + gold) is inspired by the
/// brief's reference, but all layouts and components are our own.
class AppColors {
  static const bg = Color(0xFF0A1228);
  static const surface = Color(0xFF141D3B);
  static const surfaceAlt = Color(0xFF1C2748);
  static const gold = Color(0xFFF6B83D);
  static const goldInk = Color(0xFF1A1303); // dark text used on gold buttons
  static const purple = Color(0xFF6C63FF);
  static const blue = Color(0xFF3B82F6);
  static const green = Color(0xFF22C55E);
  static const pink = Color(0xFFEC4899);
  static const teal = Color(0xFF14B8A6);
  static const textPrimary = Color(0xFFFFFFFF);
  static const textSecondary = Color(0xFF9AA3C0);
  static const border = Color(0xFF26314F);
}

class AppTheme {
  static ThemeData get dark {
    final base = ThemeData.dark(useMaterial3: true);
    return base.copyWith(
      scaffoldBackgroundColor: AppColors.bg,
      colorScheme: base.colorScheme.copyWith(
        primary: AppColors.gold,
        onPrimary: AppColors.goldInk,
        secondary: AppColors.purple,
        surface: AppColors.surface,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        titleTextStyle: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceAlt,
        hintStyle: const TextStyle(color: AppColors.textSecondary),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.gold, width: 1.5),
        ),
      ),
      textTheme: base.textTheme.apply(
        bodyColor: AppColors.textPrimary,
        displayColor: AppColors.textPrimary,
      ),
    );
  }
}
