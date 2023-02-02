import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.width = double.infinity,
      required this.title,
      required this.onTap,
      this.color = PURBLE_COLOR,
      this.icon = "",
      this.iconShow = true});

  final double width;
  final String title;
  final void Function()? onTap;
  final Color color;
  final String icon;
  final bool iconShow;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(40)),
        child: iconShow
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title.tr,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Utils.customIconColored(
                      icon: icon.isEmpty
                          ? GetStorage().read('lng') == "English"
                              ? 'arrow_forward.png'
                              : 'arrow_back.png'
                          : icon,
                      height: 18,
                      width: 18)
                ],
              )
            : Text(
                title.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
      ),
    );
  }
}
