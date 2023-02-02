import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/data.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                elevation: 1,
                backgroundColor: Colors.white,
                title: Text('terms_conditions'.tr,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.black)),
                centerTitle: true,
                leading: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Image.asset('${ICONS_PATH}cancel.png'))),
            body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('welcome_to'.tr,
                            style: TextStyle(
                                fontSize: 10.sp, fontWeight: FontWeight.w700)),
                        SizedBox(height: 1.h),
                        Text('these_terms_and_conditions'.tr,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Inter',
                                color: Color(0xA61F1F1F))),
                        SizedBox(height: 2.h),
                        ...Data.termsConditions.map((e) {
                          return Column(children: <Widget>[
                            SizedBox(height: 1.h),
                            Row(children: <Widget>[
                              Text(e.number + '-',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(width: 4),
                              Text(e.headline.tr,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700))
                            ]),
                            SizedBox(height: 1.h),
                            Text(e.suptitle.tr,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xA61F1F1F)))
                          ]);
                        })
                      ]),
                ))));
  }
}
