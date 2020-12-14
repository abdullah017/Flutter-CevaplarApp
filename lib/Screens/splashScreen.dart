import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cevaplarapp/Screens//introScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: AnimatedSplashScreen(
              duration: 3000,
              splash: Image.asset("assets/splashscreen.png",),
              nextScreen: OnBoardingPage(),
              splashTransition: SplashTransition.slideTransition,
              pageTransitionType: PageTransitionType.scale,
              backgroundColor: Colors.black,splashIconSize: 500,),
    );
  }
}
