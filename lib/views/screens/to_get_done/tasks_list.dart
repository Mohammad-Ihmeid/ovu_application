import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/To_get_done_widget/custom_checkbox.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';

class TasksListScreen extends StatefulWidget {
  const TasksListScreen({super.key});

  @override
  State<TasksListScreen> createState() => _TasksListScreenState();
}

class _TasksListScreenState extends State<TasksListScreen> {
  bool _showItem = false;
  bool _showdate = false;
  List<Map<String, dynamic>> to_get_done_items = [
    {
      'day': 'today',
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
      ],
    },
    {
      'day': 'yesterday',
      'incomplete': [
        {
          'checkBox': false,
          'title': 'clean_room',
          'task': 'I dont now',
          'color': Color(0xFFE2E2E2)
        }
      ],
      'completed': [
        {
          'checkBox': true,
          'title': 'travel_to_grandma!',
          'task': 'I dont now',
          'color': Color(0xFFFFC940)
        },
        {
          'checkBox': true,
          'title': 'finish_school',
          'task': 'I dont now',
          'color': Color(0xFFF74728)
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: to_get_done_items.length,
              itemBuilder: (ctx, main_index) {
                return ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Row(children: [
                        Text(to_get_done_items[main_index]['day'].toString().tr,
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF909090))),
                        SizedBox(width: 5),
                        to_get_done_items[main_index]['day'].toString() ==
                                'yesterday'
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (_showItem) {
                                      _showItem = false;
                                    } else {
                                      _showItem = true;
                                    }
                                  });
                                },
                                child: Image.asset(
                                    _showItem
                                        ? '${ICONS_PATH}arrow_down.png'
                                        : '${ICONS_PATH}arrow_up.png',
                                    width: 24,
                                    height: 24))
                            : Container()
                      ]),
                      SizedBox(height: 1.h),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: to_get_done_items[main_index]['incomplete']
                              .length,
                          itemBuilder: (cxc, incomplete_index) {
                            var inComplete = to_get_done_items[main_index]
                                    ['incomplete'][incomplete_index] ??
                                [];
                            return to_get_done_items[main_index]['day']
                                            .toString() ==
                                        'yesterday' &&
                                    _showItem
                                ? CustomCheckBox(
                                    title: inComplete['title'].toString(),
                                    color: inComplete['color'],
                                    states: inComplete['checkBox'])
                                : to_get_done_items[main_index]['day']
                                            .toString() ==
                                        'today'
                                    ? CustomCheckBox(
                                        title: inComplete['title'].toString(),
                                        color: inComplete['color'],
                                        states: inComplete['checkBox'])
                                    : Container();
                          }),
                      SizedBox(height: 1.h),
                      to_get_done_items[main_index]['day'].toString() ==
                                  'yesterday' &&
                              _showItem
                          ? Text('completed'.tr,
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                  color: GREEN_COLOR))
                          : to_get_done_items[main_index]['day'].toString() ==
                                  'today'
                              ? Text('completed'.tr,
                                  style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600,
                                      color: GREEN_COLOR))
                              : Container(),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:
                              to_get_done_items[main_index]['completed'].length,
                          itemBuilder: (cxc, completed_index) {
                            var inComplete = to_get_done_items[main_index]
                                    ['completed'][completed_index] ??
                                [];
                            return to_get_done_items[main_index]['day']
                                            .toString() ==
                                        'yesterday' &&
                                    _showItem
                                ? CustomCheckBox(
                                    title: inComplete['title'].toString(),
                                    color: inComplete['color'],
                                    states: inComplete['checkBox'])
                                : to_get_done_items[main_index]['day']
                                            .toString() ==
                                        'today'
                                    ? CustomCheckBox(
                                        title: inComplete['title'].toString(),
                                        color: inComplete['color'],
                                        states: inComplete['checkBox'])
                                    : Container();
                          }),
                      Divider(color: Color(0xFFE2E2E2), thickness: 1),
                      SizedBox(height: 1.h),
                    ]);
              }),
          SizedBox(height: 1.h),
          Row(children: <Widget>[
            Text('12 Aug 2022',
                style: TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600)),
            SizedBox(width: 3.w),
            GestureDetector(
                onTap: () {
                  setState(() {
                    if (_showdate) {
                      _showdate = false;
                    } else {
                      _showdate = true;
                    }
                  });
                },
                child: Image.asset(
                    _showdate
                        ? '${ICONS_PATH}arrow_down.png'
                        : '${ICONS_PATH}arrow_up.png',
                    width: 24,
                    height: 24))
          ]),
        ]);
  }
}
