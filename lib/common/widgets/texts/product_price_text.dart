import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    this.currencysign = '\$',
    required this.price,
    this.maxlines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });
  final String currencysign, price;
  final int maxlines;
  final bool isLarge;
  final bool lineThrough;
  @override
  Widget build(BuildContext context) {
    return Text(
      currencysign + price,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              )
          : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
    );
  }
}
