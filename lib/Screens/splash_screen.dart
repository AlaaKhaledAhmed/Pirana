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
    super.initState();

    // Navigating to the Home screen after a delay of 3 seconds.
    Future.delayed(Duration(seconds: 3), () {
      AppRoutes.pushReplacementTo(context, Home());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Creating a container that fills the entire screen.
      body: Container(
        height: GeneralWidget.height(
            context), // Setting the height of the container to the screen height.
        width: GeneralWidget.width(
            context), // Setting the width of the container to the screen width.
        // Centering the child elements both horizontally and vertically.
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Centering the children horizontally.
          mainAxisAlignment:
              MainAxisAlignment.center, // Centering the children vertically.
          children: [
            // Displaying the app name with custom text styling.
            AppText(
              text: 'Pirana', // The text to display.
              fontSize: AppSize.textSize + 10, // Setting the font size.
              fontFamily: GoogleFonts.pacifico()
                  .fontFamily, // Setting the font family to Pacifico.
            ),
            // Adding some vertical space.
            SizedBox(
              height: 10.h, // Setting the height of the space.
            ),
            // Displaying the app logo within a circular avatar.
            CircleAvatar(
              radius: 50.r, // Setting the radius of the avatar.
              backgroundColor: AppColor
                  .mainColor, // Setting the background color of the avatar.
              child: SvgPicture.asset(
                  Assets.svgLogo), // Displaying the SVG logo inside the avatar.
            ),
          ],
        ),
      ),
    );
  }
}
