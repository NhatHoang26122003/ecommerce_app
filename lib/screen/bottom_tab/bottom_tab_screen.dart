import 'package:flutter/material.dart';

class BottomTabScreen extends StatefulWidget {
  const BottomTabScreen({super.key});

  @override
  State<BottomTabScreen> createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
// bottomNavigationBar: Container(
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.only(
//       topLeft: Radius.circular(20),
//       topRight: Radius.circular(20),
//     ),
//     boxShadow: [
//       BoxShadow(
//         color: Colors.grey,
//         spreadRadius: 0,
//         blurRadius: 7,
//         offset: Offset(0, 0),
//       ),
//     ],
//   ),
//   child: BottomNavigationBar(
//     currentIndex: _currentIndex,
//     onTap: _onTabTapped,
//     type: BottomNavigationBarType.fixed,
//     selectedItemColor: Colors.red,
//     unselectedItemColor: Colors.black,
//     showSelectedLabels: true,
//     showUnselectedLabels: true,
//     items: const <BottomNavigationBarItem>[
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         label: 'Home',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.favorite_border),
//         label: 'Wishlist',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.search),
//         label: 'Search',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.settings),
//         label: 'Setting',
//       ),
//     ],
//   ),
// ),
// floatingActionButton: FloatingActionButton(
//   onPressed: () {
//     print("Go to shopping");
//   },
//   child: Icon(Icons.shopping_cart),
//   backgroundColor: Colors.white,
//   shape: CircleBorder(),
// ),
// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
