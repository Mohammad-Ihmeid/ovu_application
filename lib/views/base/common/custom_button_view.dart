import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: GestureDetector(
            onTap: onTap,
            child: Container(
                height: 6.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PURBLE_COLOR,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(title.tr,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 12.0.sp)),
                      Image.asset('${ICONS_PATH}person.png', scale: 2)
                    ]))));
  }
}
