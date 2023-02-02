import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_appbar_text.dart';
import 'package:ovu_application/views/screens/home/main_bottom_navigation.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen(
      {super.key,
      required this.icon,
      required this.iconButtom,
      required this.title,
      required this.title2,
      required this.titleButtom,
      required this.image});

  final String icon;
  final bool iconButtom;
  final String title;
  final String title2;
  final String titleButtom;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: ListView(physics: BouncingScrollPhysics(), children: <
                    Widget>[
                  CustomAppBarView(),
                  SizedBox(height: 5.h),
                  Image.asset('$IMAGES_PATH$image',
                      fit: BoxFit.contain, width: 224, height: 296),
                  SizedBox(height: 3.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('$ICONS_PATH$icon', width: 32, height: 32),
                        SizedBox(width: 3.w),
                        Text(title.tr,
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                                color: PRIMARY_green)),
                        SizedBox(width: 3.w),
                        Image.asset('$ICONS_PATH$icon', width: 32, height: 32)
                      ]),
                  SizedBox(height: 3.h),
                  CustomAppbarText(
                      text1: title2.tr,
                      text2:
                          'keep_using_OVU._and_invite_your_friends_to_earn_more_badges'),
                  SizedBox(height: 3.h),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => MainBottomNavigation());
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(titleButtom.tr,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: PURBLE_COLOR)),
                            SizedBox(width: 5.w),
                            iconButtom
                                ? Image.asset(
                                    GetStorage().read('lng') == "English"
                                        ? '${ICONS_PATH}arrow_forward.png'
                                        : '${ICONS_PATH}arrow_back.png',
                                    color: PURBLE_COLOR,
                                    width: 20,
                                    height: 20)
                                : Image.asset('${ICONS_PATH}calendar_icon.png',
                                    color: PURBLE_COLOR, width: 20, height: 20)
                          ]))
                ]))));
  }
}
