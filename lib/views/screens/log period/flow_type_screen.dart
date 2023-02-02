import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_appbar_text.dart';
import 'package:ovu_application/views/base/log_period_widget/custom_bottom_select.dart';
import 'package:ovu_application/views/base/log_period_widget/custom_progress_indecator.dart';
import 'package:ovu_application/views/screens/log%20period/completed_screen.dart';
import 'package:sizer/sizer.dart';

import '../../base/common/custom_button.dart';

class FlowTypeScreen extends StatelessWidget {
  const FlowTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      CustomAppBarView(),
                      SizedBox(height: 3.h),
                      CustomProgressIndecator(width: 1),
                      SizedBox(height: 4.h),
                      CustomAppbarText(
                          text1: 'your_menstrual_flow type',
                          text2: 'what_type_of_flows_you_notice_more'),
                      CustomBottomSelected(
                          title: 'light_flow', id: 0, icon: 'water_icon.png'),
                      SizedBox(height: 2.h),
                      CustomBottomSelected(
                          title: 'medium_flow',
                          id: 1,
                          icon: 'water_medium_icon.png'),
                      SizedBox(height: 2.h),
                      CustomBottomSelected(
                          title: 'heavy_flow',
                          id: 2,
                          icon: 'water_heavy_flow_icon.png'),
                      SizedBox(height: 2.h),
                      CustomBottomSelected(title: 'i\'m_not_sure', id: 3)
                    ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 6.h),
                child: CustomButton(
                    icon: 'finish_icon.png',
                    title: 'finish',
                    onTap: () => Get.to(() => CompletedScreen(
                          icon: 'star_icon.png',
                          title: 'Wehoo!',
                          title2: 'you_earned_your_first_badge',
                          titleButtom: 'get_started',
                          iconButtom: true,
                          image: 'badge_image.png',
                        ))))));
  }
}
