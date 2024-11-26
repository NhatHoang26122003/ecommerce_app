import 'package:ecommerce_app/screen/home/components/banner.dart';
import 'package:ecommerce_app/screen/home/components/sort_filter.dart';
import 'package:ecommerce_app/screen/home/components/stylish_appbar.dart';
import 'package:ecommerce_app/screen/home/components/stylish_search.dart';
import 'package:flutter/material.dart';
import 'components/category_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: StylishAppbar(),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // thanh tim kiem
            StylishSearch(),
            SizedBox(height: 10,),
            // sort and filter
            Row (
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text (
                    "All Feartured",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                SortFilter(),
              ],
            ),
            SizedBox(height: 10,),
            // list view cac danh muc
            CategoryWidget(),
            SizedBox(height: 10,),
            // banner o che do page view
            BannerPageView(),
          ],
        ),
      )
    );
  }
}
