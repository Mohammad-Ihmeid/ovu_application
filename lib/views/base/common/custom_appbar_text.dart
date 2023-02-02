import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppbarText extends StatelessWidget {
  final String text1;

  final String text2;

  CustomAppbarText({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          children: [
            TextSpan(text: text1.tr + '\n'),
            TextSpan(
                text: text2.tr + '\n',
                style: TextStyle(
                    color: Color(0xFFA2A2A2),
                    fontWeight: FontWeight.w500,
                    fontSize: 14))
          ]),
    );
  }
}
