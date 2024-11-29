import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SessionHeader extends StatelessWidget {
  final String title;
  IconData? icon;
  final String timeLine;
  final Color colorBackground;
  final VoidCallback onViewAll;

  SessionHeader({super.key, required this.title, this.icon, required this.timeLine, required this.colorBackground, required this.onViewAll});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: EdgeInsets.symmetric(horizontal:12, vertical: 12),
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text (title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
              SizedBox(height: 8,),
              Row (
                children: [
                  icon != null ? Icon(icon, color: Colors.white, size: 14,) : SizedBox.shrink(),
                  SizedBox(width: 5,),
                  Text (timeLine, style: TextStyle(fontSize: 14, color: Colors.white))
                ],
              ),
            ],
          ),
          SizedBox(
            width: 120,
            child: ElevatedButton(
                onPressed: onViewAll,
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    side: BorderSide(color: Colors.white,),
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                child: Row(
                  children: [
                    Text("View all", style: TextStyle(fontSize: 15, color: Colors.white),),
                    SizedBox(width: 4,),
                    Icon(Icons.arrow_right_alt, color: Colors.white, size: 20,)
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
