import 'dart:ui';
import 'package:ecommerce_app/utils/localfiles.dart';

class Category {
  String name;
  String imagePath;
  String title;
  String subText;
  String buttonText;

  Category({
    this.name = " ",
    this.imagePath = " ",
    this.title = " ",
    this.subText = " ",
    this.buttonText = "",
  });

  static List<Category> homeCategory = [
    Category(name: "Beauty", imagePath: Localfiles.beauty),
    Category(name: "Fashion", imagePath: Localfiles.fashion),
    Category(name: "Kids", imagePath: Localfiles.kids),
    Category(name: "Mens", imagePath: Localfiles.men),
    Category(name: "Womens", imagePath: Localfiles.women),
    Category(name: "Fashion", imagePath: Localfiles.fashion),
  ];
  static List<Category> banner = [
    Category(
        imagePath: Localfiles.banner,
        title: "50-40% OFF",
        subText: "Now in (product) All colours",
        buttonText: "Shop Now"),
    Category(
        imagePath: Localfiles.banner,
        title: "50-40% OFF",
        subText: "Now in (product) All colours",
        buttonText: "Shop Now"),
    Category(
        imagePath: Localfiles.banner,
        title: "50-40% OFF",
        subText: "Now in (product) All colours",
        buttonText: "Shop Now")
  ];
}
