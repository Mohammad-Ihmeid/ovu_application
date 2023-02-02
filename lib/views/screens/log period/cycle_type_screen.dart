import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_appbar_text.dart';
import 'package:ovu_application/views/base/log_period_widget/custom_bottom_select.dart';
import 'package:ovu_application/views/base/common/custom_button.dart';
import 'package:ovu_application/views/base/log_period_widget/custom_progress_indecator.dart';
import 'package:ovu_application/views/screens/log%20period/symptoms_screen.dart';
import 'package:sizer/sizer.dart';

class CicleTypeScreen extends StatefulWidget {
  const CicleTypeScreen({super.key});

  @override
  State<CicleTypeScreen> createState() => _CicleTypeScreenState();
}

class _CicleTypeScreenState extends State<CicleTypeScreen> {
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
                      CustomAppBarView(),
                      SizedBox(height: 4.h),
                      CustomProgressIndecator(width: 2.5),
                      SizedBox(height: 4.h),
                      CustomAppbarText(
                          text1: 'is_your_menstural_cycle_regular_?',
                          text2: '(regular:_not_more_than_7_days)'),
                      SizedBox(height: 3.h),
                      CustomBottomSelected(
                          title: 'regular_cycle',
                          icon: 'cycle_screen_icon1.png',
                          id: 0),
                      SizedBox(height: 2.h),
                      CustomBottomSelected(
                          title: 'irregular_cycle',
                          id: 1,
                          icon: 'cycle_screen_icon2.png'),
                      SizedBox(height: 2.h),
                      CustomBottomSelected(title: 'i\'m_not_sure', id: 2)
                    ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 6.h),
                child: CustomButton(
                    title: 'next',
                    onTap: () => Get.to(() => SymptomsScreen())))));
  }
}
