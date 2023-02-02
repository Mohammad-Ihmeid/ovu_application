import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/common/custom_button.dart';
import 'package:ovu_application/views/base/common/custom_logo_appbar.dart';
import 'package:ovu_application/views/base/profile_widget/custom_widget_profile.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child:
                    ListView(physics: const BouncingScrollPhysics(), children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomLogoAppBar(title: 'my_badges'.tr),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          CustomWidget(
                              titile: 'created'.tr, subtitile: 'profile'.tr),
                          CustomWidget(
                              titile: 'created'.tr, subtitile: 'profile'.tr),
                          CustomWidget(
                              titile: 'created'.tr, subtitile: 'profile'.tr)
                        ]),
                        Column(children: [
                          CustomWidget(
                              titile: 'created'.tr, subtitile: 'profile'.tr),
                          CustomWidget(
                              titile: 'created'.tr, subtitile: 'profile'.tr),
                          CustomWidget(
                              titile: 'created'.tr, subtitile: 'profile'.tr)
                        ]),
                        Column(children: [
                          CustomWidget(
                              titile: 'created'.tr, subtitile: 'profile'.tr),
                          CustomWidget(
                              titile: 'created'.tr, subtitile: 'profile'.tr),
                          CustomWidget(
                              titile: 'created'.tr, subtitile: 'profile'.tr)
                        ])
                      ]),
                  SizedBox(height: 5.h),
                  Center(
                      child: Text('keep_using_and_invite_your'.tr,
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                  Center(
                      child: Text('friends_to_earn_more_badges'.tr,
                          style: const TextStyle(fontWeight: FontWeight.bold))),
                  Center(
                      child: SizedBox(
                          width: 60.w,
                          child: CustomButton(
                              onTap: () {}, title: 'invite_my_friends'.tr)))
                ]))));
  }
}
