import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/features/shop/controllers/home_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banners});
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (url) => RoundedImage(imageUrl: url),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) =>
                controller.carousalCurrentIndex.value = index,
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? AppColors.primary
                      : AppColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
