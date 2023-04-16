import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation/Sample/Sample.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';

import 'Models/Post.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 36.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discover",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34.w,
                          fontWeight: FontWeight.bold)),
                  InkWell(
                    borderRadius: BorderRadius.circular(360),
                    onTap: onSearchIconTapped,
                    child: Container(
                      height: 35.w,
                      width: 35.w,
                      child: Center(
                        child: SvgAsset(
                          assetName: AssetName.search,
                          height: 24.w,
                          width: 24.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
              child: Material(
                color: Color.fromARGB(255, 193, 174, 233),
                child: Ink(
                  decoration: BoxDecoration(
                    color: Color(0xff121421),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      debugPrint("Level Profile Conrtainer");
                    },
                    child: Container(
                      height: 100.w,
                      width: 305.w,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Color(0xff4A80F0).withOpacity(0.15),
                            blurRadius: 16,
                            spreadRadius: 4,
                            offset: Offset(0, 0))
                      ]),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                        color: Color(0xff515979),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.w),
                  ),
                  GestureDetector(
                      onTap: onSeeAllTapped,
                      child: Text("See All",
                          style: TextStyle(
                              color: Color(0xff4A80F0),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.w)))
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 176.w,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 28.w),
                  DiscoverCard(
                    tag: Sample.postOne.EventName,
                    onTap: () {
                      onSleepMeditationTapped(Sample.postOne);
                    },
                    title: Sample.postOne.EventName,
                    subtitle: Sample.postOne.subtitle,
                    TypeOfChallenge: AssetName.camera,
                    right: AssetName.codefile,
                  ),
                  SizedBox(width: 20.w),
                  DiscoverCard(
                    tag: Sample.post3.EventName,
                    onTap: () {
                      onSleepMeditationTapped(Sample.post3);
                    },
                    title: Sample.post3.EventName,
                    subtitle: Sample.post3.subtitle,
                    TypeOfChallenge: AssetName.camera,
                    right: AssetName.tape,
                    gradientStartColor: Color(0xffFC67A7),
                    gradientEndColor: Color(0xffF6815B),
                  ),
                   SizedBox(width: 20.w),
                   DiscoverCard(
                    tag: Sample.post4.EventName,
                    onTap: () {
                      onSleepMeditationTapped(Sample.post4);
                    },
                    title: Sample.postOne.EventName,
                    subtitle: Sample.postOne.subtitle,
                    TypeOfChallenge: AssetName.camera,
                    right: AssetName.codefile,
                    gradientStartColor: Color(0xffFC67A7),
                    gradientEndColor: Color(0xffF6815B),
                  ),
                   SizedBox(width: 20.w),
                   DiscoverCard(
                    tag: Sample.post5.EventName,
                    onTap: () {
                      onSleepMeditationTapped(Sample.post5);
                    },
                    title: Sample.post5.EventName,
                    subtitle: Sample.post5.subtitle,
                    TypeOfChallenge: AssetName.camera,
                    right: AssetName.codefile,
                  ),
                   SizedBox(width: 20.w),
                   DiscoverCard(
                    tag: Sample.post7.EventName,
                    onTap: () {
                      onSleepMeditationTapped(Sample.post7);
                    },
                    title: Sample.post7.EventName,
                    subtitle: Sample.post7.subtitle,
                    TypeOfChallenge: AssetName.camera,
                    right: AssetName.codefile,
                    gradientStartColor: Color(0xffFC67A7),
                    gradientEndColor: Color(0xffF6815B),
                  ),
                   SizedBox(width: 20.w),
                ],
              ),
            ),
            SizedBox(height: 28.h),
            Padding(
              padding: EdgeInsets.only(left: 28.w),
              child: Text(
                "Subscriptions",
                style: TextStyle(
                    color: Color(0xff515979),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.w),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 19.w,
                    mainAxisExtent: 100.w,
                    mainAxisSpacing: 19.w),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Hero(
                    tag: "ITS",
                    child: DiscoverSmallCard(
                      onTap: () {},
                      title: "ITS",
                      gradientStartColor: Color(0xff13DEA0),
                      gradientEndColor: Color(0xff06B782),
                      icon: SvgAsset(
                        assetName: AssetName.codefile,
                        color: Colors.white,
                        height: 30.w,
                        width: 30.w,
                      ),
                    ),
                  ),
                  DiscoverSmallCard(
                    onTap: () {},
                    title: "SSE",
                    gradientStartColor: Color(0xffFFD541),
                    gradientEndColor: Color(0xffF0B31A),
                    icon: SvgAsset(
                      assetName: AssetName.gear,
                      color: Colors.white,
                      height: 30.w,
                      width: 30.w,
                    ),
                  ),
                  DiscoverSmallCard(
                    onTap: () {},
                    title: "SAO",
                    icon: SvgAsset(
                      assetName: AssetName.electricguitar,
                      color: Colors.white,
                      height: 30.w,
                      width: 30.w,
                    ),
                  ),
                  DiscoverSmallCard(
                    onTap: () {},
                    title: "SAC",
                    icon: SvgAsset(
                      assetName: AssetName.basketball,
                      color: Colors.white,
                      height: 30.w,
                      width: 30.w,
                    ),
                  ),
                  DiscoverSmallCard(
                    onTap: () {},
                    title: "SBA",
                    icon: SvgAsset(
                      assetName: AssetName.chart,
                      color: Colors.white,
                      height: 30.w,
                      width: 30.w,
                    ),
                  ),
                  DiscoverSmallCard(
                    onTap: () {},
                    title: "SAHSS",
                    icon: SvgAsset(
                      color: Colors.white,
                      assetName: AssetName.filetext,
                      height: 30.w,
                      width: 30.w,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget FilterContainer() {
    return Container(
      height: 120.h,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 28.w,
          ),
          CategoryBoxes(
            text: "Insomnia",
            onPressed: (value) => print(value
            ),
          ),
          CategoryBoxes(
            text: "Depression",
            onPressed: (value) => print(value),
          ),
          CategoryBoxes(
            text: "Baby Sleep",
            onPressed: (value) => print(value),
          ),
          CategoryBoxes(
            text: "Insomnia",
            onPressed: (value) => print(value),
          ),
        ],
      ),
    );
  }

  void onSeeAllTapped() {}

  void onSleepMeditationTapped(Post post) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: ((context) => DetailPage(
              post: post,
            ))));
  }

  void onDepressionHealingTapped() {}

  void onSearchIconTapped() {}
}
