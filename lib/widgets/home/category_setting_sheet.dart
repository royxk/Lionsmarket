import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategorySettingSheet extends StatelessWidget {
  const CategorySettingSheet({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categoryLists = [
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
    Map<String, String> category = {
      'Buy': 'assets/images/category/icon_product.png',
      'Popular': 'assets/images/category/icon_user_group.png',
      'Digital': 'assets/images/category/icon_camera.png',
      'Furniture': 'assets/images/category/icon_car_leather_seat.png',
      'Ticket': 'assets/images/category/icon_coupon.png',
      'Household': 'assets/images/category/icon_home.png',
      'Fashion': 'assets/images/category/icon_keyword.png',
      'Game': 'assets/images/category/icon_emoticon.png',
      'WTB': 'assets/images/category/icon_near_me.png',
    };
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
            children: [
              // Category items
              Expanded(
                  child: Container(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
                  itemCount: categoryLists.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Ink(
                        child: Column(
                          children: [
                            Image.asset(category[categoryLists[index]]!),
                            Text(categoryLists[index]),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )),
              // Container for Reset button & Apply button
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Ink(
                        height: 55,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color.fromRGBO(174, 174, 174, 1)),
                        child: Center(
                            child: Text(
                          "Reset",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(width: 40,),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Ink(
                        height: 55,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color.fromRGBO(60, 118, 231, 1)),
                        child: Center(
                            child: Text(
                          "Apply",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
    );
  }
}
