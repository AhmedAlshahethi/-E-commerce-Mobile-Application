import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/t_appbar.dart';
import 'package:t_store/features/shop/screens/orders/widgets/order_list_items.dart';
import 'package:t_store/utils/constants/sizes.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: OrderListItems(),
      ),
    );
  }
}
