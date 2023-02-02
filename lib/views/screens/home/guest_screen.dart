import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/screens/guest_pages/helpful_qustions_screen.dart';
import 'package:ovu_application/views/screens/guest_pages/settings_screen.dart';
import 'package:ovu_application/views/screens/language/language_screen.dart';
import 'package:ovu_application/views/screens/cycle_history/cycle_history_screen.dart';
import 'package:ovu_application/views/screens/profile/edit_profile_screen.dart';
import 'package:ovu_application/views/screens/profile/journal_screen.dart';
import 'package:ovu_application/views/screens/to_get_done/my_cycle_details_screen.dart';
import 'package:ovu_application/views/screens/to_get_done/tasks_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';

class GuestSceen extends StatelessWidget {
  const GuestSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child:
                    ListView(physics: const BouncingScrollPhysics(), children: <
                        Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset('${ICONS_PATH}plus_guest_icon.png',
                            width: 75, height: 35),
                        Expanded(
                          child: Image.asset('${ICONS_PATH}profile_icon.png',
                              width: 48, height: 48),
                        ),
                        GestureDetector(
                            onTap: () => Get.to(EditProfileScreen()),
                            child: Container(
                              width: 50,
                              child: Image.asset(
                                  '${ICONS_PATH}edit_profile_icon.png',
                                  width: 24,
                                  height: 24),
                            )),
                      ]),
                  SizedBox(height: 1.h),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                              colors: [Colors.white, Color(0xFFF3F3F3)])),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: <Widget>[
                            Image.asset('${ICONS_PATH}badges_icon_2.png',
                                width: 80, height: 107.14),
                            SizedBox(width: 5.w),
                            Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('you_earned_your_first_badge'.tr,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 1.h),
                                    Text(
                                        'keep_using_OVU._and_invite_your_friends_to_earn_more_badges'
                                            .tr,
                                        style: TextStyle(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFA2A2A2))),
                                    SizedBox(height: 1.h),
                                    Row(children: <Widget>[
                                      Image.asset(
                                          '${ICONS_PATH}person_icon.png',
                                          width: 18,
                                          height: 12),
                                      SizedBox(width: 3.w),
                                      Text('invite_my_friends'.tr,
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: PURBLE_COLOR))
                                    ])
                                  ]),
                            )
                          ]))),
                  SizedBox(height: 2.h),
                  Image.asset('${ICONS_PATH}divider_icon.png',
                      color: Color(0xFFA2A2A2)),
                  SizedBox(height: 2.h),
                  textList(title: 'my_stuff'),
                  SizedBox(height: 3.h),
                  GestureDetector(
                      onTap: () =>
                          Get.to(() => TaskScreen(restorationId: 'main')),
                      child: itemsList(
                          title: 'to_get_done', icon: 'list_icon.png')),
                  SizedBox(height: 3.h),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => MyCycleDetailsScreen(screeen: false));
                      },
                      child: itemsList(title: 'my_moods', icon: 'emoji.png')),
                  SizedBox(height: 3.h),
                  GestureDetector(
                      onTap: () => Get.to(() => JournalsScreen()),
                      child: itemsList(
                          title: 'my_journals', icon: 'file_icon.png')),
                  SizedBox(height: 3.h),
                  itemsList(title: 'saved', icon: 'bookmark_icon.png'),
                  SizedBox(height: 3.h),
                  GestureDetector(
                    onTap: () => Get.to(() => CycleHistoryScreen()),
                    child: itemsList(
                        title: 'cycle_history', icon: 'drops_heavy_icon.png'),
                  ),
                  SizedBox(height: 2.h),
                  Image.asset('${ICONS_PATH}divider_icon.png',
                      color: Color(0xFFA2A2A2)),
                  SizedBox(height: 2.h),
                  textList(title: 'settings'),
                  SizedBox(height: 2.h),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const LanguageScreen(screen: true));
                    },
                    child: itemsList(
                        title: 'change_language',
                        icon: 'chat_icon.png',
                        titleEnd: 'english',
                        color: PRIMARY_green),
                  ),
                  SizedBox(height: 2.h),
                  itemsList(
                      title: 'app_settings',
                      icon: 'settings_icon.png',
                      titleEnd: 'english',
                      bottomShow: true,
                      onTap: () {
                        Get.to(() => SettingsScreen());
                      },
                      color: PRIMARY_green),
                  SizedBox(height: 2.h),
                  Image.asset('${ICONS_PATH}divider_icon.png',
                      color: Color(0xFFA2A2A2)),
                  SizedBox(height: 2.h),
                  textList(title: 'contact'),
                  SizedBox(height: 2.h),
                  itemsList(
                      title: 'need_help',
                      icon: 'chat_icon.png',
                      bottomShow: true,
                      color: Colors.black),
                  SizedBox(height: 2.h),
                  itemsList(
                      title: 'helpful_qustions',
                      icon: 'question_icon.png',
                      bottomShow: true,
                      onTap: () {
                        Get.to(() => HelpfulQustionScreen());
                      },
                      color: Colors.black),
                  SizedBox(height: 2.h),
                  itemsList(
                      title: 'rate_our_app',
                      icon: 'star_list_icon.png',
                      titleEnd: '',
                      color: Colors.black),
                  SizedBox(height: 2.h),
                  itemsList(
                      title: 'Invite_friend',
                      icon: 'person_icon.png',
                      titleEnd: '',
                      color: Colors.black),
                  SizedBox(height: 2.h),
                  Text('App version 1.13.33',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFBBBBBB)))
                ]))));
  }

  Text textList({required String title}) {
    return Text(title.tr,
        style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w800,
            color: Colors.grey[400]));
  }

  Row itemsList(
      {required String icon,
      required String title,
      Function()? onTap,
      String titleEnd = '0_tasks',
      Color color = PURBLE_COLOR,
      bool bottomShow = false}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(children: <Widget>[
            Image.asset(
              '${ICONS_PATH + icon}',
              color: color,
              width: 21,
              height: 21,
            ),
            SizedBox(width: 3.w),
            Text(title.tr,
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500))
          ]),
          bottomShow
              ? GestureDetector(
                  onTap: onTap,
                  child: Icon(Icons.arrow_forward_ios),
                )
              : Text(titleEnd.tr,
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFBBBBBB)))
        ]);
  }
}
