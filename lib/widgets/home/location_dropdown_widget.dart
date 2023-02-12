import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class LocationDropdownWidget extends StatefulWidget {
  const LocationDropdownWidget({super.key});

  @override
  State<LocationDropdownWidget> createState() => _LocationDropdownWidgetState();
}

class _LocationDropdownWidgetState extends State<LocationDropdownWidget> {
  List<String> locationList = ['Penn State', 'Atherthon Ave', 'Waupelani', 'Add street'];
  int dropdownIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<int>> dropDownList = locationList.map((e) {
      return DropdownMenuItem(
        onTap: () {
          setState(() {
            dropdownIndex = locationList.indexOf(e);
          });
        },
        value: locationList.indexOf(e),
        child: Text(
          e,
          style: TextStyle(fontSize: 13, color: Colors.black),
        ),
      );
    }).toList();
     List<DropdownMenuItem<int>> titleDropdownList = locationList.map((e) {
      return DropdownMenuItem(
        onTap: () {
          setState(() {
            dropdownIndex = locationList.indexOf(e);
          });
        },
        value: locationList.indexOf(e),
        child: Text(
          e,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      );
    }).toList();
    return DropdownButton(
      borderRadius: BorderRadius.circular(10),
      value: dropdownIndex,
      items: dropDownList,
      selectedItemBuilder: (context) {
        return titleDropdownList;
      },
      // items: [
      //   DropdownMenuItem(
      //     value: 0,
      //     child: Text(
      //       "State college",
      //       style: TextStyle(fontSize: 20, color: Colors.black),
      //     ),
      //   ),
      //   DropdownMenuItem(
      //     value: 1,
      //     child: Text(
      //       "Waupelani",
      //       style: TextStyle(fontSize: 20, color: Colors.black),
      //     ),
      //   ),
      // ],
      onChanged: (value) {},
    );
  }
}
