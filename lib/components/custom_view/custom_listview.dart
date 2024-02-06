

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../reader/home/details_page.dart';
import '../../utils/style/app_style.dart';
import '../../utils/values/app_constant.dart';

class CustomNewsList extends StatefulWidget {

  bool showImage;
  CustomNewsList({
    super.key,
    required this.showImage
  });

  @override
  State<CustomNewsList> createState() => _CustomNewsListState();
}

class _CustomNewsListState extends State<CustomNewsList> {
  bool isHovered = false;
  int cPos = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Divider(
                color: Colors.grey.shade200,
              ),
              InkWell(
                onTap: () async {
                  /*setState(() {
                    isHovered = true;
                    cPos = index;
                  });*/
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage()));
                  setState(() {
                    isHovered = false;
                    cPos = 0;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: widget.showImage?
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 1.7,
                          child: Text("যুদ্ধ বিরতির প্রথম দিনে গাজায় গেল ২০০ ত্রাণবাহী ট্রাক",style: AppStyle.blackFontTextStyle(),)
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppConstant.double_10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 3.2,
                          height: MediaQuery.of(context).size.height / 12,
                          child: CachedNetworkImage(
                            /*imageUrl: widget.newsModel
                                .elementAt(index + widget.startFrom)
                                .imgUrl,*/
                            imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.timesofisrael.com%2Fun-says-33-aid-trucks-with-water-food-medical-supplies-entered-gaza-sunday%2F&psig=AOvVaw11Q0Xrd4QA7xm9zBI9GUXJ&ust=1707212887462000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCPir7t_1k4QDFQAAAAAdAAAAABAE',
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

                    ],
                  ):
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: Text("যুদ্ধ বিরতির প্রথম দিনে গাজায় গেল ২০০ ত্রাণবাহী ট্রাক",style: AppStyle.blackFontTextStyle().copyWith(fontSize: 15),)
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
