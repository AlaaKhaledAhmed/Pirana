import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gift/Widget/AppButtons.dart';
import 'package:gift/Widget/AppColor.dart';
import 'package:gift/Widget/AppDialog.dart';
import 'package:gift/Widget/AppSize.dart';
import 'package:gift/Widget/AppText.dart';
import 'package:gift/Widget/GeneralWidget.dart';
import 'package:gift/model/model.dart';

class Details extends StatefulWidget {
  final Gifts giftData;
  const Details({super.key, required this.giftData});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.inputBG,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: AppText(text: 'التفاصيل', fontSize: AppSize.textSize),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
//image======================================================================================
                Expanded(
                    flex: 3,
                    child: Container(
                      decoration: GeneralWidget.decoration(
                          image: NetworkImage(widget.giftData.imageUrl),
                          cover: true,
                          radius: 20.r),
                    )),
                SizedBox(
                  height: 15.h,
                ),
//name======================================================================================
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: widget.giftData.name,
                      fontSize: AppSize.subTextSize + 3,
                      color: AppColor.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
//price======================================================================================
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                      decoration:
                          GeneralWidget.decoration(color: AppColor.subColor),
                      child: AppText(
                        text: '${widget.giftData.price} ريال',
                        fontSize: AppSize.subTextSize,
                        color: AppColor.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
//description======================================================================================
                AppText(
                  text: widget.giftData.description!,
                  fontSize: AppSize.subTextSize,
                  color: AppColor.subColor,
                  align: TextAlign.justify,
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            )),
//add to card bottom==========================================================
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: AppButtons(
                        onPressed: () {
                          Navigator.pop(context);
                          AppLoading.show(context, widget.giftData.name,
                              'تم اضافة العنصر الى السله بنجاح');

                        },
                        text: 'اضافة الى السلة')),
                SizedBox(
                  width: 10.w,
                ),
//favorite bottom==========================================================
                Expanded(
                    child: Container(
                  decoration: GeneralWidget.decoration(),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          select = !select;
                        });
                      },
                      icon: Icon(
                        select ? Icons.favorite : Icons.favorite_border,
                        size: AppSize.appBarIconsSize,
                        color: AppColor.mainColor,
                      )),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
