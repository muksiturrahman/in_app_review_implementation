import 'package:flutter/material.dart';
import '../color/app_color.dart';
import '../values/app_constant.dart';

abstract class AppStyle {
  static TextStyle roseMadderTextStyle () {
    return TextStyle(color: AppColor.roseMadder);
  }

  static TextStyle blackFontTextStyle () {
    return TextStyle(color: AppColor.black);
  }

  static TextStyle blackNormal20 (){
    return TextStyle(
      color: AppColor.black,
      fontSize: AppConstant.double_20,
      fontWeight: FontWeight.normal,
    );
  }
}
