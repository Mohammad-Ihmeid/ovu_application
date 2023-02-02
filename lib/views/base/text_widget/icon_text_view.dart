import 'package:flutter/material.dart';
import 'package:ovu_application/helper/utils.dart';

class IconTextView extends StatelessWidget {
  const IconTextView(
      {super.key,
      required this.icon,
      required this.text,
      required this.onTap,
      this.color = Colors.black});
  final String icon, text;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Row(
          children: [
            Utils.customIcon(icon: icon, width: 16, height: 16),
            SizedBox(width: 8),
            Text(text, style: TextStyle(color: color, fontSize: 13.5))
          ],
        ),
      ),
    );
  }
}
