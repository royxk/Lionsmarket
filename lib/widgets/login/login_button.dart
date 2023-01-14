import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  // function, Text, image, color
  final String text;
  final String image;
  final Color color;
  final Function callback;
  LoginButton(
      {required this.text,
      required this.image,
      required this.color,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        callback();
      }),
      child: Ink(
        width: 320,
        height: 50,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            const SizedBox(
              width: 13,
            ),
            Image.asset(
              image,
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
