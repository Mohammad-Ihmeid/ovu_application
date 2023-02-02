import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/journals_widget/custom_card_journals.dart';
import 'package:ovu_application/views/base/common/custom_logo_appbar.dart';
import 'package:ovu_application/views/screens/add_new_journals.dart';
import 'package:ovu_application/views/screens/journal_details.dart';
import 'package:sizer/sizer.dart';

class JournalsScreen extends StatelessWidget {
  const JournalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFB58CFF),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () => Get.to(() => const AddNewJournals()),
        ),
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h),
                        CustomLogoAppBar(title: 'my_journals'.tr),
                        SizedBox(height: 5.h),
                        GestureDetector(
                          onTap: () => Get.to(() => JournalDetailsScreen()),
                          child: CustomCardJournals(
                              titile: 'today'.tr,
                              subtitile: 'daily_reflection'.tr,
                              description: 'daily_reflection'.tr),
                        ),
                        Column(
                          children: [
                            CustomCardJournals(
                                titile: 'september'.tr,
                                subtitile: 'daily_reflection'.tr,
                                description: 'daily_reflection'.tr),
                            CustomCardJournals(
                                titile: 'september'.tr,
                                subtitile: 'daily_reflection'.tr,
                                description: 'daily_reflection'.tr),
                          ],
                        ),
                      ]),
                ))));
  }
}
