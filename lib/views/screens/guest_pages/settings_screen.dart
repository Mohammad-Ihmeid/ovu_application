import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/To_get_done_widget/custom_switch_settings.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/google_apple/customgoogle.dart';
import 'package:sizer/sizer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CustomAppBarView(title: 'settings'),
                        SizedBox(height: 1.h),
                        Text('connected_accounts'.tr, style: styleText()),
                        SizedBox(height: 1.h),
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
                        SizedBox(height: 1.h),
                        Text('syncing_options'.tr, style: styleText()),
                        SizedBox(height: 1.h),
                        CustomSwitchSettings(
                            title: 'apple_health', switchchanged: true),
                        SizedBox(height: 1.h),
                        Text('notifications'.tr, style: styleText()),
                        CustomSwitchSettings(title: 'pms', switchchanged: true),
                        CustomSwitchSettings(
                            title: 'period', switchchanged: false),
                        CustomSwitchSettings(
                            title: 'symptoms_reminder', switchchanged: true),
                        CustomSwitchSettings(
                            title: 'mood_check_reminder', switchchanged: true),
                        CustomSwitchSettings(
                            title: 'journaling_reminder', switchchanged: false),
                        CustomSwitchSettings(
                            title: 'due_date_for_tasks', switchchanged: false)
                      ]),
                ))));
  }

  TextStyle styleText() {
    return TextStyle(
        fontSize: 13.sp, fontWeight: FontWeight.w600, color: Color(0xFF909090));
  }
}
