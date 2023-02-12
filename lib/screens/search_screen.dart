import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // Go back button
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          // Notification button
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            // Search box
            SizedBox(
              height: 50,
              child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    prefixIconColor: Colors.black,
                    fillColor: Color.fromRGBO(234, 234, 234, 1),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            // Trending section
            Container(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Trending",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all()),
                          child: Center(
                            child: const Text("Ticket",
                                style: TextStyle(fontSize: 11)),
                          ),
                        ),
                        Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all()),
                          child: Center(
                            child: const Text("Ticket",
                                style: TextStyle(fontSize: 11)),
                          ),
                        ),
                        Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all()),
                          child: Center(
                            child: const Text("Ticket",
                                style: TextStyle(fontSize: 11)),
                          ),
                        ),
                        Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all()),
                          child: Center(
                            child: const Text("Ticket",
                                style: TextStyle(fontSize: 11)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // Recent Search
            Container(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Recent Search",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Expanded(child: Container())
          ],
        ),
      )),
    );
  }
}
