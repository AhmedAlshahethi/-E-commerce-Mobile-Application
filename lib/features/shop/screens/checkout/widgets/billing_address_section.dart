import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          textButton: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),
        Text(
          'Ahmed Alshahethi',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '+967772323972',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                'Yemen , Sana\'a, Hayel Street, 8542',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
