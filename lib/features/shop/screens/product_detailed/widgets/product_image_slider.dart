import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/t_appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var dark = AppHelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? AppColors.darkGrey : AppColors.light,
        child: Stack(
          children: [
            //Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(AppImageStrings.productImage1),
                  ),
                ),
              ),
            ),

            // Image Slider
            Positioned(
              right: 0,
              left: AppSizes.defaultSpace,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) {
                    return const SizedBox(
                      width: AppSizes.spaceBtwItems,
                    );
                  },
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return RoundedImage(
                      width: 80,
                      imageUrl: AppImageStrings.productImage1,
                      border: Border.all(color: AppColors.primary),
                      padding: const EdgeInsets.all(AppSizes.sm),
                      backgroundColor: dark ? AppColors.dark : AppColors.white,
                    );
                  },
                ),
              ),
            ),

            //AppBar
            const TAppbar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
