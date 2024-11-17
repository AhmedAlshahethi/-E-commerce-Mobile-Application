import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.hegiht,
    this.applyImageRadius = true,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
    this.padding,
    this.onTap,
    this.border,
    this.backgroundColor,
    this.borderRadius = AppSizes.md,
  });
  final double? width, hegiht;
  final bool applyImageRadius;
  final String imageUrl;
  final BoxFit? fit;
  final bool isNetworkImage;
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap;
  final BoxBorder? border;
  final Color? backgroundColor;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: hegiht,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: border,
          color: backgroundColor,
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
