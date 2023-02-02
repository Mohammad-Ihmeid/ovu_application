import 'package:flutter/material.dart';
import 'package:ovu_application/views/base/common/custom_back_icon.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AddNewJournals extends StatelessWidget {
  const AddNewJournals({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              SizedBox(height: 18),
              Row(
                children: [
                  CustomBackIcon(),
                  SizedBox(width: 30),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'tap_to_add_title'.tr,
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold)),
                  ))
                ],
              ),
              SizedBox(height: 18),
              Expanded(
                  child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: 'journal_hint'.tr,
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.sp)),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
