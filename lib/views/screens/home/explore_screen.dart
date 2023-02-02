import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:ovu_application/views/base/search_widget/custom_search_field.dart';
import 'package:ovu_application/views/base/view/explore_view.dart';
import 'package:ovu_application/views/base/view/help_me_view.dart';
import 'package:ovu_application/views/base/modal_sheets.dart';
import 'package:ovu_application/views/screens/explore/article_screen.dart';
import 'package:sizer/sizer.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> exploreList = [
      {
        'type': 'video',
        'image': 'assets/products_images/Rectangle 23.png',
        'time_ago': 'sec',
        'desc': 'period_cramp'
      },
      {
        'type': 'article',
        'image': 'assets/products_images/Rectangle 23 (1).png',
        'time_ago': 'min',
        'desc': 'yoga_poses'
      },
      {
        'type': 'article',
        'image': 'assets/products_images/Rectangle 23 (2).png',
        'time_ago': 'min3',
        'desc': 'happier_period'
      },
      {
        'type': 'video',
        'image': 'assets/products_images/Rectangle 23 (3).png',
        'time_ago': 'sec',
        'desc': 'track_your'
      },
      {
        'type': 'article',
        'image': 'assets/products_images/Rectangle 23 (4).png',
        'time_ago': 'min2',
        'desc': 'small_happiness'
      },
      {
        'type': 'video',
        'image': 'assets/products_images/Rectangle 23 (5).png',
        'time_ago': 'sec',
        'desc': 'girl_lifestyle'
      },
      {
        'type': 'video',
        'image': 'assets/products_images/Rectangle 23 (6).png',
        'time_ago': 'sec',
        'desc': 'sleep_remedy'
      },
      {
        'type': 'video',
        'image': 'assets/products_images/Rectangle 23 (7).png',
        'time_ago': 'sec',
        'desc': 'period_beach'
      },
    ];

    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('explore'.tr,
                    style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 20.sp)),
                GestureDetector(
                    onTap: () =>
                        CustomModalSheets.filterExploreSheet(context: context),
                    child: Utils.customIcon(icon: 'filter_icon.png'))
              ],
            ),
            SizedBox(height: 15),
            CustomSearchField(
                controller: TextEditingController(),
                hintText: 'hint_search',
                icon: Icons.abc_outlined,
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('help_me'.tr,
                        style: TextStyle(
                            color: PURBLE_COLOR,
                            fontSize: 13,
                            fontWeight: FontWeight.w700)),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        child: GestureDetector(
                            onTap: () {},
                            child: Utils.customIcon(
                                icon: 'question_mark_icon.png',
                                width: 15,
                                height: 15))),
                    SizedBox(width: 10)
                  ],
                )),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    StaggeredGridView.countBuilder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 12,
                        itemCount: exploreList.length,
                        itemBuilder: (context, index) {
                          var value = exploreList[index];
                          var valueCheck = exploreList[index]['type']
                              .toString()
                              .toUpperCase();
                          return GestureDetector(
                            onTap: valueCheck == 'Video'.toUpperCase()
                                ? () {}
                                : () => Get.to(
                                    () => ArticleScreen(title: value['desc'])),
                            child: ExpolreView(
                                valueCheck: valueCheck,
                                image: value['image'],
                                type: value['type'],
                                timeAgo: value['time_ago'],
                                description: value['desc']),
                          );
                        },
                        staggeredTileBuilder: (index) {
                          var valueCheck = exploreList[index]['type']
                              .toString()
                              .toUpperCase();
                          return StaggeredTile.count(1,
                              valueCheck == 'Video'.toUpperCase() ? 2.1 : 1.6);
                        }),
                    bottomScreen()
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget bottomScreen() {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Utils.customIcon(icon: 'butterfly_icon.png'),
            SizedBox(width: 5),
            Text('thats_all'.tr,
                style: TextStyle(color: GREEN_COLOR, fontSize: 20)),
            SizedBox(width: 5),
            Utils.customIcon(icon: 'butterfly_icon.png'),
          ],
        ),
        SizedBox(height: 8),
        Text('ask_for_help'.tr,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
        SizedBox(height: 10),
        HelpMeView(),
        SizedBox(height: 15),
      ],
    );
  }
}
