import 'package:flutter/material.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onTap,
      this.color = Colors.black,
      this.hasPrimaryColor = true})
      : super(key: key);
  final String title, icon;
  final bool hasPrimaryColor;
  final GestureTapCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          width: 100.0.w,
          decoration: BoxDecoration(
              color: hasPrimaryColor ? color : Colors.transparent,
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(
                  color: hasPrimaryColor ? Colors.transparent : Colors.grey)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Utils.customIcon(icon: icon),
              const SizedBox(width: 10),
              Text(
                title.tr,
                style: TextStyle(
                    color: hasPrimaryColor ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.5.sp),
              ),
            ],
          ),
        ));
  }
}
