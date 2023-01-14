import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SettingButtonWidget extends StatelessWidget {
  final Icon icon;
  final String title;
  SettingButtonWidget({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 15, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
