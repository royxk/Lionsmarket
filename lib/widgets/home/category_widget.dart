import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widget_practice/widgets/home/category_setting_sheet.dart';

enum Category {
  All,
  Buy,
  Popular,
  Digital,
  Furniture,
  Ticket,
  Household,
  Fashion,
  Game,
  WTB,
}

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 10, vsync: this);
    List<String> categoryLists = [
      'All',
      'Buy',
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
        context: context,
        builder: (context) {
          return CategorySettingSheet();
        },
      );
    }

    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(bottom: 0),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
        height: 50,
        child: Row(
          children: [
            // Category button
            InkWell(
              onTap: () => showCategory(),
              child: Ink(
                width: 50,
                height: 30,
                child: Image.asset("assets/images/homescreen/category_icon.png"),
              ),
            ),
            // Category list items
            Flexible(
              child: TabBar(
                  indicatorColor: Color.fromRGBO(62, 89, 226, 1),
                  isScrollable: true,
                  controller: tabController,
                  tabs: categoryLists.map((e) {
                    return Tab(
                      child: Container(
                        width: 50,
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              e,
                              style: TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList()),
            ),
          ],
        ));
  }
}
