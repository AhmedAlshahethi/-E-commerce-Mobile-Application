import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:t_store/utils/theme/custom_themes/bottom_sheet_theme_data.dart';
import 'package:t_store/utils/theme/custom_themes/check_box_theme.dart';
import 'package:t_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:t_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:t_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:t_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:t_store/utils/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightTheme,
    appBarTheme: TAppBarTheme.lightTheme,
    bottomSheetTheme: AppBottomSheetThemeData.lightTheme,
    checkboxTheme: AppCheckBoxTheme.lightTheme,
    chipTheme: AppChipTheme.lightTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightTheme,
    inputDecorationTheme: AppTextFieldTheme.lightTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkTheme,
    appBarTheme: TAppBarTheme.darkTheme,
    bottomSheetTheme: AppBottomSheetThemeData.darkTheme,
    checkboxTheme: AppCheckBoxTheme.darkTheme,
    chipTheme: AppChipTheme.darkTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkTheme,
    inputDecorationTheme: AppTextFieldTheme.darkTheme,
  );
}
