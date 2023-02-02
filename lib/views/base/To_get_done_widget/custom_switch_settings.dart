import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:sizer/sizer.dart';

class CustomSwitchSettings extends StatefulWidget {
  CustomSwitchSettings(
      {super.key, required this.title, required this.switchchanged});

  final String title;
  final bool switchchanged;

  @override
  State<CustomSwitchSettings> createState() => _CustomSwitchSettingsState();
}

class _CustomSwitchSettingsState extends State<CustomSwitchSettings> {
  bool _inchanged = false;
  @override
  void initState() {
    _inchanged = widget.switchchanged;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(widget.title.tr,
              style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter')),
          Switch.adaptive(
              activeColor: Colors.white,
              activeTrackColor: GREEN_COLOR,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Color(0x1F1F1F1F),
              value: _inchanged,
              onChanged: (Value) {
                setState(() {
                  _inchanged = Value;
                });
              })
        ]);
  }
}
