import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_containers.dart';
import 'package:t_store/common/widgets/layouts/grid_view.dart';
import 'package:t_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/shimmers/vertical_prodcut_shimmer.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/controllers/product_controller.dart';
import 'package:t_store/features/shop/screens/all_products/all_products.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  const HomeAppBar(),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  //Search AppBAr
                  const SearchContainer(
                    text: 'Search in Stroe',
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  //Categories
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading
                        SectionHeading(
                          title: 'Popular Categories',
                          textColor: AppColors.white,
                          showActionButton: false,
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),

                        //List
                        const HomeCategoies(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.md),
              child: Column(
                children: [
                  // Promo Slider
                  const PromoSlider(),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  //Heading
                  SectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(
                      () => const AllProductsScreen(),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),

                  //Popular Products
                  Obx(
                    () {
                      if (controller.isLoading.value) {
                        return const VerticalProdcutShimmer();
                      }

                      if (controller.featuredProducts.isEmpty) {
                        return Text(
                          'No Data Found',
                          style: Theme.of(context).textTheme.bodyMedium,
                        );
                      }
                      return AppGridView(
                        itemCount: controller.featuredProducts.length,
                        itemBuilder: (_, index) => ProductCardVertical(
                          productModel: controller.featuredProducts[index],
                        ),
                      );
                    },
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
