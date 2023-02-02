import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/modal_sheets.dart';
import 'package:ovu_application/views/screens/home/explore_screen.dart';
import 'package:ovu_application/views/screens/home/guest_screen.dart';
import 'package:ovu_application/views/screens/home/help_screen.dart';
import 'package:ovu_application/views/screens/home/today_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../helper/constants.dart';

class MainBottomNavigation extends StatefulWidget {
  const MainBottomNavigation({super.key});

  @override
  State<MainBottomNavigation> createState() => _MainBottomNavigationState();
}

class _MainBottomNavigationState extends State<MainBottomNavigation> {
  int _selectItem = 4;
  List _pages = [
    TodayScreen(),
    ExploreScreen(),
    GuestSceen(),
    HelpScreen(),
    GuestSceen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectItem],
        bottomNavigationBar: BottomNavigationBar(
          
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: TextStyle(
                color: Colors.black,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600),
            selectedLabelStyle: TextStyle(
                color: Colors.black,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600),
            currentIndex: _selectItem,
            onTap: ((value) {
              setState(() {
                _selectItem = value;
              });
            }),
            items: [
              BottomNavigationBarItem(
                  activeIcon: activeButton('calendar_fill_icon.png'),
                  icon: disabledButton('calendar_icon.png'),
                  label: 'today'.tr),
              BottomNavigationBarItem(
                  activeIcon: activeButton('feed_fill_icon.png'),
                  icon: disabledButton('feed_icon.png'),
                  label: 'explore'.tr),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                    onTap: () => CustomModalSheets.addNewStuffSheet(context: context),
                    child: Image.asset('${ICONS_PATH}add_icon.png',
                        width: 40, height: 40),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  activeIcon: activeButton('chatting_fill_icon.png'),
                  icon: disabledButton('chat_icon.png'),
                  label: 'help'.tr),
              BottomNavigationBarItem(
                  activeIcon: activeButton('user_icon.png'),
                  icon: disabledButton('user_fill_icon.png'),
                  label: 'profile'.tr),
            ]),
      ),
    );
  }

  Widget activeButton(String icon) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset('$ICONS_PATH$icon', width: 20, height: 20));
  }

  Widget disabledButton(String icon) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset('$ICONS_PATH$icon',
            width: 20, height: 20, color: Colors.black));
  }
}
