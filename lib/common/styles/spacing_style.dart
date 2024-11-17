import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppSpacingStyle {
  static EdgeInsetsGeometry paddingWithAppBarHegiht = const EdgeInsets.only(
    top: AppSizes.appBarHeight,
    bottom: AppSizes.defaultSpace,
    left: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
  );
}
