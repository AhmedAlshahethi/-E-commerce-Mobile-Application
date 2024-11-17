import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/bindings/general_bindings.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/theme/theme.dart';

class TStoreApp extends StatelessWidget {
  const TStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      // home: const OnBoardingScreen(),
      // show loader while authentication repository deciding to show relvant screen
      home: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
