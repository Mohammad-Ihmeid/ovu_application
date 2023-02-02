// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';

class CustomProgressIndecator extends StatelessWidget {
  final double width;

  CustomProgressIndecator({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xFFE8E8E8))),
              Container(
                  height: 5,
                  width: MediaQuery.of(context).size.width / width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: PRIMARY_green,
                  ))
            ],
          ),
        ),
        SizedBox(width: 3.w),
        GestureDetector(
            onTap: () {},
            child: Text('skip'.tr,
                style:
                    TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500))),
      ],
    );
  }
}
