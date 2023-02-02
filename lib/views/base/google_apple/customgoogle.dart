import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';

class CustomGoogle extends StatelessWidget {
  CustomGoogle(
      {super.key,
      required this.title,
      required this.image,
      required this.connected});
  final String image;
  final bool connected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title.tr,
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600)),
          GestureDetector(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                      color: connected ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Color(0x1F1F1F1F))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Image.asset('${ICONS_PATH}$image', width: 20, height: 20),
                      SizedBox(width: 5),
                      Text('connected'.tr,
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: connected ? Colors.white : Colors.black))
                    ]),
                  ))),
        ]);
  }
}
