import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/t_appbar.dart';
import 'package:t_store/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:t_store/features/shop/screens/product_reviews_rating/widgets/overall_product_rating.dart';
import 'package:t_store/features/shop/screens/product_reviews_rating/widgets/user_card_review.dart';

import 'package:t_store/utils/constants/sizes.dart';

class ProductReviewsRating extends StatelessWidget {
  const ProductReviewsRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        title: Text(
          'Reviews & Rating',
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ratings and Reviews are verified and are from people who use the same type of device that you user',
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              /// - overall product rating
              const OverallProductRating(),

              const AppRatingBarIndicator(value: 3.5),
              Text(
                '12,116',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              /// - User Reviews List
              const UserCardReview(),
              const UserCardReview(),
              const UserCardReview(),
              const UserCardReview(),
            ],
          ),
        ),
      ),
    );
  }
}
