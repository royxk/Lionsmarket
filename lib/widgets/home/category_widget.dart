import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

enum Category {
  All,
  Popular,
  Digital,
  Furniture,
  Ticket,
  Household,
  Fashion,
  Game,
  WTB,
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categoryLists = [
      'All',
      'Popular',
      'Digital',
      'Furniture',
      'Ticket',
      'Household',
      'Fashion',
      'Game',
      'WTB',
    ];
    const categoryTextStyle = TextStyle(fontSize: 15, color: Colors.black);

    void showCategory() {
      showBottomSheet(
        constraints: BoxConstraints(maxHeight: 500),
        context: context,
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Container(),
              centerTitle: true,
              title: Text(
                "Category Setting",
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.black,
                    ))
              ],
            ),
            body: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemCount: categoryLists.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            color: Colors.grey,
                          ),
                          Text(categoryLists[index])
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        color: Colors.grey,
                        child: Center(child: Text("Cancel")),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        color: Colors.pink,
                        child: Center(child: Text("Save")),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    return Container(
      padding: EdgeInsets.only(bottom: 0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black))),
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          IconButton(
              onPressed: () {
                showCategory();
              },
              icon: Icon(Icons.list)),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: categoryLists.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      categoryLists[index],
                      style: categoryTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              );
            },
          )
        ]),
      ),
    );
  }
}
