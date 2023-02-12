import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widget_practice/screens/search_screen.dart';

class HotDealScreen extends StatefulWidget {
  const HotDealScreen({super.key});

  @override
  State<HotDealScreen> createState() => _HotDealScreenState();
}

class _HotDealScreenState extends State<HotDealScreen> {
  CrossFadeState state = CrossFadeState.showFirst;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Image.asset(
                "assets/images/homescreen/pennstate.png",
                height: 60,
                width: 60,
              ),
              DropdownButton(
                borderRadius: BorderRadius.circular(10),
                value: 0,
                items: [
                  DropdownMenuItem(
                    value: 0,
                    child: Text(
                      "State college",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: Text(
                      "Waupelani",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
                onChanged: (value) {},
              ),
              Expanded(child: Container()),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => SearchScreen())));
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ]),
          ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Images
            Expanded(
              child: AnimatedCrossFade(
                firstChild: Container(color: Colors.black),
                secondChild: Container(color: Colors.red),
                crossFadeState: state,
                sizeCurve: ElasticInCurve(),
                duration: Duration(milliseconds: 300),
              ),
            ),
            //buttons
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          state = CrossFadeState.showSecond;
                        });
                      },
                      child: Text("X")),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("X")),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          state = CrossFadeState.showFirst;
                        });
                      },
                      child: Text("X")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
