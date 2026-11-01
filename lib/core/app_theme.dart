import 'package:flutter/material.dart';
import 'app_colors.dart';

OutlineInputBorder _border(Color c) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(width: 2, color: c),
    );

final appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue),
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.black),
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.black),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: AppColors.gray),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.blue,
      foregroundColor: AppColors.white,
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
      overlayColor: Colors.transparent,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(cursorColor: AppColors.blue),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.white,
    contentPadding: const EdgeInsets.all(16),
    hintStyle: const TextStyle(color: AppColors.gray, fontSize: 16, fontWeight: FontWeight.normal),
    errorStyle: const TextStyle(color: AppColors.red, fontSize: 12),
    border: _border(AppColors.gray),
    enabledBorder: _border(AppColors.gray),
    focusedBorder: _border(AppColors.blue),
    errorBorder: _border(AppColors.red),
    focusedErrorBorder: _border(AppColors.red),
  ),
);