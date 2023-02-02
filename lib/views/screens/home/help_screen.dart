import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/views/base/common/custom_button.dart';
import 'package:ovu_application/views/base/text_widget/custom_text_button.dart';
import 'package:sizer/sizer.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  List _itemSelected = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Scaffold(
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
        Text('help'.tr,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w800)),
        SizedBox(height: 5.h),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Text('Symptoms_experiencing'.tr,
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600)),
              SizedBox(height: 1.h),
              Text('multiple_options'.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[300])),
              SizedBox(height: 5.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BottomSelected(title: 'cramps', id: 0),
                    SizedBox(width: 1.w),
                    BottomSelected(title: 'skin_changes', id: 1)
                  ]),
              SizedBox(height: 1.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BottomSelected(title: 'breast_tenderness', id: 2),
                    SizedBox(width: 1.w),
                    BottomSelected(title: 'sleeping_issues', id: 3)
                  ]),
              SizedBox(height: 1.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BottomSelected(title: 'crying', id: 4),
                    SizedBox(width: 1.w),
                    BottomSelected(title: 'mood_swings', id: 5),
                    SizedBox(width: 1.w),
                    BottomSelected(title: 'fatigue', id: 6)
                  ]),
              SizedBox(height: 1.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BottomSelected(title: 'food_cravings', id: 7),
                    SizedBox(width: 1.w),
                    BottomSelected(title: 'headache', id: 8)
                  ]),
              SizedBox(height: 1.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BottomSelected(title: 'poor_concentration', id: 9),
                    SizedBox(width: 1.w),
                    BottomSelected(title: 'social_withdrawal', id: 10)
                  ]),
              SizedBox(height: 1.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BottomSelected(title: 'physical_pain', id: 11),
                    SizedBox(width: 1.w),
                    BottomSelected(title: 'bowel_issues', id: 12)
                  ]),
              SizedBox(height: 1.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[BottomSelected(title: 'other', id: 13)]),
              SizedBox(height: 5.h),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomButton(title: 'show_suggestions', onTap: () {})),
              SizedBox(height: 2.5.h),
              CustomTextButton(text: 'talk_to_specialist')
            ],
          ),
        )
      ])),
    ));
  }

  GestureDetector BottomSelected({required int id, required String title}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_itemSelected.contains(id)) {
            _itemSelected.remove(id);
          } else {
            _itemSelected.add(id);
          }
        });
      },
      child: Container(
          decoration: BoxDecoration(
              color: _itemSelected.contains(id) ? PRIMARY_green : Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: _itemSelected.contains(id)
                      ? PRIMARY_green
                      : Color.fromARGB(255, 144, 141, 141))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title.tr,
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: _itemSelected.contains(id)
                        ? Colors.white
                        : Colors.grey[400])),
          )),
    );
  }
}
