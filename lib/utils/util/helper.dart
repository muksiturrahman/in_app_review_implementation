import 'package:flutter/material.dart';

showLoader(BuildContext context, String message) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        content: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                message,
                style:
                TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ));
}

stopLoader(BuildContext context){
  Navigator.of(context, rootNavigator: true).pop();
}

