import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:widget_practice/screens/profile2_screen.dart';
// import 'followprofile.dart';


class setprofile extends StatelessWidget {
  const setprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                                  margin: EdgeInsets.only(top: 40,),
                                  child: Text(
                                    'Set your profile!',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 40),
                                    child: Text(
                                      'Welcome to Lions Market',
                                      style: TextStyle(
                                        fontSize: 30,
                                      ),
                                    )
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 40),
                                    child: Image.asset('assets/images/google_logo.png',
                                      height: 200,
                                      width: 200,
                                    )
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 40),
                                    child: Text('Your photo will be visible on your profile. You can change this in privacy settings in the future.',
                                      textAlign: TextAlign.center,)
                                ),
                              ],
                            ),
                          ),
                        )),
                    Container(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(top: 20),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                                  child: Text(
                                    'Username *',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "ex) Leonardo031",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Username must contain only letters and numbers between 6 to 12.')),
                            ),
                          ],
                        ),
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
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const profile2()));
                   },
                  child: Ink(
                    child: Center(
                      child: Text("Next"),
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
        )
    );
  }
}