import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class RatingprogressIndicator extends StatelessWidget {
  const RatingprogressIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: LinearProgressIndicator(
            value: value,
            valueColor: const AlwaysStoppedAnimation(AppColors.primary),
            borderRadius: BorderRadius.circular(7),
            backgroundColor: AppColors.grey,
            minHeight: 11,
          ),
        ),
      ],
    );
  }
}
