import 'package:flutter/material.dart';
import 'package:ovu_application/views/base/common/custom_button.dart';
import 'package:ovu_application/views/base/common/custom_logo_appbar.dart';
import 'package:get/get.dart';
import 'package:ovu_application/views/screens/to_get_done/tasks_screen.dart';
import 'package:sizer/sizer.dart';

class ToGetDoneScreen extends StatelessWidget {
  const ToGetDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CustomLogoAppBar(title: 'to_get_done'.tr),
              SizedBox(height: 40),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Image.asset('assets/products_images/illustrations.png'),
                    SizedBox(height: 20),
                    Text(
                      'your_task_list_is_waiting'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'your_task_list_is_waiting_desc'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 11.sp),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomButton(
                          title: 'add_your_first_task',
                          onTap: () {
                            Get.to(() => TaskScreen());
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
