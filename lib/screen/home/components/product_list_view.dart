import 'package:ecommerce_app/screen/home/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/product.dart';

class ProductListView extends StatefulWidget {
  final List<Product> productListData;
  final String type;
  const ProductListView({super.key, required this.productListData, required this.type});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  final ScrollController _scrollController = ScrollController();
  void _scrollRight() {
    final double offset = _scrollController.offset + 200;
    _scrollController.animateTo(
      offset,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
  @override
  Widget build(BuildContext context) {
    var productListData = this.widget.productListData;
    return Container(
      height: (this.widget.type != "trending" )? 340:300,
      width: double.infinity,
      color: Colors.transparent,
      child: Stack(
        children: [
          SizedBox(
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: productListData.length,
              padding: EdgeInsets.only(right: 20),
              itemBuilder: (context, index) {
                final product = productListData[index];
                return GestureDetector(
                  onTap: () {
                  },
                  child: Padding(
                      padding: EdgeInsets.only(right: 16),
                      child:ProductCard(product: product) ,
                  ),
                );
              },
            ),
          ),
          Positioned(
            right: 8,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                _scrollRight();
              },
              child: Container(
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(Icons.arrow_forward, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
