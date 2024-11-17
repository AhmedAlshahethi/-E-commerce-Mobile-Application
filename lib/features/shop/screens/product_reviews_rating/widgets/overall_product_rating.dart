import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_reviews_rating/widgets/rating_progress_indicator.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 10,
          child: Column(
            children: [
              RatingprogressIndicator(
                text: '5',
                value: 1.0,
              ),
              RatingprogressIndicator(
                text: '4',
                value: 0.8,
              ),
              RatingprogressIndicator(
                text: '3',
                value: 0.6,
              ),
              RatingprogressIndicator(
                text: '2',
                value: 0.5,
              ),
              RatingprogressIndicator(
                text: '1',
                value: 0.2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
