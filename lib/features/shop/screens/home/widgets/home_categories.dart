import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:t_store/features/shop/controllers/category_controller.dart';
import 'package:t_store/features/shop/screens/home/widgets/category_shimmer.dart';
import 'package:t_store/features/shop/screens/sub_category/sub_category.dart';

class HomeCategoies extends StatelessWidget {
  const HomeCategoies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return Obx(
      () {
        if (categoryController.isLoading.value) return const CategoryShimmer();
        if (categoryController.featuredCategories.isEmpty) {
          return Center(
            child: Text(
              'No Data Found!',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: Colors.white),
            ),
          );
        }
        return SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: categoryController.featuredCategories.length,
            itemBuilder: (context, index) {
              final category = categoryController.featuredCategories[index];
              return VerticalImageText(
                onTap: () => Get.to(() => const SubCategoryScreen()),
                text: category.name,
                image: category.image,
              );
            },
          ),
        );
      },
    );
  }
}
