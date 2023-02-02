// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ovu_application/helper/constants.dart';

class Bades {
  String title;
  String image;
  Color? colorText;
  Color? color;
  Bades({
    required this.title,
    required this.image,
    required this.colorText,
    required this.color,
  });
}

class HelpfulQuestions {
  String question;
  String answare;
  bool iconshow;
  HelpfulQuestions({
    required this.question,
    required this.answare,
    required this.iconshow,
  });
}

class Terms {
  String headline;
  String suptitle;
  String number;
  Terms({required this.headline, required this.suptitle, required this.number});
}

class Data {
  static List<Terms> termsConditions = [
    Terms(
        headline: 'eligibility', suptitle: 'to_use_the_services', number: '1'),
    Terms(
        headline: 'account_registration',
        suptitle: 'to_use_certain_features',
        number: '2'),
    Terms(headline: 'use_services', suptitle: 'the_services_are', number: '3'),
    Terms(
        headline: 'intellectual_property',
        suptitle: 'the_services_and',
        number: '4'),
    Terms(
        headline: 'disclaimer_of_warranties',
        suptitle: 'we_make_no_warranties',
        number: '5'),
    Terms(headline: 'indemnification', suptitle: 'you_agree_to', number: '6'),
    Terms(headline: 'eligibility', suptitle: 'we_reserve_the', number: '7')
  ];

  static List<HelpfulQuestions> questionslist = [
    HelpfulQuestions(
        question: 'tracking_app',
        answare: 'menstrual_cycle_tracker',
        iconshow: false),
    HelpfulQuestions(
        question: 'should_i_use',
        answare: 'should_i_use_answare',
        iconshow: false),
    HelpfulQuestions(
        question: 'tracking_app',
        answare: 'menstrual_cycle_tracker',
        iconshow: false),
    HelpfulQuestions(
        question: 'tracking_app',
        answare: 'menstrual_cycle_tracker',
        iconshow: false),
    HelpfulQuestions(
        question: 'tracking_app',
        answare: 'menstrual_cycle_tracker',
        iconshow: false),
    HelpfulQuestions(
        question: 'tracking_app',
        answare: 'menstrual_cycle_tracker',
        iconshow: false),
  ];

  static List<Bades> items = [
    Bades(
        image: '${BADGES_PATH}badge1.png',
        title: 'created_Profile',
        colorText: Colors.white,
        color: GREEN_COLOR),
    Bades(
        image: '${BADGES_PATH}badge2.png',
        title: 'of_cycle_info',
        colorText: Colors.white,
        color: GREEN_COLOR),
    Bades(
        image: '${BADGES_PATH}badge3.png',
        title: 'Invite_friends',
        colorText: Colors.white,
        color: PURBLE_COLOR),
    Bades(
        image: '${BADGES_PATH}badge4.png',
        title: 'log_cycles',
        colorText: Colors.grey[400],
        color: Colors.grey[200]),
    Bades(
        image: '${BADGES_PATH}badge5.png',
        title: 'mood_check-in',
        colorText: Colors.grey[400],
        color: Colors.grey[200]),
    Bades(
        image: '${BADGES_PATH}badge6.png',
        title: 'Invite_10_friends',
        colorText: Colors.grey[400],
        color: Colors.grey[200]),
    Bades(
        image: '${BADGES_PATH}badge7.png',
        title: 'write 10 journals',
        colorText: Colors.grey[400],
        color: Colors.grey[200]),
    Bades(
        image: '${BADGES_PATH}badge8.png',
        title: 'done_tasks',
        colorText: Colors.grey[400],
        color: Colors.grey[200]),
    Bades(
        image: '${BADGES_PATH}badge9.png',
        title: 'save_videos',
        colorText: Colors.grey[400],
        color: Colors.grey[200]),
  ];
}
