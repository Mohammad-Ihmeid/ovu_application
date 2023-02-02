import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:ovu_application/views/base/To_get_done_widget/custom_checkbox.dart';
import 'package:ovu_application/views/base/date_picker_widget/custom_date_picker.dart';
import 'package:ovu_application/views/screens/to_get_done/my_cycle_details_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../helper/constants.dart';

class TasksCalenderScreen extends StatefulWidget {
  const TasksCalenderScreen({super.key});

  @override
  State<TasksCalenderScreen> createState() => _TasksCalenderScreenState();
}

class _TasksCalenderScreenState extends State<TasksCalenderScreen> {
  CalendarFormat _format = CalendarFormat.week;
  List<Map<String, dynamic>> _listItem = [
    {'text1': 'mood', 'text2': 'You_felt_good'},
    {'text1': 'symptoms', 'text2': 'cramps_mood_swings'},
    {'text1': 'menstrual_flow', 'text2': 'medium_flow'},
    {'text1': 'other', 'text2': 'travel_high_activity'},
    {'text1': 'note', 'text2': 'all_went_well'},
  ];
  List<Map<String, dynamic>> _list = [
    {
      'task': 'my_tasks',
      'incomplete': [
        {
          'checkBox': false,
          'title': 'clean_room',
          'task': 'I dont now',
          'color': Color(0xFFE2E2E2)
        },
        {
          'checkBox': false,
          'title': 'call_sarah',
          'task': 'I dont now',
          'color': Color(0xFF0D6EFD)
        },
        {
          'checkBox': false,
          'title': 'travel_to_grandma!',
          'task': 'I dont now',
          'color': Color(0xFFFFC940)
        }
      ],
      'completed': [
        {
          'checkBox': true,
          'title': 'finish_school',
          'task': 'I dont now',
          'color': Color(0xFFF74728)
        }
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: _list.length,
        itemBuilder: (ctx, main_index) {
          return ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Stack(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CustomDatePicker(format: _format),
                  ),
                  Positioned(
                    right: 0,
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_format == CalendarFormat.week) {
                              _format = CalendarFormat.month;
                            } else {
                              _format = CalendarFormat.week;
                            }
                          });
                        },
                        child: Image.asset(
                            _format == CalendarFormat.week
                                ? '${ICONS_PATH}arrow_up.png'
                                : '${ICONS_PATH}arrow_down.png',
                            width: 24,
                            height: 24)),
                  ),
                ]),
                SizedBox(height: 1.h),
                Text(_list[main_index]['task'].toString().tr,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF909090))),
                SizedBox(height: 1.h),
                ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: _list[main_index]['incomplete'].length,
                    itemBuilder: (cxc, index) {
                      return CustomCheckBox(
                          title: _list[main_index]['incomplete'][index]['title']
                              .toString(),
                          color: _list[main_index]['incomplete'][index]
                              ['color'],
                          states: _list[main_index]['incomplete'][index]
                              ['checkBox']);
                    }),
                SizedBox(height: 1.h),
                Text('completed'.tr,
                    style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        color: GREEN_COLOR)),
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _list[main_index]['completed'].length,
                    itemBuilder: (cxc, completed_index) {
                      var inComplete =
                          _list[main_index]['completed'][completed_index] ?? [];
                      return CustomCheckBox(
                          title: inComplete['title'].toString(),
                          color: inComplete['color'],
                          states: inComplete['checkBox']);
                    }),
                SizedBox(height: 1.h),
                Text('my_journals'.tr,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF909090))),
                SizedBox(height: 1.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 104,
                      height: 16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          gradient: LinearGradient(
                              colors: [Color(0x52E7F7EF), Color(0xB8E7F7EF)])),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          gradient: LinearGradient(
                              colors: [Color(0x4DE7F7EF), Color(0xFFE7F7EF)])),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: ListView(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            children: <Widget>[
                              Row(children: <Widget>[
                                Image.asset('${ICONS_PATH}calendar_icon.png',
                                    color: PRIMARY_green,
                                    width: 16,
                                    height: 16),
                                SizedBox(width: 10),
                                Text('4 Aug 2022',
                                    style: TextStyle(
                                        color: PRIMARY_green,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(width: 20),
                                Image.asset('${ICONS_PATH}time_icon.png',
                                    color: PRIMARY_green,
                                    width: 16,
                                    height: 16),
                                SizedBox(width: 10),
                                Text('2:22 AM',
                                    style: TextStyle(
                                        color: PRIMARY_green,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500)),
                              ]),
                              SizedBox(height: 2.h),
                              Text('my_emotion'.tr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14)),
                              SizedBox(height: 1.h),
                              Text('there_are_many_variations'.tr,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500))
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Text('my_cycle'.tr,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF909090))),
                SizedBox(height: 1.h),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: GradientBoxBorder(
                          gradient: LinearGradient(
                              colors: [Color(0xFFF8F5FF), Color(0x80F8F5FF)]),
                          width: 2),
                      gradient: LinearGradient(
                          colors: [Color(0x00F8F5FF), Color(0xFFF8F5FF)])),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(children: [
                            Image.asset('${ICONS_PATH}calendar_fill_icon.png',
                                color: Colors.black, width: 16, height: 16),
                            SizedBox(width: 10),
                            Text('14 Sep-17 Sep',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600))
                          ]),
                          SizedBox(height: 1.h),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: _listItem.length,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (ctx, index) {
                                return ListView(
                                    shrinkWrap: true,
                                    physics: BouncingScrollPhysics(),
                                    children: <Widget>[
                                      Text(
                                          _listItem[index]['text1']
                                              .toString()
                                              .tr,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: PURBLE_COLOR)),
                                      Text(
                                          _listItem[index]['text2']
                                              .toString()
                                              .tr,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(height: 1.h)
                                    ]);
                              }),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Get.to(() => MyCycleDetailsScreen());
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('view_full_details'.tr,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: PURBLE_COLOR)),
                                SizedBox(width: 5),
                                GetStorage().read('lng') == "English"
                                    ? Image.asset(
                                        '${ICONS_PATH}arrow_forward.png',
                                        color: PURBLE_COLOR,
                                        width: 18,
                                        height: 18)
                                    : Image.asset('${ICONS_PATH}arrow_back.png',
                                        color: PURBLE_COLOR,
                                        width: 18,
                                        height: 18)
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              ]);
        });
  }
}
