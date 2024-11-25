import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ecommerce_app/app_color.dart' as AppColor;

import 'onboarding_screen.dart';

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
                ('assets/images/logo.png'),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 10,),
            Text (
              "Stylish",
              style: TextStyle(
                color: Colors.pinkAccent,
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
