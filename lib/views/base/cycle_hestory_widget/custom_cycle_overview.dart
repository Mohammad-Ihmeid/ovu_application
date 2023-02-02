import 'package:flutter/material.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CustomCycleOverView extends StatelessWidget {
  CustomCycleOverView({
    Key? key,
    required this.titile1,
    required this.subtitile1,
    required this.titile2,
    required this.subtitile2,
    required this.titile3,
    required this.subtitile3,
    required this.titile4,
    required this.subtitile4,
    required this.titile5,
    required this.subtitile5,
  }) : super(key: key);
  String titile1;
  String subtitile1;
  String titile2;
  String subtitile2;
  String titile3;
  String subtitile3;
  String titile4;
  String subtitile4;
  String titile5;
  String subtitile5;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
              'Cycles Overview',
              style: TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 2.h),
          SizedBox(
              height: 44.h,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFF2ECFF)),
                          gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xFFF2ECFF), Color(0xFFFAFAFC)]),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Column(
                              children: [
                                Row(children: [
                                  SizedBox(
                                      width: 57.w,
                                      child: Row(children: [
                                        Icon(Icons.calendar_today_rounded,
                                            color: PURBLE_COLOR, size: 15),
                                        SizedBox(width: 2.w),
                                        Text('12 Sep 2022',
                                            style: TextStyle(
                                                color: PURBLE_COLOR,
                                                fontSize: 12))
                                      ])),
                                  SizedBox(width: 2.w),
                                  Container(
                                      width: 25.w,
                                      height: 4.h,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30))),
                                      child: const Center(
                                          child: Text('Current Cycle',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                  fontSize: 12))))
                                ]),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(titile1,
                                                    style: TextStyle(
                                                        color: OVERVIEW_COLOR,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(subtitile1,
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold))
                                              ]),
                                          SizedBox(height: 2.h),
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(titile2,
                                                    style: TextStyle(
                                                        color: OVERVIEW_COLOR,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(subtitile2,
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold))
                                              ]),
                                          SizedBox(height: 2.h),
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(titile3,
                                                    style: TextStyle(
                                                        color: OVERVIEW_COLOR,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(subtitile3,
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold))
                                              ]),
                                          SizedBox(height: 2.h),
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(titile4,
                                                    style: TextStyle(
                                                        color: OVERVIEW_COLOR,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(subtitile4,
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold))
                                              ]),
                                          SizedBox(height: 2.h),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text('View full details',
                                                    style: TextStyle(
                                                        color: OVERVIEW_COLOR,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                SizedBox(width: 2.w),
                                                Icon(
                                                    Icons
                                                        .arrow_circle_right_outlined,
                                                    color: OVERVIEW_COLOR,
                                                    size: 25)
                                              ])
                                        ]))
                              ])))))
        ]));
  }
}
