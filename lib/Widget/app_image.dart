import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'AppColor.dart';

class AppImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final ColorFilter? colorFilter;
  final BorderRadiusGeometry? borderRadius;
  final bool? fromNet;
  const AppImage(
      {super.key,
      required this.image,
      this.height,
      this.width,
      this.fit,
      this.borderRadius,
      this.colorFilter,
      this.fromNet});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: ColorFiltered(
        colorFilter:
            colorFilter ?? ColorFilter.mode(AppColor.noColor, BlendMode.darken),
        child: FadeInImage(
          height: height ?? 190.h,
          width: width ?? double.infinity,
          image: fromNet == true
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          placeholderFit: BoxFit.cover,
          placeholder: AssetImage(''),
          imageErrorBuilder: (context, error, stackTrace) => Container(
            color: AppColor.deepLightGrey,
          ),
          fit: fit ?? BoxFit.cover,
        ),
      ),
    );
  }
}
