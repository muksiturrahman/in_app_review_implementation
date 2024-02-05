import 'package:flutter/material.dart';
import '../color/app_color.dart';
import '../values/app_constant.dart';
import '../values/app_text_size.dart';

abstract class AppStyle {
  static TextStyle selectedBottomItem () {
    return TextStyle(color: AppColor.roseMadder);
  }
}
