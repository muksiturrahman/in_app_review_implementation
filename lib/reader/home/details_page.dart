import 'package:bdjournal/reader/home/reusable_appbar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.appBar(context, isHome: false, isMenupage: false),
      body: initBuildUi(),
    );
  }
  Widget initBuildUi() {
    return Column(
      children: [
        Text("Hi I am details page"),
      ],
    );
  }
}
