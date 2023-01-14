import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/profile/my_trade_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        centerTitle: true,
        title: Text(
          "Settings",
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          // Notification
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
                  "Notification",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                MyTradeWidget(
                  title: "Notification and Sound",
                  callback: () {},
                ),
              ],
            ),
          ),
          // User Settings
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
                  "User Settings",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                MyTradeWidget(
                  title: "Account",
                  callback: () {},
                ),
                MyTradeWidget(
                  title: "Block users",
                  callback: () {},
                ),
              ],
            ),
          ),
          // Else
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
                  "Else",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                MyTradeWidget(
                  title: "Notice",
                  callback: () {},
                ),
                MyTradeWidget(
                  title: "Language Setting",
                  callback: () {},
                ),
                MyTradeWidget(
                  title: "Delete cache",
                  callback: () {},
                ),
                MyTradeWidget(
                  title: "Version",
                  callback: () {},
                ),
                MyTradeWidget(
                  title: "Sign out",
                  callback: () {},
                ),
                MyTradeWidget(
                  title: "Delete Account",
                  callback: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
