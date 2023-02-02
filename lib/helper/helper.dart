import 'package:flutter/material.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:sizer/sizer.dart';

class Helper {
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      messageWarning(String title, BuildContext context) {
    GlobalKey<ScaffoldMessengerState>();
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: WARNING_COLOR,
        behavior: SnackBarBehavior.floating,
        content: Text(title, style: TextStyle(fontSize: 12.0.sp))));
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> messageError(
      String title, BuildContext context) {
    GlobalKey<ScaffoldMessengerState>();
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: ERROR_COLOR,
        behavior: SnackBarBehavior.floating,
        content: Text(title, style: TextStyle(fontSize: 12.0.sp))));
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      messageSuccess(String title, BuildContext context) {
    GlobalKey<ScaffoldMessengerState>();
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: SUCCESS_COLOR,
        behavior: SnackBarBehavior.floating,
        content: Text(title, style: TextStyle(fontSize: 12.0.sp))));
  }
}

class Mood {
  String moodimageUnselected;
  String moodimage;
  bool iselected;
  Mood(
      {required this.moodimage,
      required this.moodimageUnselected,
      required this.iselected});
}
