import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_practice/screens/send_instruction_screen.dart';
import 'package:widget_practice/screens/social_login_screen.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  bool idType = false;
  bool pwType = false;
  String idText = '';
  String pwText = '';
  String correctID = 'abc@gmail.com';
  String correctPW = '1234';
  bool _isVisible = false;

  String passwordStar() {
    //password *??

    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SocialLogin()),
                      );
                    },
                    icon: Icon(Icons.keyboard_backspace_sharp)),
              ],
            ),
            SizedBox(
              //윗 간격
              height: 30,
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
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('E-mail'),
              ],
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), label: Text('abc@gmail.com')),
              onChanged: (text) {
                setState(() {
                  idText = text;
                  if (idText != '') {
                    idType = true;
                  } else {
                    idType = false;
                  }
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Visibility(visible: _isVisible, child: Text('E-mail is incorrect', style: TextStyle(color: Colors.red)))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Password'),
              ],
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), label: Text('Password')),
              onChanged: (text) {
                setState(() {
                  pwText = text;
                  if (pwText != '') {
                    pwType = true;
                  } else {
                    pwType = false; //isempty로 대체
                  }
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return SendInstructionsView();
                        },
                      ));
                    },
                    child: Text('Forgot Password?'))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                  onPressed: idType & pwType
                      ? () {
                          if (idText != correctID) {
                            _isVisible = true;
                          } else if (idText == correctID) {
                            _isVisible = false;
                          }
                        }
                      : null,
                  child: Text('LOG IN')),
            ),
            SizedBox(
              height: 15,
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
          ]),
        ),
      ),
    );
  }
}
