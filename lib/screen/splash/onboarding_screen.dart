import 'package:ecommerce_app/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/app_color.dart' as AppColor;

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent ,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${_currentPage + 1}",
                  style: const TextStyle(fontSize:18, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "/3",
                  style: const TextStyle(fontSize:18, color: Colors.grey, fontWeight: FontWeight.bold),
                )
              ]
            )
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              _pageController.animateToPage(2, duration:const Duration(milliseconds: 400), curve: Curves.easeInOut);
              setState(() {
                _currentPage = 2;
              });
            },
            child: const Text("Skip", style: TextStyle(fontSize:18, color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: [
          _buildPage(
            context,
            'assets/images/fashion_shop_1.png',
            'Choose Products',
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                'Velit officia consequat duis enim velit mollit.',
          ),
          _buildPage(
            context,
            'assets/images/sales_consulting.png',
            'Make Payment',
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                'Velit officia consequat duis enim velit mollit.',
          ),
          _buildPage(
            context,
            'assets/images/get_order.png',
            'Get Your Order',
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. '
                'Velit officia consequat duis enim velit mollit.',
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: _currentPage > 0
                ? () {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
                : null,
            child: Text(
              _currentPage == 0 ? "" : "Prev",
              style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: _currentPage == index ? 32.0 : 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    shape: BoxShape.rectangle,
                    color: _currentPage == index ? Colors.black : Colors.grey,
                  ),
                ),
              ),
          ),
          TextButton(
            onPressed: _currentPage < 2
                ? () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
                : () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen())
              );
            },
            child: Text(
              _currentPage < 2 ? "Next" : "Get Started",
              style: TextStyle(color: AppColor.titleButtonColor, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(BuildContext context, String image, String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 300),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
