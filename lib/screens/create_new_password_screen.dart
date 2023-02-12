import 'package:flutter/material.dart';
// import 'package:reset/screen/check_email.dart';
// import 'package:reset/screen/login_page.dart';
// import 'package:reset/screen/send_instructions.dart';
// import 'package:reset/util.dart';

class CreateNewPasswordView extends StatefulWidget {
  const CreateNewPasswordView({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<CreateNewPasswordView> {
  bool _isVisible = false;
  bool _isPasswordCharacters = false;
  bool _hasPasswordNumber = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');

    setState(() {
      _isPasswordCharacters = false;
      if (password.length >= 6) _isPasswordCharacters = true;

      _hasPasswordNumber = false;
      if (numericRegex.hasMatch(password)) _hasPasswordNumber = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Reset Your Password",
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              onChanged: (password) => onPasswordChanged(password),
              obscureText: !_isVisible,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  icon: _isVisible
                      ? Icon(
                          Icons.visibility,
                          color: Color.fromARGB(255, 12, 40, 100),
                        )
                      : Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black)),
                hintText: "Enter new password",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: _isPasswordCharacters
                          ? Colors.green
                          : Colors.transparent,
                      border: _isPasswordCharacters
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Contains at least 6 characters")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: _hasPasswordNumber
                          ? Colors.green
                          : Colors.transparent,
                      border: _hasPasswordNumber
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(" Contains a number")
              ],
            ),
            SizedBox(
              height: 350,
            ),
            MaterialButton(
              height: 60,
              minWidth: double.infinity,
              onPressed: () {},
              color: Color.fromARGB(255, 12, 40, 100),
              child: Text(
                "Reset your password",
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            )
          ],
        ),
      ),
    );
  }
}