import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

class CustomButtonCc extends StatelessWidget {
  const CustomButtonCc({
    Key? key,
    required this.title,
    required this.number,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final GestureTapCallback onTap;
  final String number;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 6),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularPercentIndicator(
                            //backgroundWidth: 10,
                            arcBackgroundColor: Color(0xFFB8C7CB),
                            arcType: ArcType.FULL_REVERSED,
                            linearGradient: LinearGradient(
                                colors: [Color(0xFF9C2C19), Color(0xFFDC3F23)]),
                            circularStrokeCap: CircularStrokeCap.round,
                            radius: 30,
                            percent: 0.30,
                            center: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(number,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          color: PURBLE_COLOR)),
                                  Text('days'.tr,
                                      style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w600))
                                ])),
                        Text(title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp,
                                color: Colors.black))
                      ]),
                ))));
  }
}
