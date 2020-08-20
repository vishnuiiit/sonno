import 'package:flutter/material.dart';

import 'objects/color_indicator.dart';

const kHomePageRoute = '/';
const kInfoPageRoute = '/info_page';

const kPrimaryColor = Color(0xff202020);
const kPrimaryBgColor = Color(0xff121212);
const kPrimarySelectionColor = Colors.deepPurple;
const kPrimaryTextColor = Color(0xfff0f0f0);
const kAlertDialogBackgroundColorCode = 0xFF202020;

const kAlertDialogBorderRadius = 10.0;
const kAlertDialogElevation = 30.0;
double alertDialogTitleTextSize(double screenWidth) => screenWidth * 0.06;
double alertDialogButtonTextSize(double screenWidth) => screenWidth * 0.04;

List<ColorIndicator> colorIndicators = [
  ColorIndicator(Colors.green, 'Good', 0, 50),
  ColorIndicator(Colors.amber, 'Moderate', 50, 100),
  ColorIndicator(Colors.deepOrange, 'Poor', 100, 200),
  ColorIndicator(Colors.pink, 'Unhealthy', 200, 300),
  ColorIndicator(Colors.deepPurple, 'Severe', 300, 400),
  ColorIndicator(Colors.red, 'Hazardous', 400, 500),
];