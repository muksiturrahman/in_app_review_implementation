import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
        Text('Search bar'),
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
