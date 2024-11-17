import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/texts/brand_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BrandTitleTextWithVerifiyIcon extends StatelessWidget {
  const BrandTitleTextWithVerifiyIcon({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.textSizes = TextSizes.small,
  });
  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign textAlign;
  final TextSizes textSizes;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            textColor: textColor,
            maxlines: maxlines,
            textAlign: textAlign,
            textSizes: textSizes,
          ),
        ),
        const SizedBox(
          width: AppSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: AppSizes.iconXs,
        ),
      ],
    );
  }
}
