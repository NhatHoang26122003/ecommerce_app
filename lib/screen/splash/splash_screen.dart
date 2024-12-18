import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ecommerce_app/app_color.dart' as AppColor;

import 'onboarding_screen.dart';
import 'package:ecommerce_app/utils/localfiles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    Timer( const Duration(seconds: 3), (){
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => const OnboardingScreen(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(opacity: animation, child: child);
          }
        )
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                Localfiles.logo,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 10,),
            Text (
              "Stylish",
              style: TextStyle(
                color: AppColor.titleButtonColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'LibreCaslonText',
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
