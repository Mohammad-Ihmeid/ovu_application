import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ovu_application/helper/utils.dart';

class CustomBackIcon extends StatelessWidget {
  const CustomBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Get.back(),
        child: Utils.customIcon(
          icon: GetStorage().read('lng') == "English"
              ? 'arrow_back.png'
              : 'arrow_forward.png',
        ));
  }
}
