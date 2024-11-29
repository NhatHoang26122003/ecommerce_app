import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/category.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerPageView extends StatefulWidget {
  const BannerPageView({super.key});

  @override
  State<BannerPageView> createState() => _BannerPageViewState();
}

class _BannerPageViewState extends State<BannerPageView> with SingleTickerProviderStateMixin {
  var banner = Category.banner;
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late AnimationController _animationController;
  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    _animationController.forward();
    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        _animationController.reset();
        setState(() {
          _currentPage = (_currentPage + 1) % (banner.length);
        });
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut
        );
        _animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.25,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page){
                setState(() {
                  _currentPage = page;
                  _animationController.reset();
                  _animationController.forward();
                });
              },
              itemCount: banner.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(banner[index].imagePath, fit: BoxFit.cover,),
                    ),
                    Positioned(
                      left: 15,
                      top: 30,
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Column (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text (
                            banner[index].title,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5,),
                          SizedBox(
                            width: 140,
                            child: Text (
                              banner[index].subText,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          SizedBox(
                            width: 130,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    side: BorderSide(color: Colors.white,),
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )
                                ),
                                child: Row(
                                  children: [
                                    Text(banner[index].buttonText, style: TextStyle(fontSize: 15, color: Colors.white),),
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
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          SmoothPageIndicator(
            controller: _pageController, // PageController từ PageView
            count: banner.length, // Số lượng trang
            effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              spacing: 8,
              activeDotColor: Colors.pinkAccent,
              dotColor: Colors.grey,
            ),
          ),
        ],
      )
    );
  }
}

