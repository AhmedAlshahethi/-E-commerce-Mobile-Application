import 'package:flutter/rendering.dart';
import 'package:t_store/utils/constants/colors.dart';

class ShadwStyle {
  static final verticalProductShadw = BoxShadow(
    color: AppColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horzintalProductShadw = BoxShadow(
    color: AppColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
