import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/enums.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    required this.title,
    this.textColor,
    this.maxlines = 1,
    this.textAlign = TextAlign.center,
    this.textSizes = TextSizes.small,
  });
  final String title;
  final Color? textColor;
  final int maxlines;
  final TextAlign textAlign;
  final TextSizes textSizes;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: textSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(
                color: textColor,
              )
          : textSizes == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(
                    color: textColor,
                  )
              : textSizes == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(
                        color: textColor,
                      )
                  : Theme.of(context).textTheme.bodyMedium!.apply(
                        color: textColor,
                      ),
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
