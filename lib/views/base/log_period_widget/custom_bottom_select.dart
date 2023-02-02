import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/constants.dart';

class CustomBottomSelected extends StatefulWidget {
  final String icon;
  final int id;
  final String title;
  final double width;
  final double height;

  CustomBottomSelected({
    super.key,
    this.icon = '',
    this.width = 318.0,
    this.height = 52.0,
    required this.title,
    required this.id,
  });

  @override
  State<CustomBottomSelected> createState() => _CustomBottomSelectedState();
}

class _CustomBottomSelectedState extends State<CustomBottomSelected> {
  bool _isSelected = false;
  int _selectedId = 2;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
          _selectedId = widget.id;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xFFE2E2E2), width: 0.5),
            color: _isSelected && widget.id == _selectedId
                ? Color(0xFF5DD6A5)
                : Color(0xFFF0F0F0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                widget.icon.isEmpty
                    ? Container()
                    : Image.asset('${ICONS_PATH + widget.icon}',
                        width: 16.67,
                        height: 16.67,
                        color: _isSelected && widget.id == _selectedId
                            ? Colors.white
                            : Colors.black),
                SizedBox(width: 10),
                Text(
                  widget.title.tr,
                  style: TextStyle(
                      color: _isSelected && widget.id == _selectedId
                          ? Colors.white
                          : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            _isSelected && widget.id == _selectedId
                ? Image.asset('${ICONS_PATH}completed_icon.png',
                    color: Colors.white)
                : Container()
          ],
        ),
      ),
    );
  }
}
