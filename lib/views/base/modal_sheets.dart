import 'package:flutter/material.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:ovu_application/views/base/common/custom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class CustomModalSheets {
  static Future<void> filterExploreSheet({required context}) async {
    List<Map<String, dynamic>> pupulars = [
      {
        'text': 'Newly added • 8',
        'selected': false,
      },
      {
        'text': 'Most watched • 55',
        'selected': false,
      }
    ];
    List<Map<String, dynamic>> types = [
      {
        'text': 'Videos • 55',
        'selected': false,
      },
      {
        'text': 'Articles • 13',
        'selected': false,
      }
    ];
    List<Map<String, dynamic>> durations = [
      {
        'text': '30 Seconds or less • 88',
        'selected': false,
      },
      {
        'text': '1 Minute • 31',
        'selected': false,
      },
      {
        'text': 'Less than 2 minutes • 8',
        'selected': false,
      },
      {
        'text': 'Less than 5 minutes • 3',
        'selected': false,
      },
      {
        'text': 'More than 5 minutes • 24',
        'selected': false,
      }
    ];
    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        builder: (ctx) {
          return StatefulBuilder(builder: (ctx, setState) {
            return Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 60,
                            height: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: PURBLE_COLOR)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('filters'.tr,
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20.sp)),
                        Text('clear_all'.tr,
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp)),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text('popular_filters'.tr,
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 20),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: pupulars.length,
                        itemBuilder: (context, index) {
                          var pupular = pupulars[index];
                          return SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(pupular['text'],
                                    style: TextStyle(fontSize: 11.sp)),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      pupular['selected'] =
                                          !pupular['selected'];
                                    });
                                  },
                                  child: Icon(
                                      pupular['selected']
                                          ? Icons.check_box
                                          : Icons.check_box_outline_blank,
                                      color: pupular['selected']
                                          ? PURBLE_COLOR
                                          : Colors.black,
                                      size: 20.sp),
                                )
                              ],
                            ),
                          );
                        }),
                    Divider(color: Colors.grey),
                    const SizedBox(height: 30),
                    Text('type'.tr,
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 20),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: types.length,
                        itemBuilder: (context, index) {
                          var type = types[index];
                          return SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(type['text'],
                                    style: TextStyle(fontSize: 11.sp)),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      type['selected'] = !type['selected'];
                                    });
                                  },
                                  child: Icon(
                                      type['selected']
                                          ? Icons.check_box
                                          : Icons.check_box_outline_blank,
                                      color: type['selected']
                                          ? PURBLE_COLOR
                                          : Colors.black,
                                      size: 20.sp),
                                )
                              ],
                            ),
                          );
                        }),
                    Divider(color: Colors.grey),
                    const SizedBox(height: 30),
                    Text('duration'.tr,
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 20),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: durations.length,
                        itemBuilder: (context, index) {
                          var duration = durations[index];
                          return SizedBox(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                Text(duration['text'],
                                    style: TextStyle(fontSize: 11.sp)),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        duration['selected'] =
                                            !duration['selected'];
                                      });
                                    },
                                    child: Icon(
                                        duration['selected']
                                            ? Icons.check_box
                                            : Icons.check_box_outline_blank,
                                        color: duration['selected']
                                            ? PURBLE_COLOR
                                            : Colors.black,
                                        size: 20.sp))
                              ]));
                        }),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomButton(
                          title:
                              '${'apply'.tr} 5 ${'filters'.tr.toLowerCase()}',
                          onTap: () => Get.back()),
                    )
                  ]),
            );
          });
        });
  }

  static Future<void> addNewStuffSheet({required context}) async {
    List<Map<String, dynamic>> types = [
      {
        'icon': 'mood_icon.png',
        'title': 'mood_check_in',
        'desc': 'mood_check_in_desc',
      },
      {
        'icon': 'new_journal_icon.png',
        'title': 'new_journal',
        'desc': 'new_journal_desc',
      },
      {
        'icon': 'new_task_icon.png',
        'title': 'new_task',
        'desc': 'new_task_desc',
      }
    ];
    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        builder: (ctx) {
          return StatefulBuilder(builder: (ctx, setState) {
            return Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 60,
                            height: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: PURBLE_COLOR)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text('yours'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20.sp)),
                    const SizedBox(height: 30),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: types.length,
                        itemBuilder: (context, index) {
                          var type = types[index];
                          return Column(
                            children: [
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Utils.customIcon(
                                        icon: type['icon'].toString()),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            type['title'].toString().tr,
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            type['desc'].toString().tr,
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                color: Colors.grey.shade400,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              index == 2 ? SizedBox() : Divider()
                            ],
                          );
                        }),
                  ]),
            );
          });
        });
  }
}
