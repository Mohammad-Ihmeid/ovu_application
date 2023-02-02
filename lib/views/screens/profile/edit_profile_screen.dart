import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/common/custom_button.dart';
import 'package:ovu_application/views/base/google_apple/customgoogle.dart';
import 'package:ovu_application/views/base/login_wiget/custom_phone_number.dart';
import 'package:ovu_application/views/base/text_widget/custom_text_field_view.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => Get.back(),
                              child: Text(
                                'cancel'.tr,
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red[400]),
                              ),
                            ),
                            Text('edit_Profile'.tr,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w800)),
                            SizedBox(width: 20),
                          ]),
                      SizedBox(height: 2.h),
                      Center(
                          child: Container(
                              width: 88,
                              height: 88,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Stack(children: <Widget>[
                                Image.asset('${ICONS_PATH}profile_icon.png',
                                    fit: BoxFit.fill),
                                Container(
                                    width: 88,
                                    height: 88,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0x7A000000))),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 17),
                                    child: Center(
                                        child: Image.asset(
                                            '${ICONS_PATH}camera_icon.png',
                                            width: 32,
                                            height: 32)))
                              ]))),
                      SizedBox(height: 2.h),
                      Text('first_name'.tr,
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w400)),
                      SizedBox(height: 1.h),
                      CustomTextField(
                        controller: TextEditingController(),
                        textalign: TextAlign.start,
                        hintText: 'yara',
                        textcolor: Colors.black,
                        icon: Icons.abc,
                        suffixIcon: SizedBox(),
                      ),
                      SizedBox(height: 2.h),
                      Text('mobile_no'.tr,
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w400)),
                      SizedBox(height: 1.h),
                      CustomPhoneNumberField(),
                      SizedBox(height: 4.h),
                      Text('connected_accounts'.tr,
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0x591F1F1F))),
                      SizedBox(height: 2.h),
                      CustomGoogle(
                        title: 'google',
                        image: 'google_icon.png',
                        connected: false,
                      ),
                      SizedBox(height: 2.h),
                      CustomGoogle(
                          title: 'apple',
                          image: 'apple_icon.png',
                          connected: true),
                    ])),
            floatingActionButton: Padding(
              padding: const EdgeInsets.all(50),
              child: CustomButton(
                title: 'save',
                onTap: () => Get.back(),
                iconShow: false,
              ),
            )));
  }
}
