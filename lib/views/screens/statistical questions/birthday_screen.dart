import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_button.dart';
import 'package:ovu_application/views/base/date_picker_widget/custom_date_picker.dart';
import 'package:ovu_application/views/screens/log%20period/completed_screen.dart';
import 'package:sizer/sizer.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
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
                      CustomAppBarView(),
                      SizedBox(height: 4.h),
                      Text('birthday_title'.tr,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      SizedBox(height: 35),
                      CustomDatePicker(),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: CustomButton(
                            title: 'finish',
                            onTap: () => Get.to(() => CompletedScreen(
                                  title: 'awesome',
                                  title2: 'second_badge',
                                  titleButtom: 'start_my_journey',
                                  icon: 'queen_girl.png',
                                  iconButtom: false,
                                  image: 'badge_image_birthday.png',
                                )),
                            icon: 'finish_icon.png'),
                      )
                    ]))));
  }
}
