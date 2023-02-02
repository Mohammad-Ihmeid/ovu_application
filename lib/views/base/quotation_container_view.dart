import 'package:flutter/material.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';

class QuotationContainerView extends StatelessWidget {
  const QuotationContainerView({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: PURBLE_COLOR),
            color: PURBLE_COLOR_SHADE),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Utils.customIcon(icon: 'quotation_icon.png'),
              SizedBox(width: 10),
              Expanded(
                child: Text(text,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: PURBLE_COLOR)),
              )
            ])));
  }
}
