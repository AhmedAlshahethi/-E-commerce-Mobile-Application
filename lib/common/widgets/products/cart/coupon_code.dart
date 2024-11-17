import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      backgroundColor: dark ? AppColors.dark : AppColors.white,
      showBorder: true,
      padding: const EdgeInsets.only(
        top: AppSizes.sm,
        bottom: AppSizes.sm,
        right: AppSizes.sm,
        left: AppSizes.md,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.grey.withOpacity(0.2),
                foregroundColor: dark
                    ? AppColors.white.withOpacity(0.5)
                    : AppColors.black.withOpacity(0.5),
                side: BorderSide(
                  color: AppColors.grey.withOpacity(0.1),
                ),
              ),
              child: const Text('Apply'),
            ),
          )
        ],
      ),
    );
  }
}
