import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_button.dart';
import 'package:ovu_application/views/screens/cycle_history/cycle_history_screen.dart';

import 'package:sizer/sizer.dart';

import '../../../helper/constants.dart';
import '../../../helper/helper.dart';
import '../../base/bottom_selected.dart';

class MyCycleDetailsScreen extends StatefulWidget {
  final bool screeen;

  MyCycleDetailsScreen({super.key, this.screeen = true});

  @override
  State<MyCycleDetailsScreen> createState() => _MyCycleDetailsScreenState();
}

class _MyCycleDetailsScreenState extends State<MyCycleDetailsScreen> {
  String imageUnselected = '${ICONS_PATH}drooling-face_emoji.png';
  String image = '${ICONS_PATH}love_emoji.png';
  int ontapcount = 0;
  List<Mood> moods = [
    Mood(
        moodimage: '${ICONS_PATH}face_with_raised_eyebrow_emoji.png',
        moodimageUnselected:
            '${ICONS_PATH}face_with_raised_eyebrow_emoji_unselected.png',
        iselected: false),
    Mood(
        moodimage: '${ICONS_PATH}sad_emoji.png',
        moodimageUnselected: '${ICONS_PATH}sad_unselected_emoji.png',
        iselected: false),
    Mood(
        moodimage: '${ICONS_PATH}drooling-face_emoji.png',
        moodimageUnselected: '${ICONS_PATH}drooling-face_emoji_unselected.png',
        iselected: false),
    Mood(
        moodimage: '${ICONS_PATH}love_emoji.png',
        moodimageUnselected: '${ICONS_PATH}love_emoji_unselected.png',
        iselected: false),
    Mood(
        moodimage: '${ICONS_PATH}loudly_crying_face_emoji.png',
        moodimageUnselected:
            '${ICONS_PATH}loudly_crying_face_emoji_unselected.png',
        iselected: false)
  ];
  List<Map<String, dynamic>> items = [
    {'id': 0, 'title': 'cramps', 'show': false},
    {'id': 1, 'title': 'skin_changes', 'show': false},
    {'id': 2, 'title': 'breast_tenderness', 'show': false},
    {'id': 3, 'title': 'sleeping_issues', 'show': false},
    {'id': 4, 'title': 'crying', 'show': false},
    {'id': 5, 'title': 'mood_swings', 'show': false},
    {'id': 6, 'title': 'fatigue', 'show': false},
    {'id': 7, 'title': 'food_cravings', 'show': false},
    {'id': 8, 'title': 'headache', 'show': false},
    {'id': 9, 'title': 'poor_concentration', 'show': false},
    {'id': 10, 'title': 'social_withdrawal', 'show': false},
    {'id': 11, 'title': 'physical_pain', 'show': false},
    {'id': 12, 'title': 'bowel_issues', 'show': false},
    {'id': 13, 'title': 'other', 'show': false},
  ];
  @override
  Widget build(BuildContext context) {
    widget.screeen ? moods[3].iselected = true : null;
    widget.screeen ? items[0]['show'] = true : null;
    widget.screeen ? items[2]['show'] = true : null;
    widget.screeen ? items[8]['show'] = true : null;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              CustomAppBarView(title: 'add_your_period'),
              SizedBox(height: 2.h),
              Text('mood'.tr,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF464646))),
              SizedBox(height: 1.h),
              Text('select_the_mood'.tr,
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF909090))),
              SizedBox(
                width: 80.w,
                height: 50,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: moods.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          SizedBox(width: 40),
                          GestureDetector(
                              child: Image.asset(
                                moods[index].iselected
                                    ? moods[index].moodimage
                                    : moods[index].moodimageUnselected,
                                height: moods[index].iselected ? 32 : 20,
                                width: moods[index].iselected ? 32 : 20,
                              ),
                              onTap: () => {
                                    if (ontapcount == 0)
                                      {
                                        setState(() {
                                          image = moods[index].moodimage;
                                          moods[index].iselected = true;
                                          ontapcount = ontapcount + 1;
                                        }),
                                      }
                                    else if (moods[index].iselected)
                                      {
                                        setState(() {
                                          moods[index].iselected = false;
                                          imageUnselected =
                                              moods[index].moodimageUnselected;
                                          ontapcount = 0;
                                        })
                                      }
                                  }),
                        ],
                      );
                    }),
              ),
              SizedBox(height: 1.h),
              Text('symptoms'.tr,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF464646))),
              SizedBox(height: 1.h),
              Text('Select_all_the_symptoms'.tr,
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF909090))),
              SizedBox(height: 1.h),
              SizedBox(
                width: 80.w,
                height: 50,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (ctx, index) {
                      widget.screeen ? items.lastIndexOf({'id': 0}) : null;
                      return Row(
                        children: [
                          CustomBottomSelect(
                              showSelect: items[index]['show'],
                              title: items[index]['title'].toString(),
                              id: int.parse(items[index]['id'].toString())),
                          SizedBox(width: 20),
                        ],
                      );
                    }),
              ),
              SizedBox(height: 1.h),
              Text('menstrual_flow'.tr,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF464646))),
              SizedBox(height: 1.h),
              Text('estimate_your_average'.tr,
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF909090))),
              SizedBox(height: 1.h),
              SizedBox(
                width: 80.w,
                height: 50,
                child: ListView(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CustomBottomSelect(
                          id: 0, title: 'light_flow', Icon: 'water_icon.png'),
                      SizedBox(width: 10),
                      CustomBottomSelect(
                          showSelect: widget.screeen,
                          id: 1,
                          title: 'medium_flow',
                          Icon: 'water_medium_icon.png'),
                      SizedBox(width: 10),
                      CustomBottomSelect(
                          id: 2,
                          title: 'heavy_flow',
                          Icon: 'water_heavy_flow_icon.png')
                    ]),
              ),
              SizedBox(height: 1.h),
              Text('other'.tr,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF464646))),
              SizedBox(height: 1.h),
              SizedBox(
                  width: 80.w,
                  height: 50,
                  child: ListView(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CustomBottomSelect(
                            id: 0,
                            title: 'travel',
                            Icon: 'bag.png',
                            showSelect: widget.screeen),
                        SizedBox(width: 10),
                        CustomBottomSelect(
                            id: 1,
                            title: 'high_activity',
                            Icon: 'lightning.png',
                            showSelect: widget.screeen)
                      ])),
              SizedBox(height: 1.h),
              Text('add_note'.tr,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF464646))),
              SizedBox(height: 1.h),
              TextFormField(
                  decoration: InputDecoration(
                      hintText: 'all_went_well'.tr,
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white)),
                      focusColor: PRIMARY_green))
            ]),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: CustomButton(
          onTap: () {
            setState(() {
              Get.to(() => CycleHistoryScreen());
            });
          },
          title: 'save_my_log',
          icon: 'finish_icon.png',
        ),
      ),
    ));
  }
}
