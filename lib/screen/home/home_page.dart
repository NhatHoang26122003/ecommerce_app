import 'package:ecommerce_app/screen/bottom_tab/custom_bottom_navigator_bar.dart';
import 'package:ecommerce_app/screen/home/components/banner.dart';
import 'package:ecommerce_app/screen/home/components/product_list_view.dart';
import 'package:ecommerce_app/screen/home/components/sort_filter.dart';
import 'package:ecommerce_app/screen/home/components/stylish_appbar.dart';
import 'package:ecommerce_app/screen/home/components/stylish_search.dart';
import 'package:flutter/material.dart';
import 'components/category_widget.dart';
import 'components/session_header.dart';
import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/app_color.dart' as AppColor;

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  late int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home")),
    Center(child: Text("Wishlist")),
    Center(child: Text("Search")),
    Center(child: Text("Setting")),
    Center(child: Text("Shopping")),
  ];

  bool _isShoppingCartSelected = false;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _isShoppingCartSelected = false;
    });
  }

  void _onShoppingCartTapped() {
    setState(() {
      if (!_isShoppingCartSelected) {
        _currentIndex = 4;
        _isShoppingCartSelected = true;
      }
    });
  }
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
      body: _currentIndex == 0 ? SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // thanh tim kiem
            StylishSearch(),
            const SizedBox(height: 15,),
            // sort and filter
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
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
            const SizedBox(height: 15,),
            // list view cac danh muc
            CategoryWidget(),
            const SizedBox(height: 15,),
            // banner o che do page view
            BannerPageView(),
            const SizedBox(height: 15,),
            // session header
            SessionHeader(
              title: "Deal of the Day", timeLine: "22h 55m 20s remaining ",
              icon: Icons.watch_later_outlined,
              colorBackground: Colors.blue, onViewAll: () {},),
            const SizedBox(height: 15,),
            ProductListView(productListData: Product.dealListProduct, type: ""),
            const SizedBox(height: 15,),
            _specialOffers(),
            const SizedBox(height: 15,),
            _flatAndHeels(),
            const SizedBox(height: 15,),
            SessionHeader(
              title: "Trending Products ", timeLine: "Last Date 29/02/22",
              icon: Icons.date_range_outlined,
              colorBackground: Colors.pinkAccent, onViewAll: () {},),
            const SizedBox(height: 15,),
            ProductListView(productListData: Product.trendingProducts, type: "trending",),
            const SizedBox(height: 15,),
            _newArrivals(),
            const SizedBox(height: 15,),
            _sponserd(),
            const SizedBox(height: 20,),
          ],
        ),
      ) : _pages[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: _currentIndex, onTabTapped: _onTabTapped,
        isShoppingCartSelected: _isShoppingCartSelected, onShoppingCartTapped: _onShoppingCartTapped,),
    );
  }
  _specialOffers() {
    return Container(
      height: MediaQuery.of(context).size.height*0.16,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset("assets/images/special_offer.png", fit: BoxFit.contain,),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row (
                  children: [
                    Text(
                      "Special Offer",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Image.asset("assets/images/worry.png", fit: BoxFit.cover,),
                  ],
                ),
                SizedBox(height: 5,),
                Text (
                  "We make sure you get the offer you need at best prices",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  _flatAndHeels () {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: MediaQuery.of(context).size.height*0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            width: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
            )
          ),
          Positioned(
            left: -10,
            top: 0,
            bottom: 0,
            child: Image.asset("assets/images/stars.png", height: 100,),
          ),
          Positioned(
            left: 45,
            top: 25,
            child: SizedBox(
              height: 120,
              width: 120,
              child: Image.asset("assets/images/shoes.png", fit: BoxFit.cover,)
            ),
          ),
          Positioned(
            right: 15,
            top: 30,
            width: MediaQuery.of(context).size.width*0.45,
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text (
                  "Flat and Heels",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5,),
                SizedBox(
                  width: 140,
                  child: Text (
                    "Stand a chance to get rewarded",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5,),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          side: BorderSide(color: Colors.pinkAccent,),
                          backgroundColor: Colors.pinkAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      child: Row(
                        children: [
                          Text("Visit now", style: TextStyle(fontSize: 15, color: Colors.white),),
                          SizedBox(width: 4,),
                          Icon(Icons.arrow_right_alt, color: Colors.white, size: 20,)
                        ],
                      )
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  _newArrivals () {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                "assets/images/hotsummer.png",
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              )
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text ("New Arrivals", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(height: 8,),
                    Row (
                      children: [
                        Text ("Summer' 25 Collections", style: TextStyle(fontSize: 15, color: Colors.black))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 110,
                  child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          backgroundColor: Colors.pinkAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      child: Row(
                        children: [
                          Text("View all", style: TextStyle(fontSize: 15, color: Colors.white),),
                          SizedBox(width: 4,),
                          Icon(Icons.arrow_right_alt, color: Colors.white, size: 20,)
                        ],
                      )
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  _sponserd() {
    return Container(
      height: 400,
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.only(left:10, top: 8, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text ("Sponserd", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold )),
          ),
          SizedBox(height: 10,),
          Expanded(
            flex: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
              child: Image.asset(
                "assets/images/sponserd.png",
                fit: BoxFit.cover,
              )
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            flex: 1,
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text ("up to 50% Off", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Icon(Icons.arrow_forward_ios, size: 18,)
              ],
            ),
          )
        ],
      ),
    );
  }
}