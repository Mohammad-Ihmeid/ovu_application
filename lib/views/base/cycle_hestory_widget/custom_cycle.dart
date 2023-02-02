import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomButtonC extends StatelessWidget {
  const CustomButtonC({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: CircularPercentIndicator(radius: 25),
        ),
      ),
    );
  }
}
