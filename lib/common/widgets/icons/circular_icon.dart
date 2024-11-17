import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon(
      {super.key,
      this.width,
      this.height,
      this.size = AppSizes.lg,
      required this.icon,
      this.color,
      this.backgroundColor,
      this.onPressed});
  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? AppColors.black.withOpacity(0.9)
                : AppColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
