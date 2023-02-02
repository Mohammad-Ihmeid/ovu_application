import 'package:flutter/material.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CustomCardJournals extends StatelessWidget {
  CustomCardJournals({
    Key? key,
    required this.titile,
    required this.subtitile,
    required this.description,
  }) : super(key: key);
  String titile;
  final String subtitile;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          titile,
          style: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14),
        ),
        SizedBox(height: 3.h),
        SizedBox(
            height: 19.h,
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
                        child: ListView(
                            physics: const BouncingScrollPhysics(),
                            children: [
                              Row(children: [
                                SizedBox(
                                  width: 57.w,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          Row(children: [
                                            Icon(Icons.calendar_today_rounded,
                                                color: PURBLE_COLOR, size: 15),
                                            SizedBox(width: 2.w),
                                            Text('12 Sep 2022',
                                                style: TextStyle(
                                                    color: PURBLE_COLOR,
                                                    fontSize: 12))
                                          ]),
                                          SizedBox(width: 6.w),
                                          Row(children: [
                                            Icon(Icons.access_time,
                                                color: PURBLE_COLOR, size: 15),
                                            SizedBox(width: 1.w),
                                            Text('2:22 AM',
                                                style: TextStyle(
                                                    color: PURBLE_COLOR,
                                                    fontSize: 12))
                                          ])
                                        ]),
                                        SizedBox(height: 3.h),
                                        Text(subtitile,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black)),
                                        SizedBox(height: 1.h),
                                        Text(description,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12))
                                      ]),
                                ),
                                SizedBox(width: 2.w),
                                Container(
                                    width: 25.w,
                                    height: 14.h,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/products_images/image 1560.png"),
                                          fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ))
                              ])
                            ])))))
      ]),
    );
  }
}
