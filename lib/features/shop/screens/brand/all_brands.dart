import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/t_appbar.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/layouts/grid_view.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/brand/widgets/brand_products.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              const SectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              AppGridView(
                itemCount: 10,
                itemBuilder: (_, index) => BrandCard(
                  showBorder: true,
                  onTap: () => Get.to(
                    () => const BrandProducts(),
                  ),
                ),
                mainAxisExtent: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
