import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class AppChipTheme {
  AppChipTheme._();

  ///Light Theme
  static ChipThemeData lightTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    checkmarkColor: Colors.white,
  );

  ///Dark Theme
  static ChipThemeData darkTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: AppColors.primary,
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    checkmarkColor: Colors.white,
  );
}
