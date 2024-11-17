import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/t_appbar.dart';
import 'package:t_store/common/widgets/products/cart/cart_icon_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTextStrings.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: AppColors.grey,
                ),
          ),
          Text(
            AppTextStrings.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: AppColors.white,
                ),
          ),
        ],
      ),
      actions: [
        CartIconMenu(
          iconColor: AppColors.white,
        ),
      ],
    );
  }
}
