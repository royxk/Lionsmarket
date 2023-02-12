import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widget_practice/screens/search_screen.dart';
import 'package:widget_practice/widgets/home/category_widget.dart';
import 'package:widget_practice/widgets/home/location_dropdown_widget.dart';

import '/widgets/image_widget.dart';
import '/list_information.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrcontroller = ScrollController();
    return Scaffold(
      // Appbar
      //  -> PSU logo & Location & serach & notification
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              // PSU LOGO
              Image.asset(
                "assets/images/homescreen/pennstate.png",
                height: 60,
                width: 60,
              ),
              // Location dropdown
              LocationDropdownWidget(),
              Expanded(child: Container()),
              // Search button
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
              // Notification Button
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
              // 상단에 Category
              CategoryWidget(),
              // Temporary items
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  controller: scrcontroller,
                  itemCount: useditemListings.length,
                  itemBuilder: ((context, index) {
                    // Item
                    return InkWell(
                      onTap: (){},
                      child: Ink(
                        decoration: const BoxDecoration(
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
                                    // Item title
                                    Text(
                                      useditemListings[index].title,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(height: 5,),
                                    // Item location & date posted
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
                                    SizedBox(height: 5,),
                                    // Item price
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
                                    // liked and comments
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        // Liked 갯수
                                        Image.asset(
                                          "./assets/images/homescreen/icon_like.png",
                                          width: 30,
                                          height: 30,
                                        ),
                                        Text("15", style: TextStyle(fontSize: 15),),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        // Comment 갯수
                                        Image.asset(
                                          "./assets/images/homescreen/icon_comment.png",
                                          width: 30,
                                          height: 30,
                                        ),
                                        Text("25",style: TextStyle(fontSize: 15),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
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
