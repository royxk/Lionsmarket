import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widget_practice/screens/emailLogin_screen.dart';
import 'package:widget_practice/screens/setprofile_screen.dart';
import 'package:widget_practice/widgets/login/login_button.dart';

import '../helper/login_helper.dart';

class SocialLogin extends StatefulWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  State<SocialLogin> createState() => _SocialLoginState();
}

class _SocialLoginState extends State<SocialLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              //윗 간격
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Log in',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
              ],
            ),
            SizedBox(
              //버튼 1 간격
              height: 80,
            ),
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return setprofile();
                    },
                  ));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Icon(Icons.g_mobiledata_outlined, size: 50),
                    Text(
                      "  Sign up with Google",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              //버튼 2 간격
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Icon(Icons.facebook, size: 35),
                    Text(
                      "     Sign up with Facebook",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              //버튼 3 간격
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Icon(Icons.apple, size: 38),
                    Text(
                      "     Sign up with AppleID",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              //버튼 3, or 간격
              height: 15,
            ),
            Text(
              'or',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              //버튼 4, or 간격
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.indigoAccent),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmailLogin()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "Log in with Email",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              //버튼 4, new user? 간격
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New user? ',
                  style: TextStyle(fontSize: 17),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text('Sign up', style: TextStyle(decoration: TextDecoration.underline, fontSize: 17)))
              ],
            ),
          ],
        )),
      ),
    );
  }
}
