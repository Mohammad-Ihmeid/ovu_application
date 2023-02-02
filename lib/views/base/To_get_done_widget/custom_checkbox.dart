import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/constants.dart';

class CustomCheckBox extends StatefulWidget {
  CustomCheckBox(
      {super.key,
      required this.title,
      required this.color,
      required this.states});

  final String title;
  final Color color;
  final bool states;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _value = false;
  @override
  void initState() {
    _value = widget.states;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(children: <Widget>[
            Checkbox(
                activeColor: GREEN_COLOR,
                value: _value,
                onChanged: ((value) {
                  setState(() {
                    _value = value!;
                  });
                })),
            Text(
              widget.title.tr,
              style: TextStyle(
                  decoration: _value
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ]),
          Image.asset('${ICONS_PATH}flag.png',
              width: 16, height: 16, color: widget.color)
        ]);
  }
}
