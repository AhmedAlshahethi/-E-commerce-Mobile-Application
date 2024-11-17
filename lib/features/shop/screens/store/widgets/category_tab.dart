import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/t_brand_show_case.dart';
import 'package:t_store/common/widgets/layouts/grid_view.dart';
import 'package:t_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              const TBrandShowCase(
                images: [
                  AppImageStrings.productImage3,
                  AppImageStrings.productImage2,
                  AppImageStrings.productImage1,
                ],
              ),
              const TBrandShowCase(
                images: [
                  AppImageStrings.productImage3,
                  AppImageStrings.productImage2,
                  AppImageStrings.productImage1,
                ],
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              //Products
              SectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              AppGridView(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
