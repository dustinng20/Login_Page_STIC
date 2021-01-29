import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'SignUp/SignUpPage.dart';
import 'ChangePassword/ChangePassPage.dart';
import 'Chart/MissedCallsPage.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(370, 779),
        allowFontScaling: false,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: AnimatedSplashScreen(
            splashIconSize: 350,
            duration: 3000,
            splash: Image.asset("assets/images/WAITINGSCREEN.png"),
            nextScreen: MyHomePage(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.scale,
          ),
        ));
  }
}

final Color textColor = Colors.white.withOpacity(0.4);
