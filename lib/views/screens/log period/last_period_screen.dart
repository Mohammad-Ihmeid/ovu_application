import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_appbar_text.dart';
import 'package:ovu_application/views/base/date_picker_widget/custom_date_picker.dart';
import 'package:ovu_application/views/base/log_period_widget/custom_progress_indecator.dart';
import 'package:ovu_application/views/screens/log%20period/cycle_type_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';
import '../../base/common/custom_one_bottom_navigation_bar.dart';

class LastPeriodScreen extends StatefulWidget {
  const LastPeriodScreen({super.key});

  @override
  State<LastPeriodScreen> createState() => _LastPeriodScreenState();
}

class _LastPeriodScreenState extends State<LastPeriodScreen> {
  bool _checkvalue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: ListView(children: <Widget>[
                  CustomAppBarView(),
                  SizedBox(height: 4.h),
                  CustomProgressIndecator(width: 5),
                  SizedBox(height: 4.h),
                  CustomAppbarText(
                      text1: 'last_period_starting_date',
                      text2: 'select_“I\'m_not_sure”_if_you_don\'t_remember'),
                  CustomDatePicker(),
                  SizedBox(height: 3.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Checkbox(
                            activeColor: GREEN_COLOR,
                            value: _checkvalue,
                            onChanged: ((value) {
                              setState(() {
                                _checkvalue = value!;
                              });
                            })),
                        Text('i\'m_not_sure'.tr,
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w600))
                      ])
                ])),
            bottomNavigationBar: CustomBottomNavigationBarView(
                onTap: () => Get.to(() => CicleTypeScreen()))));
  }
}
