import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products/cart/add_remove_buttons.dart';
import 'package:t_store/common/widgets/products/cart/cart_item.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ListCartItems extends StatelessWidget {
  const ListCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: AppSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const CartItem(),
            if (showAddRemoveButtons)
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
            if (showAddRemoveButtons)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 70,
                      ),
                      // Add Remove Buttons
                      ProductQuntityWithAddRmoveButtons(dark: dark),
                    ],
                  ),
                  const ProductPriceText(
                    price: '256',
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}
