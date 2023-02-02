import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:get/get.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text.tr,
            style: TextStyle(
                color: PURBLE_COLOR,
                fontSize: 14,
                fontWeight: FontWeight.w500)),
        SizedBox(width: 15),
        Utils.customIcon(
          width: 18,
          height: 18,
          icon: GetStorage().read('lng') == "English"
              ? 'forward_icon_purble.png'
              : 'back_icon_purble.png',
        )
      ],
    );
  }
}
