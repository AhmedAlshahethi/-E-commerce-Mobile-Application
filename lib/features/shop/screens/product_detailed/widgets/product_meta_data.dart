import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verifiy_icon.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    var dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// - Price & Sale price
        Row(
          children: [
            // sale tag
            RoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.secondry.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.sm, vertical: AppSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.black),
              ),
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),

            //Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            const ProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),

        /// - Title
        const ProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),

        /// - Stock Status
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              'In stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),

        /// - Brand
        Row(
          children: [
            CircularImage(
              image: AppImageStrings.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? AppColors.white : AppColors.black,
            ),
            const BrandTitleTextWithVerifiyIcon(
              title: 'Nike',
              textSizes: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
