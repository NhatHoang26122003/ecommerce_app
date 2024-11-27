
class Product {
  String name;
  String? description;
  double price;
  double originalPrice;
  int discountPercent;
  double? rating;
  int? reviews;
  String imagePath;

  Product ({
    this.name ="",
    this.description,
    this.price = 0.0,
    this.originalPrice = 0.0,
    this.discountPercent = 0,
    this.rating,
    this.reviews,
    this.imagePath = "",
  });

  static List<Product> dealListProduct = [
    Product (
      name: "Women Printed Kurta",
      description: "Neque porro quisquam est qui dolorem ipsum quia",
      price: 1500,
      originalPrice: 2499,
      discountPercent: 40,
      rating: 4.5,
      reviews: 56890,
      imagePath: "assets/images/dealList_1.png"
    ),
    Product (
      name: "HRX by Hrithik Roshan",
      description: "Neque porro quisquam est qui dolorem ipsum quia",
      price: 2499,
      originalPrice: 4999,
      discountPercent: 50,
      rating: 4.5,
      reviews: 344567,
      imagePath: "assets/images/dealList_2.png",
    ),
    Product (
      name: "HRX by Hrithik Roshan",
      description: "Neque porro quisquam est qui dolorem ipsum quia",
      price: 2499,
      originalPrice: 4999,
      discountPercent: 50,
      rating: 5,
      reviews: 123456,
      imagePath: "assets/images/dealList_1.png"
    ),
  ];
  static List<Product> trendingProducts = [
    Product (
      name: "IWC Schaffhausen 2021 Pilot's Watch \"SIHH 2019\" 44mm",
      price: 1500,
      originalPrice: 2499,
      discountPercent: 40,
      imagePath: "assets/images/iwc.png"
    ),
    Product (
      name: "Labbin White Sneakers For Men and Female",
      price: 2499,
      originalPrice: 4999,
      discountPercent: 50,
      imagePath: "assets/images/sneaker.png",
    ),
    Product (
      name: "Mammon Women's Handbag (Set of 3, Beige)",
      price: 2499,
      originalPrice: 4999,
      discountPercent: 50,
      imagePath: "assets/images/handpad.png"
    ),
  ];
}