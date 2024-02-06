import 'package:bdjournal/utils/color/app_color.dart';
import 'package:bdjournal/utils/values/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import '../../utils/style/app_style.dart';

class CustomMarquee extends StatefulWidget {
  final String title;
  final List<String> texts;

  CustomMarquee({required this.title, required this.texts});

  @override
  _CustomMarqueeState createState() => _CustomMarqueeState();
}

class _CustomMarqueeState extends State<CustomMarquee> {
  bool isContainerVisible = true;

  void toggleContainerVisibility() {
    setState(() {
      isContainerVisible = !isContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          SizedBox(
            //color: AppColor.roseMadder,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 80,
              color: AppColor.roseMadder,
                  child: Center(
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 30,
                  color: AppColor.seaShell,
                  alignment: Alignment.center,
                  child: Marquee(
                    text: widget.texts.join(' * '),
                    style: AppStyle.blackNormal20(),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    blankSpace: 20.0,
                    velocity: 50.0,
                    startPadding: 10.0,
                    accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}