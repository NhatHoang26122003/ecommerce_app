import 'package:ecommerce_app/forgot_password.dart';
import 'package:ecommerce_app/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/app_color.dart' as AppColor;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric( horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Container(
                  padding: EdgeInsets.only(top: 20),
                  height: 150,
                  width: MediaQuery.of(context).size.width*0.6,
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline),
                    hintText: "Username or Email",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton (
                      icon: _obscureText ? Icon(Icons.visibility_off): Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text (
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColor.titleButtonColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
                    },
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.titleButtonColor,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text ("- OR Continue with -", style: TextStyle(fontSize: 13, color: Colors.grey)),
                    SizedBox(height: 20,),
                    Row (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Google
                        InkWell(
                          onTap: () {},
                          child: Image.asset("assets/images/Google.png", fit: BoxFit.contain,),
                        ),
                        SizedBox(width: 10),

                        InkWell(
                          onTap:  () {},
                          child: Image.asset("assets/images/Apple.png", fit: BoxFit.contain,),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap:  () {},
                          child: Image.asset("assets/images/Facebook.png", fit: BoxFit.contain,),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Create An Account", style: TextStyle(fontSize: 14, color: Colors.black),),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                          },
                          child: Text (
                            "Sign up",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColor.titleButtonColor,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.titleButtonColor,
                              decorationThickness: 1.5,
                            ),
                          )
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
