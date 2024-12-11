import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/layouts/grid_view.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/loaders/shimmer_effect.dart';

class VerticalProdcutShimmer extends StatelessWidget {
  const VerticalProdcutShimmer({super.key, this.itemCount = 4});
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return AppGridView(
      itemCount: itemCount,
      itemBuilder: (p0, p1) {
        return const SizedBox(
          width: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TShimmerEffect(width: 180, height: 180),
              SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              // Text
              TShimmerEffect(width: 160, height: 115),
              SizedBox(
                height: AppSizes.spaceBtwItems / 2,
              ),
              TShimmerEffect(width: 110, height: 15),
            ],
          ),
        );
      },
    );
  }
}
