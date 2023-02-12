import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class finishProfile extends StatelessWidget {
  finishProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: (const Icon(
                  Icons.close,
                )))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Text(
                                'You are all set!',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 40),
                                child: Text(
                                  'Welcome to Lions Market!',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(top: 40),
                                child: Image.asset(
                                  'assets/images/google_logo.png',
                                  height: 200,
                                  width: 200,
                                )),
                            Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Text(
                                  'Please log in with your email.',
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ),
                    )),
                    Container(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => const profile()));
                  },
                  child: Ink(
                    child: Center(
                      child: Text("Log in"),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
