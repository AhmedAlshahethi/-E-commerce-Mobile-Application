import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/layouts/grid_view.dart';
import 'package:t_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Iconsax.sort,
            ),
          ),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity',
          ]
              .map(
                (option) => DropdownMenuItem(
                  value: option,
                  child: Text(option),
                ),
              )
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
        AppGridView(
          itemCount: 10,
          itemBuilder: (_, index) => const ProductCardVertical(),
        ),
      ],
    );
  }
}
