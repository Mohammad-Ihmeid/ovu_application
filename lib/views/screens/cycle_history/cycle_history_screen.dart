import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/cycle_hestory_widget/custom_cycle_containar.dart';
import 'package:ovu_application/views/base/cycle_hestory_widget/custom_cycle_overview.dart';
import 'package:sizer/sizer.dart';

class CycleHistoryScreen extends StatelessWidget {
  const CycleHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child:
                    ListView(physics: const BouncingScrollPhysics(), children: [
                  CustomAppBarView(title: 'cycle_history'),
                  SizedBox(height: 5.h),
                  Text('cycle_analytics'.tr,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Expanded(
                      child: CustomButtonCc(
                          title: 'cycle_history'.tr,
                          number: '28',
                          onTap: () {}),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        child: CustomButtonCc(
                            title: 'PMS', number: '2.5', onTap: () {})),
                    SizedBox(width: 10),
                    Expanded(
                      child: CustomButtonCc(
                          title: 'period_length'.tr, number: '4', onTap: () {}),
                    ),
                  ]),
                  CustomCycleOverView(
                      titile1: 'mood'.tr,
                      titile2: 'symptoms'.tr,
                      titile3: 'menstrual_flow'.tr,
                      titile4: 'other'.tr,
                      titile5: 'note'.tr,
                      subtitile2: 'cramps_mood_swings_Breast_tenderness'.tr,
                      subtitile1: 'you_felt_good'.tr,
                      subtitile3: 'medium_flow'.tr,
                      subtitile4: 'travel_high_activity'.tr,
                      subtitile5: 'all_went_well'.tr),
                  CustomCycleOverView(
                      titile1: 'mood'.tr,
                      titile2: 'symptoms'.tr,
                      titile3: 'menstrual_flow'.tr,
                      titile4: 'other'.tr,
                      titile5: 'note'.tr,
                      subtitile2: 'cramps_mood_swings_Breast_tenderness'.tr,
                      subtitile1: 'you_felt_good'.tr,
                      subtitile3: 'medium_flow'.tr,
                      subtitile4: 'travel_high_activity'.tr,
                      subtitile5: 'all_went_well'.tr),
                ]))));
  }
}
