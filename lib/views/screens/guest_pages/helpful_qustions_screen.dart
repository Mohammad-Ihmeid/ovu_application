import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/data.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/search_widget/custom_search_field.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';

class HelpfulQustionScreen extends StatefulWidget {
  const HelpfulQustionScreen({super.key});

  @override
  State<HelpfulQustionScreen> createState() => _HelpfulQustionScreenState();
}

class _HelpfulQustionScreenState extends State<HelpfulQustionScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
                    child: Column(children: <Widget>[
                      CustomAppBarView(title: 'helpful_qustions'),
                      SizedBox(height: 3.h),
                      CustomSearchField(
                          controller: controller,
                          hintText: 'know_about',
                          icon: Icons.ac_unit_outlined,
                          suffixIcon: Icon(Icons.search)),
                      SizedBox(height: 3.h),
                      ...Data.questionslist.map((e) {
                        return Column(children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(e.question.tr,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600)),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        e.iconshow = !e.iconshow;
                                      });
                                    },
                                    icon: e.iconshow
                                        ? Image.asset('${ICONS_PATH}minus.png')
                                        : Image.asset('${ICONS_PATH}add.png'))
                              ]),
                          Visibility(
                              visible: e.iconshow,
                              child: Text(e.answare.tr,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 8.sp,
                                      color: Colors.grey[400]))),
                          Divider(color: Colors.black, thickness: 2)
                        ]);
                      })
                    ])))));
  }
}
