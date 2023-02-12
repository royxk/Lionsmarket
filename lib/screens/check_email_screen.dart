import 'package:flutter/material.dart';
import 'package:widget_practice/screens/create_new_password_screen.dart';
import 'package:widget_practice/screens/send_instruction_screen.dart';
import '../util.dart';
// import 'package:reset/screen/create_new_password.dart';
// import 'package:reset/screen/send_instructions.dart';
// import 'package:reset/util.dart';

class CheckEmailView extends StatelessWidget {
  const CheckEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail_outline_rounded,
                      size: 100,
                      color: Color.fromARGB(255, 12, 40, 100),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Check your mail',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Text(
                          'We have sent password recovery instructions to your email.',
                          style: Theme.of(context).textTheme.subtitle1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    color: Color.fromARGB(255, 12, 40, 100),
                    onPressed: () {
                      //navigate to create new password view
                      Util.routeToWidget(context, CreateNewPasswordView());
                    },
                    child: Text(
                      'Open email app',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SendInstructionsView()));
                  },
                  child: Text(
                    'Skip, I\'ll confirm later',
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 12, 40, 100)),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Did not receive the email? Check your spam filter,'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('or'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SendInstructionsView()));
                      },
                      child: Text('try another email address',
                          style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 12, 40, 100))),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
