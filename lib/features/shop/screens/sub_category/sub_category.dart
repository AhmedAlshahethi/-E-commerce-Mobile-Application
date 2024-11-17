import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/t_appbar.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/products/products_cards/product_card_horizantal.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // banner
              const RoundedImage(
                imageUrl: AppImageStrings.promoBanner3,
                width: double.infinity,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // Sub Categories
              Column(
                children: [
                  SectionHeading(
                    title: 'Sports Shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const ProductCardHorizantal();
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        width: AppSizes.spaceBtwItems,
                      ),
                      itemCount: 4,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
