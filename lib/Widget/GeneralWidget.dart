
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'AppColor.dart';
 

typedef RefreshUi = VoidCallback;

class GeneralWidget {
  static double width(context) => MediaQuery.of(context).size.width;
  static double height(context) => MediaQuery.of(context).size.height;
//scroll body===========================================================
  static Widget body({required Widget? child, ScrollPhysics? physics}) {
    return LayoutBuilder(builder: ((context, constraints) {
      return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification? overscroll) {
          overscroll!.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
            physics: physics ?? const ClampingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                  minHeight: constraints.maxHeight),
              child: IntrinsicHeight(child: child),
            )),
        //)
      );
// AppText(text: LocaleKeys.myTeam.tr(), fontSize: WidgetSize.titleTextSize);
    }));
  }

//======================================================================================
  static BoxDecoration decoration(
      {bool? shadow,
      bool? radiusOnlyTop,
      bool? radiusOnlyBottom,
      bool? radiusOnlyTopLeftButtomLeft,
      bool? radiusOnlyTopRightButtomRight,
      Color? color,
      double radius = 10,
      bool showBorder = false,
      Color? borderColor,
      double borderWidth = 0.5,
      ImageProvider<Object>? image,
      bool cover = false,
      ColorFilter? colorFilter,
      bool isGradient = false}) {
    return BoxDecoration(
        image: image == null
            ? null
            : DecorationImage(
                image: image,
                fit: cover == true ? BoxFit.cover : BoxFit.contain,
                colorFilter: colorFilter),
        border: showBorder == true
            ? Border.all(
                color: borderColor ?? AppColor.deepLightGrey,
                width: borderWidth)
            : null,
        color: isGradient == true ? null : (color ?? AppColor.white),
        borderRadius: radiusOnlyTop == true
            ? BorderRadius.only(
                topRight: Radius.circular(radius.r),
                topLeft: Radius.circular(radius.r),
              )
            : radiusOnlyBottom == true
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(radius.r),
                    bottomRight: Radius.circular(radius.r))
                : radiusOnlyTopLeftButtomLeft == true
                    ? BorderRadius.only(
                        topLeft: Radius.circular(radius.r),
                        bottomLeft: Radius.circular(radius.r),
                      )
                    : radiusOnlyTopRightButtomRight == true
                        ? BorderRadius.only(
                            topRight: Radius.circular(radius.r),
                            bottomRight: Radius.circular(radius.r))
                        : BorderRadius.all(Radius.circular(radius.r)),
        boxShadow: shadow == null || shadow == false
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: const Offset(0, 0),
                ),
              ]
            : null,
        gradient: isGradient
            ? LinearGradient(colors: [
                AppColor.mainColor,
                AppColor.subColor,
              ])
            : null);
  }
}
