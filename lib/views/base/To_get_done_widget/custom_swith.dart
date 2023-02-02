import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/constants.dart';

class CustomSwith extends StatefulWidget {
  CustomSwith({super.key, required this.swith});
  final bool swith;

  @override
  State<CustomSwith> createState() => _CustomSwithState();
}

class _CustomSwithState extends State<CustomSwith> {
  bool _value = false;
  @override
  void initState() {
    _value = widget.swith;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Color(0xFFF2ECFF), width: 1),
            color: Colors.white),
        child: Flex(direction: Axis.horizontal, children: <Widget>[
          GestureDetector(
              onTap: () {
                setState(() {
                  if (_value) {
                  } else {
                    _value = true;
                  }
                });
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(56),
                      color: _value ? PURBLE_COLOR : Colors.white),
                  child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(children: <Widget>[
                        Icon(Icons.list,
                            color: _value ? Colors.white : PURBLE_COLOR),
                        SizedBox(width: 2),
                        _value
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
                  if (_value) {
                    _value = false;
                  }
                });
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(56),
                      color: _value ? Colors.white : PURBLE_COLOR),
                  child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(children: <Widget>[
                        Icon(Icons.calendar_today,
                            color: _value ? PURBLE_COLOR : Colors.white),
                        SizedBox(width: 2),
                        _value
                            ? Container()
                            : Text('calendar'.tr,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white))
                      ])))),
        ]));
  }
}
