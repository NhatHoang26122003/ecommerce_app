import 'dart:ui';

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
    Category(name: "Beauty", imagePath: "assets/images/beauty.png"),
    Category(name: "Fashion", imagePath: "assets/images/fashion.png"),
    Category(name: "Kids", imagePath: "assets/images/kids.png"),
    Category(name: "Mens", imagePath: "assets/images/men.png"),
    Category(name: "Womens", imagePath: "assets/images/women.png"),
    Category(name: "Fashion", imagePath: "assets/images/fashion.png"),
  ];
  static List<Category> banner = [
    Category(
        imagePath: "assets/images/banner.png",
        title: "50-40% OFF",
        subText: "Now in (product) All colours",
        buttonText: "Shop Now"),
    Category(
        imagePath: "assets/images/banner.png",
        title: "50-40% OFF",
        subText: "Now in (product) All colours",
        buttonText: "Shop Now"),
    Category(
        imagePath: "assets/images/banner.png",
        title: "50-40% OFF",
        subText: "Now in (product) All colours",
        buttonText: "Shop Now")
  ];
}
