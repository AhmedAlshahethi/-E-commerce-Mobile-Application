import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/chips/choise_chip.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductAttributs extends StatelessWidget {
  const ProductAttributs({super.key});

  @override
  Widget build(BuildContext context) {
    var dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// - Selected Attribut Pricing & Description
        RoundedContainer(
          backgroundColor: dark ? AppColors.darkGrey : AppColors.grey,
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Title, Price and Stock Status
              Row(
                children: [
                  const SectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price :',
                            smallSize: true,
                          ),
                          //Actual price
                          Text(
                            '\$25',
                            style:
                                Theme.of(context).textTheme.titleSmall!.apply(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                          ),
                          const SizedBox(
                            width: AppSizes.spaceBtwItems,
                          ),
                          // Sale Price
                          const ProductTitleText(title: '20'),
                        ],
                      ),
                      //Stock
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock :',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              const ProductTitleText(
                title:
                    'This description of the product and it can go up to max 4 lines',
                maxines: 4,
                smallSize: true,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),

        /// - Attributs
        // Colors
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChoisChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (p0) {},
                ),
                AppChoisChip(
                  text: 'Blue',
                  selected: true,
                  onSelected: (p0) {},
                ),
                AppChoisChip(
                  text: 'Red',
                  selected: true,
                  onSelected: (p0) {},
                ),
              ],
            ),
          ],
        ),

        //Size
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              title: 'Sizes',
              showActionButton: false,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChoisChip(
                  text: 'Eu 32',
                  selected: true,
                  onSelected: (p0) {},
                ),
                AppChoisChip(
                  text: 'Eu 45',
                  selected: false,
                  onSelected: (p0) {},
                ),
                AppChoisChip(
                  text: 'Eu 23',
                  selected: false,
                  onSelected: (p0) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
