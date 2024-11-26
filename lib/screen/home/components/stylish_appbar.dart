import 'package:flutter/material.dart';

class StylishAppbar extends StatelessWidget {
  const StylishAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu_sharp, color: Colors.black, size: 24,)
          ),
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset("assets/images/logo.png", fit: BoxFit.contain,),
              ),
              SizedBox(width: 5,),
              Text(
                "Stylish",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'LibreCaslonText',
                  color: Colors.blueAccent,
                ),
              )
            ],
          ),
          InkWell(
            onTap: (){},
            child: Image.asset("assets/images/avatar.png"),
          )
        ],
      )
    );
  }
}