import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_one_bottom_navigation_bar.dart';
import 'package:ovu_application/views/base/login_wiget/custom_phone_number.dart';
import 'package:ovu_application/views/screens/authorize/otp_screen.dart';
import 'package:sizer/sizer.dart';

class MobileNumberInputScreen extends StatelessWidget {
  const MobileNumberInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: ListView(physics: BouncingScrollPhysics(), children: [
                  CustomAppBarView(),
                  SizedBox(height: 5.h),
                  Text('enter_your_phone_numbert'.tr,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 24)),
                  SizedBox(height: 1.h),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('we_will_text_you_a_verification_code'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFFA2A2A2))),
                    SizedBox(width: 5),
                    Utils.customIcon(
                        icon: 'mobile_icon.png', width: 20, height: 20)
                  ]),
                  SizedBox(height: 3.h),
                  CustomPhoneNumberField()
                ])),
            bottomNavigationBar: CustomBottomNavigationBarView(
                onTap: () => Get.to(() => OtpScreen()))));
  }
}
