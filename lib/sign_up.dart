import 'package:ecommerce_app/login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;
  bool _obscureText_confirm = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center (
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric( horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                SizedBox(
                  height: 120,
                  width: MediaQuery.of(context).size.width*0.5,
                  child: Text(
                    "Create an account!",
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
                SizedBox(height: 35,),
                TextField(
                  obscureText: _obscureText_confirm,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: "Confirm Password",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton (
                        icon: _obscureText_confirm ? Icon(Icons.visibility_off): Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _obscureText_confirm = !_obscureText_confirm;
                          });
                        },
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "By clicking the ",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          )
                        ),
                        TextSpan(
                        text: "Register",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                          )
                        ),
                        TextSpan(
                          text: " button, you agree to the public offer",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          )
                        ),
                      ]
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
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
                          onTap: () {
                            print ("Google Sign In");
                          },
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
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                            },
                            child: Text (
                              "Log in",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.red,
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
      ),
    );
  }
}
