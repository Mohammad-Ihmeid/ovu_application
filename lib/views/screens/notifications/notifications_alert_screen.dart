import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/views/base/common/custom_back_icon.dart';
import 'package:ovu_application/views/base/common/custom_button.dart';
import 'package:ovu_application/views/screens/statistical%20questions/birthday_screen.dart';
import 'package:sizer/sizer.dart';

class NotificationsAlertScreen extends StatelessWidget {
  const NotificationsAlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomBackIcon(),
                            Text('maybe_later'.tr,
                                style: TextStyle(
                                    color: PURBLE_COLOR,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600))
                          ]),
                      SizedBox(height: 40),
                      Image.asset("${IMAGES_PATH}notification_photo.png"),
                      SizedBox(height: 5.h),
                      Text('cycle_reminders'.tr,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center),
                      SizedBox(height: 2.h),
                      Text('allow_OVU._to_help_you_keep_track_of_your'.tr,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          textAlign: TextAlign.center),
                      Text('health_and_well-being_by_sending_timely'.tr,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.4)),
                          textAlign: TextAlign.center),
                      Text('tips_and_reminders-being_by_sending_timely'.tr,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.4)),
                          textAlign: TextAlign.center),
                      SizedBox(height: 5.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.w),
                          child: CustomButton(
                              title: 'allow_notifications',
                              icon: 'notification_icon.png',
                              onTap: () => Get.to(() => BirthdayScreen())))
                    ]))));
  }
}
