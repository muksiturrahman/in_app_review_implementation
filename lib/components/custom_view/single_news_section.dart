import 'package:bdjournal/utils/style/app_style.dart';

import '../../reader/home/details_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/values/app_constant.dart';

class SingleNewsSection extends StatefulWidget {

  const SingleNewsSection({
    Key? key,

  }) : super(key: key);

  @override
  State<SingleNewsSection> createState() => _SingleNewsSectionState();
}

class _SingleNewsSectionState extends State<SingleNewsSection> {
  bool dataLoaded = false;
  bool isHovered = false;
  int cPos = 0;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          dataLoaded = true;
        });
      }
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    final richTextChildren = <TextSpan>[];

    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: () async {
            setState(() {
              isHovered = true;
              cPos = 0;
            });

            /*Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewsDetailsPage(
                  newsModel: widget.newsModel,
                  breadCrumb: widget.breadCrumb,
                  uniqueId: widget.uniqueId,
                  isChildPage: false,
                  isCatId: widget.isCatId,
                  isLatest: widget.isLatest,
                  isPopular: widget.isPopular,
                  isAppBarVisible: widget.isAppBarVisible,
                  childMenuList: widget.childMenuList,
                  parentName: widget.parentName,
                ),
              ),
            );*/
            setState(() {
              isHovered = false;
              cPos = 0;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight / 3.8,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppConstant.double_10),
                    child: CachedNetworkImage(
                      imageUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcloudfront-us-east-2.images.arcpublishing.com%2Freuters%2FAZS4536OXRKNNKZXVS5YIX53GA.jpg&tbnid=4YXoiVp8pGr2GM&vet=12ahUKEwiv4vze9ZOEAxXmbmwGHdIkC2MQMygCegQIARA3..i&imgrefurl=https%3A%2F%2Fwww.reuters.com%2Fworld%2Fmiddle-east%2Feight-more-aid-trucks-expected-cross-into-gaza-friday-un-official-2023-10-27%2F&docid=0NMMFj4JqrxJcM&w=5500&h=3667&q=gaza%20truck&ved=2ahUKEwiv4vze9ZOEAxXmbmwGHdIkC2MQMygCegQIARA3',
                      fit: BoxFit.fill,
                      errorWidget: (context, error, stackTrace) {
                        return Image.asset(
                          AppConstant.errorImagePath,
                          fit: BoxFit.fill,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: AppConstant.double_10,),
                Text('যুদ্ধ বিরতির প্রথম দিনে গাজায় গেল ২০০ ত্রাণবাহী ট্রাক',maxLines: 3,overflow: TextOverflow.fade,style: AppStyle.selectedBottomItem().copyWith(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
