import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gift/Screens/home.dart';
import 'package:gift/Widget/AppColor.dart';
import 'package:gift/Widget/AppRoutes.dart';
import 'package:gift/Widget/AppSize.dart';
import 'package:gift/Widget/AppText.dart';
import 'package:gift/Widget/GeneralWidget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../generated/assets.dart';

class SplashScreen extends StatefulWidget { 
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      AppRoutes.pushReplacementTo(context, Home());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: GeneralWidget.height(context),
        width: GeneralWidget.width(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              text: 'Pirana',
              fontSize: AppSize.textSize+10,
              fontFamily: GoogleFonts.pacifico().fontFamily,
            ),
            SizedBox(
              height: 10.h,
            ),
            CircleAvatar(
              radius: 50.r,
              backgroundColor: AppColor.mainColor,
              child: SvgPicture.asset(Assets.svgLogo),

            )
          ],
        ),
      ),
    );
  }
}
