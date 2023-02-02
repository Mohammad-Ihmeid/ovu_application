import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/views/base/common/custom_back_icon.dart';
import 'package:sizer/sizer.dart';

class CustomAppBarView extends StatelessWidget {
  const CustomAppBarView({super.key, this.title = ''});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomBackIcon(),
      title.isEmpty
          ? Image.asset('${IMAGES_PATH}ovu.logo.png',
              width: 71, height: 22, color: PURBLE_COLOR)
          : Text(title.tr,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800)),
      SizedBox(width: 20)
    ]);
  }
}
