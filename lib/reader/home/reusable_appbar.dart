import 'package:flutter/material.dart';

class CustomAppBar {
  static PreferredSizeWidget appBar(BuildContext context,
      {required bool isHome, required bool isMenupage,}) {
    return AppBar(
      // foregroundColor: Colors.white,
      // forceMaterialTransparency: true,
      automaticallyImplyLeading: false,
      // backgroundColor: Colors.white,
      titleSpacing: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          if (isMenupage) {
            Navigator.pop(context);
          } else {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => MenuPage(isFromHome: true),
            //   ),
            // );
          }
        },
        child: isMenupage
            ? Icon(
          Icons.clear,
          size: 22,
          color: Colors.red,
        )
            : Icon(Icons.menu),
      ),
      title: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: isHome
                  ? null
                  : () {
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Image.asset("assets/images/app_logo.png", width: 150),
            ),
          ],
        ),
      ),
    );
  }
}
