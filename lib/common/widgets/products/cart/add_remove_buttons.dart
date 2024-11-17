import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductQuntityWithAddRmoveButtons extends StatelessWidget {
  const ProductQuntityWithAddRmoveButtons({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          color: dark ? AppColors.white : AppColors.black,
          backgroundColor: dark ? AppColors.darkGrey : AppColors.light,
          width: 32,
          height: 32,
          size: AppSizes.md,
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        CircularIcon(
          icon: Iconsax.add,
          color: AppColors.white,
          backgroundColor: AppColors.primary,
          width: 32,
          height: 32,
          size: AppSizes.md,
        ),
      ],
    );
  }
}
