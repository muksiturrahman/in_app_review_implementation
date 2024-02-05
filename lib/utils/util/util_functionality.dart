import 'dart:convert';
import 'package:intl/intl.dart';
import '../string/app_string.dart';

class UtilFunctionality {
  static String showErrorMsg(response) {
    String msg = '';
    try {
      Map<String, dynamic> map = json.decode(response);
      msg = map['message'].toString();
    } catch (e) {
      msg = AppString.errorMsg;
    }
    return msg;
  }

  static bool isStringNull(String stringChecker) {
    if (stringChecker == 'null' || stringChecker.isEmpty) {
      return true;
    }else{
      return (stringChecker == null) ? true: false;
    }
  }

  static String stringNullHandler(String stringChecker) {
    if (stringChecker == 'null' || stringChecker.isEmpty) {
      return '';
    }else{
      return (stringChecker == null) ? '': stringChecker;
    }
  }

  static String convertEngToBn(String num) {
    num = num.replaceAll("0", "০");
    num = num.replaceAll("1", "১");
    num = num.replaceAll("2", "২");
    num = num.replaceAll("3", "৩");
    num = num.replaceAll("4", "৪");
    num = num.replaceAll("5", "৫");
    num = num.replaceAll("6", "৬");
    num = num.replaceAll("7", "৭");
    num = num.replaceAll("8", "৮");
    num = num.replaceAll("9", "৯");

    return num;
  }

  static Future<String> bengaliDateConverter() async {
    var now = DateTime.now();
    var formatter = DateFormat('EEEE, d MMMM y');
    var formattedDate = formatter.format(now);

    // Convert numerals to Bengali
    var bengaliDate = formattedDate.replaceAllMapped(RegExp(r'[0-9]'), (match) {
      var digit = match.group(0);
      return String.fromCharCode(int.parse(digit!) + 2534);
    });

    return bengaliDate;
  }
}
