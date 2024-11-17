import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/t_appbar.dart';
import 'package:t_store/common/widgets/appbar/t_tabbar.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_containers.dart';
import 'package:t_store/common/widgets/layouts/grid_view.dart';
import 'package:t_store/common/widgets/products/cart/cart_icon_menu.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/brand/all_brands.dart';
import 'package:t_store/features/shop/screens/brand/widgets/brand_products.dart';
import 'package:t_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        //App Bar
        appBar: TAppbar(
          title: Text(
            'Stoe',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CartIconMenu(
              iconColor: dark ? AppColors.light : AppColors.dark,
            ),
          ],
        ),

        body: NestedScrollView(
          //Header
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? AppColors.black : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    children: [
                      //Search Appbar
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),
                      const SearchContainer(
                        text: 'Search in Stroe',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),

                      //Featured Brands
                      SectionHeading(
                        title: 'Featured Brands',
                        onPressed: () => Get.to(() => const AllBrands()),
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems / 1.5,
                      ),

                      // Brand Grids
                      AppGridView(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return BrandCard(
                            showBorder: false,
                            onTap: () => Get.to(
                              () => const BrandProducts(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),

                // Tabs
                bottom: const TTabbar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronices'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosemtices'),
                    ),
                  ],
                ),
              ),
            ];
          },
          //Body
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
