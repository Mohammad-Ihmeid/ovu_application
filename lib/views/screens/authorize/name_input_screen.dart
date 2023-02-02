import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_one_bottom_navigation_bar.dart';
import 'package:ovu_application/views/base/text_widget/custom_text_field_view.dart';
import 'package:ovu_application/views/screens/notifications/notifications_alert_screen.dart';
import 'package:sizer/sizer.dart';

class NameInputScreen extends StatelessWidget {
  const NameInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomAppBarView(),
                  SizedBox(height: 5.h),
                  Text('what_is_your_first_name_?'.tr,
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 24)),
                  SizedBox(height: 1.h),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('so_we_know_what_to_call_you'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14)),
                    SizedBox(width: 3.w),
                    Utils.customIcon(
                        icon: 'smile_icon.png', width: 20, height: 20)
                  ]),
                  SizedBox(height: 3.h),
                  CustomTextField(
                      controller: TextEditingController(),
                      hintText: 'first_name',
                      icon: Icons.abc,
                      suffixIcon: SizedBox(),
                      hasIcon: false),
                ],
              ),
            ),
            bottomNavigationBar: CustomBottomNavigationBarView(
                onTap: () => Get.to(() => NotificationsAlertScreen()))));
  }
}
