import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';

class HelpMeView extends StatelessWidget {
  const HelpMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text('help_me'.tr,
          style: TextStyle(
              color: PURBLE_COLOR, fontSize: 14, fontWeight: FontWeight.w700)),
      SizedBox(width: 5),
      Utils.customIcon(icon: 'question_mark_icon.png', width: 17, height: 17)
    ]);
  }
}
