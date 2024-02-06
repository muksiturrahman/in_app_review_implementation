import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

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
        if (isContainerVisible)
          Container(
            color: Colors.blue,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 80,
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
                  height: 25,
                  width: 1,
                  color: Colors.white,
                ),
                SizedBox(width: 3),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 30,
                  child: Marquee(
                    text: widget.texts.join(' * '),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
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
                SizedBox(width: 3),
                Container(
                  height: 25,
                  width: 1,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: GestureDetector(
                    onTap: toggleContainerVisibility,
                    child: Icon(Icons.backspace_outlined, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}