import 'package:bdjournal/reader/home/reusable_appbar.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.appBar(context, isHome: false, isMenuPage: true),
      body: initBuildUi(),
    );
  }
  Widget initBuildUi() {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFFE5E5E5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/calendar.png",height: 16,),
                SizedBox(width: 5,),
                Text("ঢাকা, শনিবার, ২৫ নভেম্বর ২০২৩, ১০ অগ্রহায়ণ ১৪৩০",style: TextStyle(fontSize: 12),),
              ],
            ),
          ),
      Container(
        height: MediaQuery.of(context).size.height / 1.2,
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: itemBuilder,
        ),
      ),
        ],
      ),
    );
  }
  Widget itemBuilder(BuildContext context, int index) {
    bool isTapped = false;
    return ExpansionTile(
      title: Text('Item ${index + 1}'),
      trailing: Icon(Icons.add),
      shape: Border(),
      children: [
        Text("data"),
        Text("data"),
        Text("data"),
      ],
    );
  }

}
