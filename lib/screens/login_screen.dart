import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widget_practice/widgets/login/login_button.dart';

import '../helper/login_helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          // Log in text
          Flexible(
              child: Container(
            height: 70,
            width: 320,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Log in",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )),
          SizedBox(
            height: 60,
          ),
          // Buttons container
          Column(
            children: [
              // Google
              LoginButton(
                  text: "Sign up with Google",
                  image: "./assets/images/google_logo.png",
                  color: Color.fromRGBO(205, 65, 46, 1),
                  callback: () => LoginHelper().googleLogin()),
              SizedBox(
                height: 10,
              ),
              // Facebook
              LoginButton(
                  text: "Sign up with Facebook",
                  image: './assets/images/facebook_logo.png',
                  color: Color.fromRGBO(59, 89, 152, 1),
                  callback: () => LoginHelper().facebookLogin()),
              // AppleID
              SizedBox(
                height: 10,
              ),
              LoginButton(
                  text: "Sign up with AppleID",
                  image: './assets/images/apple_logo.png',
                  color: Colors.black,
                  callback: () => LoginHelper().appleLogin()),

              // Or
              SizedBox(
                height: 10,
              ),
              Text(
                "or",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(102, 102, 102, 1)),
              ),
              // Log in with email button
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Ink(
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 45, 98, 1),
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Log in with Email",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          // Sign up button
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "New user?",
                  style: TextStyle(fontSize: 14),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text("Sign up",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(0, 45, 98, 1),
                        )))
              ],
            ),
          ),
          // For spacing in the end
          Expanded(child: Container())
        ],
      )),
    );
  }
}
