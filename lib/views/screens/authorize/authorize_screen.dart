import 'package:flutter/material.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:ovu_application/views/base/common/custom_back_icon.dart';
import 'package:ovu_application/views/base/common/custom_social_button.dart';
import 'package:ovu_application/views/screens/authorize/mobile_number_input_screen.dart';
import 'package:ovu_application/views/screens/authorize/name_input_screen.dart';
import 'package:ovu_application/views/screens/home/main_bottom_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class AuthorizeScreen extends StatelessWidget {
  const AuthorizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      SizedBox(height: 4.h),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBackIcon(),
                GestureDetector(
                    onTap: () => Get.to(() => MainBottomNavigation()),
                    child: Text('use_as_guest'.tr,
                        style: TextStyle(
                            color: PURBLE_COLOR,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp)))
              ])),
      SizedBox(height: 12.h),
      Image.asset('${IMAGES_PATH}authorize_image.png'),
      SizedBox(height: 5.h),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            CustomSocialButton(
                title: 'authorize_with_google',
                icon: 'google_icon.png',
                onTap: () => Get.to(() => NameInputScreen()),
                hasPrimaryColor: false),
            SizedBox(height: 1.h),
            CustomSocialButton(
                title: 'authorize_with_apple',
                icon: 'apple_icon.png',
                onTap: () {}),
            SizedBox(height: 4.h),
            GestureDetector(
                onTap: () => Get.to(() => MobileNumberInputScreen()),
                child: phoneNoView())
          ]))
    ])));
  }

  Widget phoneNoView() {
    return SizedBox(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Utils.customIcon(icon: 'phone_icon.png', width: 20, height: 20),
          const SizedBox(width: 10),
          Text('continue_with_phone_no'.tr,
              style: TextStyle(
                  color: PURBLE_COLOR,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp))
        ]));
  }
}
