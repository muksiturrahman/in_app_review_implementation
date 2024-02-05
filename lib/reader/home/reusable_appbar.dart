import 'package:flutter/material.dart';

class CustomAppBar {
  static PreferredSizeWidget appBar(
    BuildContext context, {
    required bool isHome,
    required bool isMenuPage,
  }) {
    return AppBar(
      // foregroundColor: Colors.white,
      // forceMaterialTransparency: true,
      // automaticallyImplyLeading: false,
      // backgroundColor: Colors.white,
      // titleSpacing: 0.0,
      centerTitle: true,
      leading: Container(
        padding: EdgeInsets.symmetric(horizontal: isMenuPage? 5 : 15, vertical: isMenuPage? 18 : 20),
        child: GestureDetector(
          onTap: () {
            if (isMenuPage) {
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
          child: isMenuPage
              ? Image.asset(
                  "assets/images/close.png",
                )
              : Image.asset(
                "assets/images/menu.png",
                fit: BoxFit.fill,
              ),
        ),
      ),
      title: InkWell(
        onTap: isHome
            ? null
            : () {
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
        child: Image.asset("assets/images/app_logo.png", width: 150),
      ),
    );
  }
}
