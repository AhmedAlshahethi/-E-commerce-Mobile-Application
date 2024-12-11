import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/models/product_model.dart';
import 'package:t_store/features/shop/screens/product_detailed/widgets/bottom_to_add_cart.dart';
import 'package:t_store/features/shop/screens/product_detailed/widgets/product_attributs.dart';
import 'package:t_store/features/shop/screens/product_detailed/widgets/product_image_slider.dart';
import 'package:t_store/features/shop/screens/product_detailed/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_detailed/widgets/rating_share.dart';
import 'package:t_store/features/shop/screens/product_reviews_rating/product_reviews_rating.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductDetailedScreen extends StatelessWidget {
  const ProductDetailedScreen({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    // var dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomToAddCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1- Product Image  Slider
            const ProductImageSlider(),

            /// - Product Details
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.defaultSpace,
                right: AppSizes.defaultSpace,
                bottom: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - Rating & Share
                  const RatingShare(),

                  /// - Price, Title, Stack & Brand
                  const ProductMetaData(),

                  /// - Attributs
                  const ProductAttributs(),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  /// - Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  /// - Description
                  const SectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    'This description of the product and it can go up to max 4 lines This description of the product and it can go up to max 4 lines This description of the product and it can go up to max 4 lines This description of the product and it can go up to max 4 lines',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'show more',
                    trimExpandedText: 'less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  /// - Reviews
                  const Divider(),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () => Get.to(
                          () => const ProductReviewsRating(),
                        ),
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
