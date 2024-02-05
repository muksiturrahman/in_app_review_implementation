import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  double widthSize = 0.0;
  double heightSize = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widthSize = MediaQuery.of(context).size.width;
    heightSize = MediaQuery.of(context).size.height;
    return Scaffold(body: SafeArea(child: initBuildUi()));
  }

  Widget initBuildUi() {
    return Stack(
      children: [
        Column(
          children: [
            Text('app bar'),
            Expanded(
              child: SingleChildScrollView(
                  child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: [Text('body')],
                ),
              )),
            ),
          ],
        ),
      ],
    );
  }
}
