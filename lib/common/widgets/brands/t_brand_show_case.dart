import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({super.key, required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      borderColoer: AppColors.darkGrey,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Column(
        children: [
          //Brand With Product Count
          const BrandCard(
            showBorder: false,
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),

          //Brand Top 3 Product Images
          Row(
            children: images
                .map(
                  (image) => brandTopImageProduct(
                    image: image,
                    context: context,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopImageProduct({required String image, required context}) {
  var dark = AppHelperFunctions.isDarkMode(context);
  return Expanded(
    child: RoundedContainer(
      hegiht: 100,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(right: AppSizes.sm),
      backgroundColor: dark ? AppColors.darkGrey : AppColors.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
