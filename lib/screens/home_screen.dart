import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widget_practice/screens/search_screen.dart';
import 'package:widget_practice/widgets/home/category_widget.dart';

import '../widgets/image_widget.dart';
import '../list_information.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrcontroller = ScrollController();
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CategoryWidget(),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  controller: scrcontroller,
                  itemCount: useditemListings.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      decoration: const BoxDecoration(
                          //color: Colors.amber,
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 1),
                                  width: 1))),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Image of item
                          ImageWidget(),
                          SizedBox(
                            width: 10,
                          ),
                          // Item description
                          Expanded(
                            child: Container(
                              height: 100,
                              //color: Colors.amber,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    useditemListings[index].title,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        useditemListings[index].city + " - ",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                177, 177, 177, 1)),
                                      ),
                                      Text(
                                        useditemListings[index].timestamp,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                177, 177, 177, 1)),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "\$" +
                                        useditemListings[index]
                                            .price
                                            .round()
                                            .toString(),
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(child: Container()),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        "./assets/images/homescreen/chat.png",
                                        width: 20,
                                        height: 20,
                                      ),
                                      Text("15"),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Icon(
                                        Icons.thumb_up_alt_outlined,
                                        size: 20,
                                      ),
                                      Text("25")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
