import 'package:bdjournal/utils/color/app_color.dart';
import 'package:bdjournal/utils/style/app_style.dart';
import 'package:bdjournal/utils/values/app_constant.dart';
import 'package:flutter/material.dart';
import './single_news_section.dart';
import './custom_listview.dart';

class BannerListScreen extends StatefulWidget {
  String banner;
  BannerListScreen({Key? key,required this.banner}) : super(key: key);

  @override
  State<BannerListScreen> createState() => _BannerListScreenState();
}

class _BannerListScreenState extends State<BannerListScreen> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.white,
      // color: AppColor.roseMadder,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppConstant.double_10,vertical: AppConstant.double_15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 5,
              width: 20,
              color: AppColor.roseMadder,
            ),
            SizedBox(height: AppConstant.double_10,),
            Text(widget.banner,style: AppStyle.blackFontTextStyle().copyWith(fontSize: 30),),
            SizedBox(height: AppConstant.double_10,),
            SingleNewsSection(),
            CustomNewsList(showImage: false,)
          ],
        ),
      ),
    );
  }
}
