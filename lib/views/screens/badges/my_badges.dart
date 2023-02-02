import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/data.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_button_view.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';

class MyBadges extends StatelessWidget {
  const MyBadges({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
                  CustomAppBarView(title: 'my_badges'),
                  SizedBox(height: 3.h),
                  GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 150,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 10),
                      children: Data.items.map((e) {
                        return Stack(children: <Widget>[
                          Positioned(
                            top: 10,
                            left: 1,
                            right: 1,
                            child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: e.color),
                                child: Center(
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(e.title.tr,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: e.colorText,
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                      color: Colors.white),
                                                  child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Center(
                                                          child: Image.asset(
                                                              e.image,
                                                              width: 50,
                                                              height: 50))))
                                            ])))),
                          ),
                          Positioned(
                            top: 0,
                            right: 10,
                            left: 10,
                            child: Container(
                                alignment: Alignment.topCenter,
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: e.color,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black, blurRadius: 2)
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                      '${ICONS_PATH}completed_icon.png',
                                      width: 20,
                                      height: 20),
                                )),
                          )
                        ]);
                      }).toList()),
                  SizedBox(height: 3.h),
                  Text('earn_more_badges'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600))
                ]))),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: CustomButton(title: 'invite_my_friends', onTap: () {}),
            )));
  }
}
