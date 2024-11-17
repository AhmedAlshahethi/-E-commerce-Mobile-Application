import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BottomToAddCart extends StatelessWidget {
  const BottomToAddCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.defaultSpace / 2,
        horizontal: AppSizes.defaultSpace,
      ),
      decoration: BoxDecoration(
        color: dark ? AppColors.darkGrey : AppColors.light,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(AppSizes.cardRadiusLg),
          topLeft: Radius.circular(AppSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                color: AppColors.white,
                backgroundColor: AppColors.darkGrey,
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
                width: 40,
                height: 40,
                color: AppColors.white,
                backgroundColor: AppColors.black,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(AppSizes.md),
              backgroundColor: AppColors.black,
              side: const BorderSide(color: AppColors.black),
            ),
            child: const Text('Add to cart'),
          ),
        ],
      ),
    );
  }
}
