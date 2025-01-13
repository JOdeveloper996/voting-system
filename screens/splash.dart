import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:jordanvote/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor:Colors.green.shade400,
      splashIconSize: 250,
      pageTransitionType: PageTransitionType.bottomToTop,
      splashTransition: SplashTransition.rotationTransition,
      duration:Duration.secondsPerMinute,
      animationDuration:const Duration(seconds:3),
      splash:const CircleAvatar(backgroundImage:
      AssetImage("lib/assets/images/logo.png"),radius:250,
      ), nextScreen: const SignUpScreen());
  }
  }