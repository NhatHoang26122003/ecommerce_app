import 'package:ecommerce_app/screen/home/components/stylish_appbar.dart';
import 'package:ecommerce_app/screen/home/components/stylish_search.dart';
import 'package:flutter/material.dart';
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: StylishAppbar(),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height*0.1,
              child: StylishSearch(),
            ),

          ],
        ),
      )
    );
  }
}
