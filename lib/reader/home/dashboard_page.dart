
import 'package:flutter/material.dart';

import '../../utils/color/app_color.dart';
import '../../utils/string/app_string.dart';
import '../../utils/style/app_style.dart';
import 'home_page.dart';
import 'latest_news_page.dart';
import 'search_page.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  double widthSize = 0.0;

  double heightSize = 0.0;

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    widthSize = MediaQuery.of(context).size.width;
    heightSize = MediaQuery.of(context).size.height;
    List<Widget> pages = [HomePageScreen(),SearchPage(),LatestNewsScreen(),];
    return Scaffold(
        body: SafeArea(child: pages[selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: AppString.homePlainText),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: AppString.searchPlainText,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: AppString.latestPlainText,
            ),
          ],
          selectedItemColor: AppColor.roseMadder,
          selectedLabelStyle: AppStyle.selectedBottomItem(),
          unselectedItemColor: AppColor.carbonGrey,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          selectedIconTheme:
          IconThemeData(color: AppColor.roseMadder),
          unselectedIconTheme: IconThemeData(color: AppColor.carbonGrey),
          backgroundColor: AppColor.white,
          onTap: (int indexOfBottomNavigationBar) {
            setState(() {
              selectedIndex = indexOfBottomNavigationBar;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
        )
    );
  }

  Widget initBuildUi() {
    return Column(
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
    );
  }
}
