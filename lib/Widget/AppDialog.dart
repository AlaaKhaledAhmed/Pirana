import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gift/Widget/GeneralWidget.dart';
import 'package:lottie/lottie.dart';
import 'AppButtons.dart';
import 'AppColor.dart';
import 'AppSize.dart';
import 'AppText.dart';

class AppLoading {
  static show(
    context,
    String title,
    String content,
  ) {
    return showDialog(
        //barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              titlePadding: EdgeInsets.zero,
              elevation: 0,
              backgroundColor: AppColor.white,

//tittle-------------------------------------------------------------------

              title: Container(
                padding: EdgeInsets.only(right: 10.w),
                decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9.r),
                        topRight: Radius.circular(9.r))),
                width: double.infinity,
                height: 40.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      fontSize: AppSize.subTextSize,
                      text: title,
                      color: AppColor.white,
                      fontWeight: FontWeight.bold,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Container(
                            decoration: GeneralWidget.decoration(),
                            child: Icon(Icons.clear)))
                  ],
                ),
              ),

//continent area-------------------------------------------------------------------

              content: SizedBox(
                height: 100.h,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10.h),
                   AppText(
                     fontSize: AppSize.subTextSize,
                     text: content,
                     color: AppColor.black,
                     align: TextAlign.center,
                   ),
                ],
              )));
        });
  }
}
