import 'package:flutter/material.dart';
class SortFilter extends StatelessWidget {
  const SortFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 10),
              side: BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: Colors.white,
            ),
            child: Row (
              mainAxisSize: MainAxisSize.min,
              children: [
                Text (
                  "Sort",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                SizedBox(width: 3,),
                Icon(Icons.sort_outlined, color: Colors.black, size: 17),
              ],
            ),
          ),
          SizedBox(width: 8,),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 10),
              side: BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: Colors.white,
            ),
            child: Row (
              mainAxisSize: MainAxisSize.min,
              children: [
                Text (
                  "Filter",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                SizedBox(width: 3,),
                Icon(Icons.filter_alt_outlined, color: Colors.black, size: 17),
              ],
            ),
          )
        ],
      )
    );
  }
}
