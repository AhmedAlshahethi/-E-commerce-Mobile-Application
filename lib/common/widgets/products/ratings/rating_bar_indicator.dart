import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';

class AppRatingBarIndicator extends StatelessWidget {
  const AppRatingBarIndicator({super.key, required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: value,
      itemCount: 5,
      itemSize: 20,
      unratedColor: AppColors.grey,
      itemBuilder: (_, __) {
        return const Icon(
          Iconsax.star1,
          color: AppColors.primary,
        );
      },
    );
  }
}
