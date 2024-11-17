import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width,
    this.hegiht,
    this.radius = AppSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColoer = AppColors.borderPrimary,
    this.backgroundColor = Colors.white,
    this.padding,
    this.margin,
  });
  final double? width, hegiht;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColoer, backgroundColor;
  final EdgeInsetsGeometry? padding, margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hegiht,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColoer) : null,
      ),
      child: child,
    );
  }
}
