import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_appbar_text.dart';
import 'package:ovu_application/views/base/log_period_widget/custom_progress_indecator.dart';
import 'package:ovu_application/views/screens/log%20period/flow_type_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';
import '../../base/common/custom_button.dart';

class SymptomsScreen extends StatefulWidget {
  const SymptomsScreen({super.key});

  @override
  State<SymptomsScreen> createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {
  List<Map<String, Object>> _item = [
    {'title': 'painful_cramps', 'id': 0},
    {'title': 'PMS_ymptoms', 'id': 1},
    {'title': 'heavy_menstrual_flow', 'id': 2},
    {'title': 'mood_swings', 'id': 3},
    {'title': 'Other(s)', 'id': 4},
    {'title': 'nothing_bothers_me', 'id': 5},
  ];
  List _itemSelected = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      CustomAppBarView(),
                      SizedBox(height: 4.h),
                      CustomProgressIndecator(width: 1.7),
                      SizedBox(height: 4.h),
                      CustomAppbarText(
                          text1: 'symptoms_you\'re_experiencing',
                          text2: 'you_can_choose_multiple'),
                      SizedBox(height: 3.h),
                      listItems()
                    ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10),
                child: CustomButton(
                    title: 'next',
                    onTap: () => Get.to(() => FlowTypeScreen())))));
  }

  ListView listItems() {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: _item.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_item[index]['id'] == index) {
                    _itemSelected.contains(_item[index]['id'])
                        ? _itemSelected.remove(_item[index]['id'])
                        : _itemSelected.add(_item[index]['id']);
                  }
                });
              },
              child: Container(
                width: 318,
                height: 52,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color(0xFFE2E2E2), width: 0.5),
                    color: _itemSelected.contains(_item[index]['id'])
                        ? Color(0xFF5DD6A5)
                        : Color(0xFFF0F0F0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${_item[index]['title']}'.tr,
                      style: TextStyle(
                          color: _itemSelected.contains(_item[index]['id'])
                              ? Colors.white
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    _itemSelected.contains(_item[index]['id'])
                        ? Image.asset('${ICONS_PATH}completed_icon.png',
                            color: Colors.white)
                        : Container()
                  ],
                ),
              ),
            ),
            SizedBox(height: 1.h),
          ],
        );
      },
    );
  }
}
