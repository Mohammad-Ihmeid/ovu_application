import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/common/custom_back_icon.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CustomLogoAppBar extends StatelessWidget {
  CustomLogoAppBar({
    super.key,
    this.iconData,
    required this.title,
  });

  IconData? iconData;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(onTap: () => (Get.back()), child: CustomBackIcon()),
            SizedBox(width: 3.w),
            Text(title!,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
          ])
    ]);
  }
}
