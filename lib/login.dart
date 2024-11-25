import 'package:flutter/material.dart';

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
        child: Center (
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric( horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width*0.5,
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
                SizedBox(height: 20,),
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
                SizedBox(height: 5,),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child:Text (
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.red,
                      ),
                    ),
                    onPressed: () {},
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
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text ("- OR Continue with -", style: TextStyle(fontSize: 13, color: Colors.grey)),
                    SizedBox(height: 15,),
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
                          onPressed: () {},
                          child: Text (
                            "Sign up",
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
class SocialIconButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const SocialIconButton({super.key, required this.imagePath, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Image.asset(imagePath, fit: BoxFit.contain,),
    );
  }
}
