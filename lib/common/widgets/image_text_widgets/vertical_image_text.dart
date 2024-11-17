import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.text,
    required this.image,
    this.textColor = Colors.white,
    this.backgroundColor,
    this.onTap,
  });
  final String text, image;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          right: AppSizes.spaceBtwItems,
        ),
        child: Column(
          children: [
            //Circula Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: backgroundColor ??
                    (dark ? AppColors.black : AppColors.white),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                  color: dark ? AppColors.light : AppColors.dark,
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),

            //Text
            SizedBox(
              width: 55,
              child: Text(
                text,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: textColor,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
