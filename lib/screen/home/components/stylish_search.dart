import 'package:flutter/material.dart';

class StylishSearch extends StatelessWidget {
  const StylishSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ]
      ),
      child: Row (
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search_rounded, color: Colors.grey,),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search any Product",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic, color: Colors.grey,),
          )
        ],
      ),
    );
  }
}
