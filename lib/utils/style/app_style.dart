import 'package:flutter/material.dart';
import '../color/app_color.dart';

abstract class AppStyle {
  static TextStyle roseMadderTextStyle () {
    return TextStyle(color: AppColor.roseMadder);
  }

  static TextStyle blackFontTextStyle () {
    return TextStyle(color: AppColor.black);
  }
}
