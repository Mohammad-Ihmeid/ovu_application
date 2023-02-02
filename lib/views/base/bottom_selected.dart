import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../helper/constants.dart';

class CustomBottomSelect extends StatefulWidget {
  const CustomBottomSelect(
      {super.key,
      this.showSelect = false,
      required this.id,
      required this.title,
      this.Icon = '',
      this.showIcon = false});
  final int id;
  final String title;
  final String Icon;
  final bool showIcon;
  final bool showSelect;
  @override
  State<CustomBottomSelect> createState() => _CustomBottomSelectState();
}

class _CustomBottomSelectState extends State<CustomBottomSelect> {
  List _itemSelected = [];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_itemSelected.contains(widget.id)) {
            _itemSelected.remove(widget.id);
          } else {
            _itemSelected.add(widget.id);
          }
        });
      },
      child: Container(
          decoration: BoxDecoration(
              color: _itemSelected.contains(widget.id) || widget.showSelect
                  ? PRIMARY_green
                  : Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: _itemSelected.contains(widget.id) || widget.showSelect
                      ? PRIMARY_green
                      : Color.fromARGB(255, 144, 141, 141))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                widget.Icon.isEmpty
                    ? Container()
                    : Image.asset('${ICONS_PATH + widget.Icon}',
                        color: _itemSelected.contains(widget.id) ||
                                widget.showSelect
                            ? Colors.white
                            : Colors.black,
                        width: 20,
                        height: 20),
                SizedBox(width: 10),
                Text('${widget.title}'.tr,
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: _itemSelected.contains(widget.id) ||
                                widget.showSelect
                            ? Colors.white
                            : Colors.grey[400])),
              ],
            ),
          )),
    );
  }
}
