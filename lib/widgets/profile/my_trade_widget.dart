import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../setting_button_widget.dart';

class MyTradeWidget extends StatelessWidget {
  final String title;
  final Icon? icon;
  final Function callback;
  MyTradeWidget(
      {required this.title, this.icon = null, required this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback,
      child: Container(
        height: 40,
        child: Row(children: [
          icon == null ? Container() : icon!,
          // Image.asset(
          //   icons,
          //   width: 20,
          //   height: 20,
          // ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          )
        ]),
      ),
    );
  }
}
