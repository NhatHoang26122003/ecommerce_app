import 'package:ecommerce_app/models/category.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  var homeCategory = Category.homeCategory;

  CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeCategory.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(homeCategory[index].imagePath ?? "Default Text" ),
                ),
                SizedBox(height: 4),
                Text(homeCategory[index].name ?? "Default Text"),
              ],
            ),
          );
        }
      ),
    );
  }
}
