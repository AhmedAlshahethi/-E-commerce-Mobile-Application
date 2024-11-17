import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class UserCardReview extends StatelessWidget {
  const UserCardReview({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage:
                      AssetImage(AppImageStrings.userProfileImage1),
                ),
                const SizedBox(
                  width: AppSizes.spaceBtwItems,
                ),
                Text(
                  'Ahmed Alshahethi',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Row(
          children: [
            const AppRatingBarIndicator(
              value: 4,
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '10 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        const ReadMoreText(
          'The User interface of the app is quilt intultive. I was able to move to navigate and make purchases seamlessly. Great job',
          trimCollapsedText: 'show more',
          trimExpandedText: 'show less',
          trimLines: 2,
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),

        // Company Review
        RoundedContainer(
          backgroundColor: dark ? AppColors.darkGrey : AppColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'T Store',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '02 Nov, 2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  width: AppSizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  'The User interface of the app is quilt intultive. I was able to move to navigate and make purchases seamlessly. Great job',
                  trimCollapsedText: 'show more',
                  trimExpandedText: 'show less',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
