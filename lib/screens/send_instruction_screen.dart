import 'package:flutter/material.dart';
import 'package:widget_practice/screens/check_email_screen.dart';
import 'package:widget_practice/screens/emailLogin_screen.dart';
import 'package:widget_practice/screens/social_login_screen.dart';
import 'package:widget_practice/util.dart';
// import 'package:reset/screen/check_email.dart';
// import 'package:reset/screen/login_page.dart';
// import 'package:reset/util.dart';

class SendInstructionsView extends StatelessWidget {
  const SendInstructionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '', // back button
          style: TextStyle(color: Color.fromARGB(255, 128, 126, 126)),
        ),
        leadingWidth: 30,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => EmailLogin())); // 로그인 페이지에 연결하면 됨
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Text(
              'Find your password',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Enter your Email',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 50,
              child: TextFormField(
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 350,
            ),
            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                        height: 60,
                        onPressed: () {
                          Util.routeToWidget(context, CheckEmailView());
                        },
                        color: Color.fromARGB(255, 12, 40, 100),
                        child: Text(
                          'Verify',
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
