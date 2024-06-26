import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gift/Screens/Details.dart';
import 'package:gift/Widget/AppRoutes.dart';
import 'package:gift/Widget/AppSize.dart';
import 'package:gift/Widget/AppText.dart';
import 'package:gift/model/model.dart';
import '../Widget/AppColor.dart';
import '../Widget/GeneralWidget.dart';
import '../generated/assets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  int swiperIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          bannerImageWidget(),
          SizedBox(
            height: 10.h,
          ),
          category(),
          SizedBox(
            height: 10.h,
          ),
          giftsWidget(),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }

  /// Widget to display a swiper of banner images at the top of the screen
  Widget bannerImageWidget() {
    return Container(
      decoration: GeneralWidget.decoration(
          shadow: false, color: AppColor.white, radius: 0),
      height: 200.h,
      child: Swiper(
        physics: const ClampingScrollPhysics(),
        controller: SwiperController(),
        index: swiperIndex,
        autoplay: true,
        loop: true,
        pagination: const SwiperPagination(),
        itemCount: GiftsModel.bannerImage.length,
        itemBuilder: (contextSwiper, index) => FadeInImage(
          image: NetworkImage(GiftsModel.bannerImage[index]),
          placeholderFit: BoxFit.contain,
          placeholder: const AssetImage(Assets.imageGift),
          imageErrorBuilder: (context, error, stackTrace) => Container(
            color: AppColor.deepLightGrey,
          ),
          fit: BoxFit.cover,
        ),
        onIndexChanged: (d) {
          swiperIndex = d;
          setState(() {});
        },
      ),
    );
  }

  /// Widget to display a horizontal list of categories
  Widget category() {
    return SizedBox(
      height: 120.h,
      width: double.maxFinite,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: GiftsModel.category.length,
          itemBuilder: (c, index) {
            return Container(
              width: 90.w,
              height: 100.h,
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: GeneralWidget.decoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    GiftsModel.category[index].imageUrl,
                    width: 50.w,
                    height: 50.w,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppText(
                      fontWeight: FontWeight.bold,
                      text: GiftsModel.category[index].name,
                      fontSize: AppSize.smallText)
                ],
              ),
            );
          }),
    );
  }

  /// Widget to display a grid of gift items
  Widget giftsWidget() {
    return Expanded(
      child: GridView.builder(
          itemCount: GiftsModel.giftsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of items per row
              crossAxisSpacing: 10.h, // Vertical spacing
              childAspectRatio: 0.90, // Item aspect ratio
              mainAxisSpacing: 10.h // Horizontal spacing
          ),
          itemBuilder: (c, index) {
            return InkWell(
              onTap: () {
                AppRoutes.pushTo(
                    context, Details(giftData: GiftsModel.giftsList[index]));
              },
              child: Container(
                width: GeneralWidget.width(context),
                decoration: GeneralWidget.decoration(shadow: false),
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    // Image of the gift item
                    Container(
                      height: 100.h,
                      margin: EdgeInsets.all(5.spMin),
                      decoration: GeneralWidget.decoration(
                          shadow: false,
                          cover: true,
                          image: NetworkImage(
                              GiftsModel.giftsList[index].imageUrl)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    // Name of the gift item
                    AppText(
                      fontWeight: FontWeight.bold,
                      text: GiftsModel.giftsList[index].name,
                      fontSize: AppSize.subTextSize,
                      color: AppColor.subColor,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    // Price of the gift item
                    AppText(
                      fontWeight: FontWeight.bold,
                      text: '${GiftsModel.giftsList[index].price} RS',
                      fontSize: AppSize.smallText,
                      color: AppColor.mainColor,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
