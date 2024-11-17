import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});
  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      padding: const EdgeInsets.all(AppSizes.md),
      showBorder: true,
      width: double.infinity,
      backgroundColor: selectedAddress
          ? AppColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColoer: selectedAddress
          ? Colors.transparent
          : dark
              ? AppColors.darkGrey
              : AppColors.grey,
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              Iconsax.tick_circle5,
              color: selectedAddress
                  ? dark
                      ? AppColors.light
                      : AppColors.dark.withOpacity(0.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ahmed Alshahethi',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: AppSizes.sm / 2,
              ),
              const Text(
                '+967772323972',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const Text(
                'Yemen - Sana\'a - Hayle Street - 85215',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
