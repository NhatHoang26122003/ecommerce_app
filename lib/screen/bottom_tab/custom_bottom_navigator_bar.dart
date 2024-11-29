import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;
  final bool isShoppingCartSelected;
  final VoidCallback onShoppingCartTapped;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTabTapped,
    required this.isShoppingCartSelected,
    required this.onShoppingCartTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61 + MediaQuery.of(context).padding.bottom,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTabItem(Icons.home, 'Home', 0),
                _buildTabItem(Icons.favorite_border, 'Wishlist', 1),
                SizedBox(width: 60),
                _buildTabItem(Icons.search, 'Search', 2),
                _buildTabItem(Icons.settings, 'Setting', 3),
              ],
            ),
          ),
          // Nút Shopping Cart
          Positioned(
            bottom: 20,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: FloatingActionButton(
              onPressed: onShoppingCartTapped,
              shape: CircleBorder(),
              backgroundColor: isShoppingCartSelected ? Colors.red : Colors.white,
              child: Icon(
                Icons.shopping_cart,
                color: isShoppingCartSelected ? Colors.white : Colors.black,
              ),
              elevation: 5,
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildTabItem(IconData icon, String label, int index) {
    final isSelected = index == currentIndex;
    return GestureDetector(
      onTap: () => onTabTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? Colors.red : Colors.black),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.red : Colors.black,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}