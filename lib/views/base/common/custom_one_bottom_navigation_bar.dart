import 'package:flutter/material.dart';
import 'package:ovu_application/views/base/common/custom_button.dart';
import 'package:ovu_application/views/base/common/terms_and_privacy_view.dart';
import 'package:sizer/sizer.dart';

class CustomBottomNavigationBarView extends StatelessWidget {
  const CustomBottomNavigationBarView(
      {super.key, this.title = 'next', required this.onTap});

  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: CustomButton(title: title, onTap: onTap)),
          SizedBox(height: 1.5.h),
          TermsAndPrivacyView(),
          SizedBox(height: 1.5.h)
        ]);
  }
}
