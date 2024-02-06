import 'package:bdjournal/reader/home/details_page.dart';
import 'package:flutter/material.dart';

import '../../components/custom_view/banner_list_widget.dart';
import '../../components/custom_view/custom_listview.dart';
import '../../components/custom_view/single_news_section.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
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
    return Scaffold(body: initBuildUi());
  }

  Widget initBuildUi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleNewsSection(),
          CustomNewsList(showImage: true),
          BannerListScreen(banner: 'বাংলাদেশ',),
          BannerListScreen(banner: 'আন্তর্জাতিক',),
          BannerListScreen(banner: 'শিক্ষা',),
        ],
      ),
    );
  }
}
