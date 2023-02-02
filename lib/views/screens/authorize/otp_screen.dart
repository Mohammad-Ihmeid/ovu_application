import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';
import 'package:ovu_application/views/base/common/custom_app_bar.dart';
import 'package:ovu_application/views/base/common/custom_one_bottom_navigation_bar.dart';
import 'package:ovu_application/views/screens/authorize/name_input_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: ListView(physics: BouncingScrollPhysics(), children: [
                  CustomAppBarView(),
                  SizedBox(height: 3.h),
                  Text('enter_verification_code'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 20.sp)),
                  SizedBox(height: 1.h),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'sent_to'.tr,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.4)),
                            ),
                            TextSpan(text: '+962 79 012 3456')
                          ]),
                    ),
                    SizedBox(width: 10),
                    Utils.customIcon(
                        icon: 'login_person_icon.png', width: 20, height: 20)
                  ]),
                  SizedBox(height: 25),
                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      activeColor: Colors.grey.shade300,
                      disabledColor: Colors.grey.shade300,
                      selectedFillColor: Colors.grey.shade200,
                      inactiveFillColor: Colors.grey.shade200,
                      selectedColor: Colors.grey.shade300,
                      inactiveColor: Colors.grey.shade300,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 40.sp,
                      fieldWidth: 40.sp,
                      activeFillColor: Colors.white,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: true,
                    onCompleted: (pi) async {},
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      return true;
                    },
                    enablePinAutofill: true,
                    onAutoFillDisposeAction: AutofillContextAction.commit,
                    appContext: context,
                    onChanged: (String value) {},
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('resend_code'.tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: PURBLE_COLOR)),
                    SizedBox(width: 2.w),
                    Utils.customIcon(
                        icon: 'resend_code_icon.png', width: 16, height: 16)
                  ])
                ])),
            bottomNavigationBar: CustomBottomNavigationBarView(
                onTap: () => Get.to(() => NameInputScreen()))));
  }
}
