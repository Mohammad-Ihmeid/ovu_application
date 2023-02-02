import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:ovu_application/views/screens/language/language_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      if (box.read('lng') != null) {
        await Get.to(() => const LanguageScreen());
      } else {
        await Get.to(() => const LanguageScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PURBLE_COLOR,
        body: Center(
            child: Utils.customImage(
                image: 'ovu.logo.png', width: double.infinity, height: 55)));
  }
}
