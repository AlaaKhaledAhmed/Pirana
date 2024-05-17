import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gift/Screens/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Widget/AppColor.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, __) => MaterialApp(
              home: const SplashScreen(),
              builder: (context, widget) {
                return widget!;
              },
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primaryColor: AppColor.mainColor,
                scaffoldBackgroundColor: AppColor.inputBG,
                // useMaterial3: true,
                fontFamily: GoogleFonts.tajawal().fontFamily,
              ),
            )

        //SplashScreen()

        );
  }

//====================================================================
}
