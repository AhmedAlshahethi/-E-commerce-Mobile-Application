import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(
        height: AppSizes.spaceBtwItems,
      ),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (_, index) => RoundedContainer(
        backgroundColor: dark ? AppColors.dark : AppColors.white,
        showBorder: true,
        padding: const EdgeInsets.all(AppSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// 1- Row
            Row(
              children: [
                // Icon
                const Icon(Iconsax.ship),
                const SizedBox(
                  width: AppSizes.spaceBtwItems / 2,
                ),
                // State & Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Prossing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: AppColors.primary,
                              fontSizeDelta: 1,
                            ),
                      ),
                      Text(
                        '07 Nov, 2023',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                // Icon
                IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Iconsax.arrow_right_34, size: AppSizes.iconSm),
                ),
              ],
            ),

            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            /// 2- Row
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(
                        width: AppSizes.spaceBtwItems / 2,
                      ),
                      // State & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(
                                    color: AppColors.primary,
                                    fontSizeDelta: 1,
                                  ),
                            ),
                            Text(
                              '[#254f2g]',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: AppSizes.spaceBtwItems / 2,
                      ),
                      // State & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(
                                    color: AppColors.primary,
                                    fontSizeDelta: 1,
                                  ),
                            ),
                            Text(
                              '03 Feb, 2024',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
