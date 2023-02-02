import 'package:flutter/material.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CustomWidget extends StatelessWidget {
  const CustomWidget({
    Key? key,
    required this.titile,
    required this.subtitile,
  }) : super(key: key);
  final String titile;
  final String subtitile;
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topCenter, children: [
      SizedBox(
          height: 19.h,
          width: 25.w,
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: PURBLE_COLOR),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 20),
                      child: Column(children: [
                        SizedBox(height: 1.h),
                        Text(
                            textAlign: TextAlign.center,
                            titile,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                        Text(
                            textAlign: TextAlign.center,
                            subtitile,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 2),
                        Container(
                            height: 7.h,
                            width: 18.w,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Image.asset('${IMAGES_PATH}frog.png',
                                scale: 2.5))
                      ]))))),
      Container(
          height: 3.h,
          width: 10.w,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500, spreadRadius: 1, blurRadius: 10)
          ], shape: BoxShape.circle, color: PURBLE_COLOR),
          child: const Icon(Icons.check, color: Colors.white, size: 15))
    ]);
  }
}
