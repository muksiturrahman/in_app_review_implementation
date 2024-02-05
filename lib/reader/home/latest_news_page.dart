import 'package:flutter/material.dart';

class LatestNewsScreen extends StatefulWidget {
  const LatestNewsScreen({Key? key}) : super(key: key);

  @override
  State<LatestNewsScreen> createState() => _LatestNewsScreenState();
}

class _LatestNewsScreenState extends State<LatestNewsScreen> {
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
    return Column(
      children: [
        Text('Latest app bar'),
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
    );
  }
}
