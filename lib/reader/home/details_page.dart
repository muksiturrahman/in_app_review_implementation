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
      appBar: CustomAppBar.appBar(context, isHome: false, isMenuPage: false),
      body: initBuildUi(),
    );
  }
  Widget initBuildUi() {
    return  Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 1.1,
      child: SingleChildScrollView(
        // controller: widget.scrollController,
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  InkWell(
                    child: Image.asset(
                      "assets/images/AAA.png",
                      height: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  "যুদ্ধ বিরতির প্রথম গাজায় গেল ২০০ ত্রাণবাহী ট্রাক",
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'SolaimanLipi',
                  ),
                ),
              ),
             SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "প্রকাশ : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              // color: CustomColors.newsHeadLineColor2,
                            ),
                          ),
                          Text("২৫ নভেম্বর, ২০২৩ ৬:৩১",style: TextStyle(fontSize: 16,),),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "আপডেট : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              // color: CustomColors.newsHeadLineColor2,
                            ),
                          ),
                          Text("২৫ নভেম্বর, ২০২৩ ৬:৩১",style: TextStyle(fontSize: 16,),),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.share),
                      Icon(Icons.facebook),
                      Icon(Icons.messenger),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * 9 / 16,
                    // Set height to maintain 16:9 aspect ratio
                    child: Image.network(
                      "https://www.bd-journal.com/assets/news_photos/2024/02/05/image-260964-1707125637.jpg",
                      fit: BoxFit.fill,
                      // errorWidget: (context, error, stackTrace) {
                      //   return Image.asset(
                      //     appStrings.errorImage,
                      //     fit: BoxFit.fill,
                      //   );
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Visibility(
                    // visible: newsModel.tmpPhotoCaption.isNotEmpty,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "নির্বাচন ভবন | ফাইল ছবি",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff212529),
                          fontFamily: 'SolaimanLipi',
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 10,),
                  Text("নিজস্ব প্রতিবেদক"),
                ],
              ),
              SizedBox(height: 15,),
              Text("মিয়ানমার থেকে ছোড়া মর্টারশেলের আঘাতে ঘুমধুম সীমান্তে দুজন নিহত হয়েছেন। এদের মধ্যে একজন রোহিঙ্গা ও একজন বাংলাদেশি।ঘুমধুম পুলিশ তদন্ত কেন্দ্রের পরিদর্শক মাহফুজুর রহমান গণমাধ্যমকে এই তথ্য নিশ্চিত করেছেন।‘বিজিপি সদস্যদের মিয়ানমারে পাঠাতে আলোচনা চলছে’মাহফুজুর রহমান বলেন, সোমবার (৫ ফেব্রুয়ারি) বেলা আড়াইটার দিকে মিয়ানমার থেকে ছোঁড়া গোলার আঘাতে তাদের মৃত্যু হয়। এদের মধ্যে একজন পুরুষ ও একজন নারী। সীমান্ত এলাকা হওয়ায় প্রাথমিকভাবে নিহতদের নাম-পরিচয় জানা যায়নি।এদিকে রোববার কিছু সময়ের জন্য সীমান্তের ওপারে গোলাগুলি বন্ধ থাকলেও আজ সোমবার সকাল থেকে ফের গোলাগুলির শব্দ পাওয়া যাচ্ছে।আরাকান আর্মির সঙ্গে লড়াইয়ে কোণঠাসা হয়ে মিয়ানমারের বর্ডার গার্ড পুলিশের (বিজিপি) ৯৫ জন সদস্য এখন পর্যন্ত তুমব্রু সীমান্ত দিয়ে পালিয়ে বাংলাদেশে আশ্রয় নিয়েছেন। এরই মধ্যে তাদের নিরস্ত্র করে হেফাজতে নিয়েছে বর্ডার গার্ড বাংলাদেশের (বিজিবি) সদস্যরা।এদের মধ্যে জানি মং ও নিমলাইন নামের দুজনকে গুলিবিদ্ধ অবস্থায় ভর্তি করা হয়েছে কক্সবাজার সদর হাসপাতালে। আশঙ্কাজনক অবস্থায় আরও ৪ জনকে উখিয়ার একটি হাসপাতালে চিকিৎসা দেয়া হচ্ছে।"),
              SizedBox(
                height: 15,
              ),
              Text(
                'আরও পড়ুন',
                style: TextStyle(
                  // color: CustomColors.sectionColor,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SolaimanLipi',
                ),
              ),
              // ReusableDivider(),
              // FooterSection(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
