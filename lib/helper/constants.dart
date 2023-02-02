// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ovu_application/helper/translation/localization.dart';

//Colors
const Color PURBLE_COLOR = Color(0xFFB58CFF);
const Color PURBLE_COLOR_SHADE = Color.fromRGBO(242, 236, 255, 0.3);
const Color GREEN_COLOR = Color(0xFF5DD6A5);
Color OVERVIEW_COLOR = const Color(0xFF48A57F);
const Color YELLOW_COLOR = Color(0xffFFC940);
const Color WARNING_COLOR = Color(0xFFFFB400);
const Color ERROR_COLOR = Color(0xFFC6271A);
const Color SUCCESS_COLOR = Color(0xFF8DC640);
const Color PRIMARY_green = Color(0xFF5DD6A5);

//Paths
String IMAGES_PATH = 'assets/images/';
String ICONS_PATH = 'assets/icons/';
String BADGES_PATH = 'assets/images/badges/';

//Language
bool isEnglish =
    LocalizationService().getCurrentLocale() == const Locale('en', 'US');
