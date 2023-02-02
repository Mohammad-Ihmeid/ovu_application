import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/views/screens/to_get_done/tasks_calender.dart';
import 'package:ovu_application/views/screens/to_get_done/tasks_list.dart';
import 'package:sizer/sizer.dart';

import '../../base/common/custom_logo_appbar.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key, this.restorationId});
  final String? restorationId;

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> with RestorationMixin {
  bool _isLest = true;
  String? dropdownvalue = "I don\'t Now";
  final List<String> listItem = [
    "I don\'t Now",
    "Heavy Task",
    "Normal Task",
    "Light Task"
  ];
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                Widget>[
              CustomLogoAppBar(title: 'to_get_done'.tr),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Color(0xFFF2ECFF), width: 1),
                      color: Colors.white),
                  child: Flex(direction: Axis.horizontal, children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_isLest) {
                            } else {
                              _isLest = true;
                            }
                          });
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(56),
                                color: _isLest ? PURBLE_COLOR : Colors.white),
                            child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(children: <Widget>[
                                  Icon(Icons.list,
                                      color: _isLest
                                          ? Colors.white
                                          : PURBLE_COLOR),
                                  SizedBox(width: 10),
                                  _isLest
                                      ? Text('list'.tr,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white))
                                      : Container()
                                ])))),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_isLest) {
                              _isLest = false;
                            }
                          });
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(56),
                                color: _isLest ? Colors.white : PURBLE_COLOR),
                            child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(children: <Widget>[
                                  Icon(Icons.calendar_today,
                                      color: _isLest
                                          ? PURBLE_COLOR
                                          : Colors.white),
                                  SizedBox(width: 10),
                                  _isLest
                                      ? Container()
                                      : Text('calendar'.tr,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white))
                                ])))),
                  ])),
            ]),
            SizedBox(height: 2.h),
            _isLest ? TasksListScreen() : TasksCalenderScreen(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: PURBLE_COLOR,
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              builder: (context) {
                return StatefulBuilder(builder: (context, setState) {
                  return Padding(
                    padding: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 30,
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'new task'.tr,
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 1.h),
                        TextFormField(
                          autofocus: true,
                          decoration: InputDecoration(
                            hintText: 'what_would_you_like_to_do'.tr,
                            hintStyle: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[400]),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {
                                  _restorableDatePickerRouteFuture.present();
                                },
                                child: Icon(Icons.calendar_today,
                                    color: Colors.black, size: 20)),
                            SizedBox(width: 5),
                            Text(
                              'today'.tr,
                              style: TextStyle(
                                  fontSize: 8.sp, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 10),
                            DropdownButton(
                                iconSize: 0,
                                value: dropdownvalue,
                                items: listItem
                                    .map<DropdownMenuItem<String>>(
                                        (value) => DropdownMenuItem<String>(
                                            value: value,
                                            child: Row(children: <Widget>[
                                              Icon(
                                                Icons.flag_outlined,
                                                size: 20,
                                                color: value == 'I don\'t Now'
                                                    ? Color(0xFFE2E2E2)
                                                    : value == 'Heavy Task'
                                                        ? Color(0xFFF74728)
                                                        : value == 'Normal Task'
                                                            ? Color(0xFFFFC940)
                                                            : value ==
                                                                    'Light Task'
                                                                ? Color(
                                                                    0xFF0D6EFD)
                                                                : Colors.black,
                                              ),
                                              SizedBox(width: 2.w),
                                              Text(value,
                                                  style: TextStyle(
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: value ==
                                                              'I don\'t Now'
                                                          ? Color(0xFFE2E2E2)
                                                          : value ==
                                                                  'Heavy Task'
                                                              ? Color(
                                                                  0xFFF74728)
                                                              : value ==
                                                                      'Normal Task'
                                                                  ? Color(
                                                                      0xFFFFC940)
                                                                  : value ==
                                                                          'Light Task'
                                                                      ? Color(
                                                                          0xFF0D6EFD)
                                                                      : Colors
                                                                          .black))
                                            ])))
                                    .toList(),
                                onChanged: (dynamic newValue) {
                                  setState(() {
                                    dropdownvalue = newValue.toString();
                                  });
                                })
                          ],
                        ),
                      ],
                    ),
                  );
                });
              });
        },
        child: Icon(Icons.add, size: 40),
      ),
    ));
  }
}
