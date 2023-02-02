import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/translation/localization.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:ovu_application/views/screens/authorize/authorize_screen.dart';
import 'package:ovu_application/views/screens/home/main_bottom_navigation.dart';
import 'package:sizer/sizer.dart';

class LanguageScreen extends StatefulWidget {
  final bool screen;
  const LanguageScreen({super.key, this.screen = false});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
      Utils.customImage(
          image: 'language_photo.png', width: double.infinity, height: 34.h),
      SizedBox(height: 4.h),
      Text('اختارِي لغتكِ المُفضلة',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700)),
      SizedBox(height: 1.h),
      Text('Choose your fav languages',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700)),
      SizedBox(height: 4.h),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(children: [
            GestureDetector(
                onTap: () async {
                  await changeLngToEnglish();
                  Get.to(() => widget.screen
                      ? const MainBottomNavigation()
                      : const AuthorizeScreen());
                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        border: Border.all(
                            color: const Color.fromRGBO(181, 140, 255, 0.4))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text('English',
                                    style: TextStyle(
                                        color: PURBLE_COLOR,
                                        fontSize: 16.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500)),
                              ),
                              Image.asset('${ICONS_PATH}arrow_forward.png',
                                  color: PURBLE_COLOR, width: 24, height: 24)
                            ])))),
            SizedBox(height: 2.h),
            GestureDetector(
                onTap: () async {
                  await changeLngToArabic();
                  Get.to(() => widget.screen
                      ? const MainBottomNavigation()
                      : const AuthorizeScreen());
                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        border: Border.all(
                            color: const Color.fromRGBO(181, 140, 255, 0.4))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('${ICONS_PATH}arrow_back.png',
                                  color: PURBLE_COLOR, width: 24, height: 24),
                              Text('العربية',
                                  style: TextStyle(
                                      color: PURBLE_COLOR,
                                      fontSize: 16.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500))
                            ]))))
          ]))
    ])));
  }

  Future changeLngToEnglish() async {
    LocalizationService().changeLocale('English');
    box.write('lng', 'English');
  }

  Future changeLngToArabic() async {
    LocalizationService().changeLocale('Arabic');
    box.write('lng', 'Arabic');
  }
}
