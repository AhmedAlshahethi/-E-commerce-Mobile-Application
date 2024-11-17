import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:t_store/features/shop/screens/sub_category/sub_category.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class HomeCategoies extends StatelessWidget {
  const HomeCategoies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return VerticalImageText(
            onTap: () => Get.to(() => const SubCategoryScreen()),
            text: 'Shoes Category',
            image: AppImageStrings.shoeIcon,
          );
        },
      ),
    );
  }
}
