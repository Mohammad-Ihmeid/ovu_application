import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ovu_application/helper/constants.dart';

class Utils {
  //Icons and Images
  static customIcon(
      {double height = 25.0, double width = 25.0, required String icon}) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("$ICONS_PATH$icon"), fit: BoxFit.contain),
        ));
  }

  static customImage(
      {double height = 25.0, double width = 25.0, required String image}) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("$IMAGES_PATH$image"), fit: BoxFit.contain)));
  }

  static customIconColored(
      {double height = 25.0,
      double width = 25.0,
      required String icon,
      color = Colors.white}) {
    return Image.asset("$ICONS_PATH$icon",
        color: color, width: width, height: height);
  }

  static customBotton(
      {double height = 25.0,
      double width = 25.0,
      Color color = Colors.white,
      required String title,
      void Function()? onTap,
      String icon_EN = 'arrow_forward.png',
      String icon_AR = 'arrow_back.png'}) {
    final box = GetStorage();
    return Container(
      padding: EdgeInsets.only(left: 15, top: 24, right: 15, bottom: 24),
      width: width,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(40)),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title.tr,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            Image.asset(
              box.read('lng') == "English"
                  ? '${ICONS_PATH + icon_EN}'
                  : '${ICONS_PATH + icon_AR}',
              color: Colors.white,
              width: 18,
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
