import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:ovu_application/views/base/date_picker_widget/custom_date_picker.dart';
import 'package:ovu_application/views/base/text_widget/custom_text_button.dart';
import 'package:ovu_application/views/screens/badges/my_badges.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

import '../log period/last_period_screen.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${'ahlan'.tr} Yara",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 2),
                          Text('welcome_back'.tr,
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w800))
                        ]),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => MyBadges());
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: YELLOW_COLOR,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              child: Row(children: [
                                Utils.customIcon(
                                    icon: 'level_icon.png',
                                    width: 20,
                                    height: 20),
                                SizedBox(width: 10),
                                Text('13',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))
                              ]))),
                    )
                  ]),
              SizedBox(height: 5.h),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    CircularPercentIndicator(
                        arcBackgroundColor: Color(0xFFF2ECFF),
                        arcType: ArcType.FULL_REVERSED,
                        radius: 80.sp,
                        percent: 0.60,
                        lineWidth: 20,
                        circularStrokeCap: CircularStrokeCap.round,
                        linearGradient: LinearGradient(
                            colors: [Color(0xFF9C2C19), Color(0xFFDC3F23)]),
                        center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('period_in'.tr,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFBF361E))),
                              SizedBox(height: 1.h),
                              Text('6_days'.tr,
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(height: 2.h),
                              GestureDetector(
                                onTap: () => Get.to(() => LastPeriodScreen()),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border:
                                          Border.all(color: Color(0xFFF2ECFF))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text('log_Period'.tr,
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700,
                                            color: PURBLE_COLOR)),
                                  ),
                                ),
                              ),
                            ])),
                    SizedBox(height: 50),
                    Text('today_first_task'.tr,
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp)),
                    SizedBox(height: 10),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade100),
                        child: Padding(
                            padding: EdgeInsets.all(18),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Icon(Icons.check_box_outline_blank_rounded,
                                        color: Colors.black),
                                    SizedBox(width: 15),
                                    Text('call_sarah'.tr)
                                  ]),
                                  Utils.customIcon(
                                      icon: 'boobmark_selected.png',
                                      width: 20,
                                      height: 20)
                                ]))),
                    SizedBox(height: 10),
                    CustomDatePicker(),
                    SizedBox(height: 20),
                    CustomTextButton(text: 'view_full_calendar'),
                    SizedBox(height: 40),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
