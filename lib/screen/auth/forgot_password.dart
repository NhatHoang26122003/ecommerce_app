import 'package:flutter/material.dart';
import 'package:ecommerce_app/app_color.dart' as AppColor;

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(top: 20),
                  height: 150,
                  width: MediaQuery.of(context).size.width*0.6,
                  child: Text (
                    "Forgot password?",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Enter your email address",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              SizedBox(height: 15,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                      text: TextSpan (
                        children: [
                          TextSpan(
                              text: "*",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.titleButtonColor,
                              )
                          ),
                          TextSpan(
                              text: " We will send you a message to set or reset your new password",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              )
                          )
                        ],
                      )
                  )
              ),
              SizedBox(height: 25,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.titleButtonColor,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text (
                    "Submit",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
