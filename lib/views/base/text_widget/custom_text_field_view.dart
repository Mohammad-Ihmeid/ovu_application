import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.suffixIcon,
      this.textalign = TextAlign.center,
      this.obscureText = false,
      this.textInputAction = TextInputAction.next,
      this.keyboardType = TextInputType.text,
      this.textcolor = Colors.grey,
      this.hasIcon = true,
      this.enabled = true})
      : super(key: key);

  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final TextAlign textalign;
  final Color textcolor;
  final bool obscureText, enabled, hasIcon;
  Widget suffixIcon;
  bool? isThereError = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      textAlign: textalign,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
        hintText: hintText.tr,
        hintStyle: TextStyle(color: textcolor),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
            borderRadius: BorderRadius.circular(8.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
            borderRadius: BorderRadius.circular(8.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
            borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}
