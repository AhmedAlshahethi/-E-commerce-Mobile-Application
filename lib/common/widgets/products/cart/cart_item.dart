import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verifiy_icon.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Row(
      // Image
      children: [
        RoundedImage(
          imageUrl: AppImageStrings.productImage1,
          width: 60,
          hegiht: 60,
          backgroundColor: dark ? AppColors.darkGrey : AppColors.light,
          padding: const EdgeInsets.all(AppSizes.sm),
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),

        //Titl,Price & Size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const BrandTitleTextWithVerifiyIcon(title: 'Nike'),
              const Flexible(
                child:
                    ProductTitleText(title: 'Black Sports Shoes', maxines: 1),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'UK 08 ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
