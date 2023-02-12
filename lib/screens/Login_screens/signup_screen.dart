import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.white,
            title: Text('Main'),
            leading:  IconButton(
                onPressed: () {
                  Navigator.pop(context); //뒤로가기
                },
                color: Colors.black,
                icon: Icon(Icons.arrow_back)),
          ) ,
        body:
        Container(
            margin: EdgeInsets.only(top: 30,bottom: 10,left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign up',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 40,
                ),
              ),
              SizedBox(height: 20,),
              Text( 'Email*',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, right: 20,bottom: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    initialValue: 'snowdeer0314@gmail.com',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  )),
              Text( 'Wrong email format',
                style: TextStyle( color: Colors.red, fontSize: 15,
                ),
              ),
              Text( 'Password *',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10,right:20,bottom: 10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Input password',
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ],
              ),
              Text( "Password must contain a combination of 8-16 characters",
                style: TextStyle( color: Colors.red, fontSize: 15,
                ),
              ),
              Text( 'Confirm Password *',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10,right:20,bottom:10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Input password',
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ],
              ),
              Text( "Password not matched.",
                style: TextStyle( color: Colors.red, fontSize: 15,
                ),
              ),

              SizedBox(height: 70,),
              Text( "By signing up, you agree to your Terms, Conditions, and Cookie Use",
                style: TextStyle( color: Colors.blue, fontSize: 15,
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(height: 70, width: 460,
              child:
                  Container(
                    child: ElevatedButton(
                        child: Text('Next',
                          style: TextStyle( color: Colors.white, fontSize: 25,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          foregroundColor: Colors.redAccent,
                          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      )

                  )

              )
            ],
          )
        ),
      )
    );
  }
}

class ValidationMixin {
  String? validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 4) {
      return 'Enter 4 more char';
    }
    return null;
  }
}
