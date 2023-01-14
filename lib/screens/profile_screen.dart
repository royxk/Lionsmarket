import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:widget_practice/screens/settings_screen.dart';
import 'package:widget_practice/widgets/profile/my_trade_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 60,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Center(
            child: Text(
              "Roy",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ));
                },
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ))
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 70,
              child: Row(children: [
                CircleAvatar(
                  child: Image.asset(
                    "assets/images/homescreen/customer.png",
                    width: 37,
                    height: 37,
                  ),
                  radius: 25,
                  backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Roy",
                  style: const TextStyle(fontSize: 30),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {},
                  child: Ink(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(136, 136, 136, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Edit",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
                  ),
                )
              ]),
            ),

            // Buying and selling
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Buying and Selling",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTradeWidget(
                    title: "Listings",
                    icon: Icon(Icons.list_alt_rounded),
                    callback: () {},
                  ),
                  MyTradeWidget(
                    title: "Purchases",
                    icon: Icon(Icons.shopping_basket_outlined),
                    callback: () {},
                  ),
                  MyTradeWidget(
                    title: "Favorites",
                    icon: Icon(Icons.favorite_border_rounded),
                    callback: () {},
                  ),
                ],
              ),
            ),
            // Activity
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTradeWidget(
                    title: "Search Alerts",
                    icon: Icon(Icons.notifications_none_rounded),
                    callback: () {},
                  ),
                  MyTradeWidget(
                    title: "Location",
                    icon: Icon(Icons.my_location_rounded),
                    callback: () {},
                  ),
                ],
              ),
            ),
            // My community
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Community",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTradeWidget(
                    title: "Community Post/Comments",
                    icon: Icon(Icons.chat_bubble_outline_rounded),
                    callback: () {},
                  ),
                ],
              ),
            ),
            // Help
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Helps",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTradeWidget(
                    title: "FAQs",
                    icon: Icon(Icons.question_answer_outlined),
                    callback: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
