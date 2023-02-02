import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/views/screens/guest_pages/terms_conditions_screen.dart';
import 'package:sizer/sizer.dart';

class TermsAndPrivacyView extends StatelessWidget {
  const TermsAndPrivacyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('by_continuing_you_agree_to_our'.tr,
            style: TextStyle(fontSize: 11.sp), textAlign: TextAlign.center),
        SizedBox(height: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('terms'.tr,
                style: TextStyle(color: PURBLE_COLOR, fontSize: 11.sp)),
            Text('and'.tr, style: TextStyle(fontSize: 11.sp)),
            GestureDetector(
              onTap: () {
                Get.to(() => TermsConditionsScreen());
              },
              child: Text('privacy_policy'.tr,
                  style: TextStyle(color: PURBLE_COLOR, fontSize: 11.sp)),
            )
          ],
        )
      ],
    );
  }
}
