import 'package:flutter/material.dart';
import 'package:ovu_application/views/base/common/custom_logo_appbar.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/base/quotation_container_view.dart';
import 'package:sizer/sizer.dart';

class JournalDetailsScreen extends StatelessWidget {
  const JournalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18),
              CustomLogoAppBar(title: 'daily_reflection'.tr),
              SizedBox(height: 18),
              Expanded(
                  child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
                  SizedBox(height: 25),
                  Image.asset('assets/products_images/Frame 212.png'),
                  SizedBox(height: 25),
                  Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
                  SizedBox(height: 25),
                  Text('school_day'.tr,
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w800)),
                  SizedBox(height: 25),
                  Image.asset('assets/products_images/imagddd.png'),
                  SizedBox(height: 25),
                  Text(
                      'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
                  SizedBox(height: 25),
                  QuotationContainerView(
                      text:
                          'You\'ve gotta dance like there\'s nobody watching, Love like you\'ll never be hurt, Sing like there\'s nobody listening, And live like it\'s heaven on earth'),
                  SizedBox(height: 25),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
