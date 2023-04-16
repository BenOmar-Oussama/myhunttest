
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_small_card_smaller.dart';
import 'package:meditation/widgets/svg_asset.dart';

import 'Models/Post.dart';

class DetailPage extends StatefulWidget {
  final Post post;
  const DetailPage({Key? key, required this.post}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121421),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  height: 80.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Hero(
                    tag: widget.post.EventName,
                    child: Material(
                      color: Colors.transparent,
                      child: Text(widget.post.EventName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34.w,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    widget.post.guildlines,
                    style: TextStyle(
                        color: Color(0xffffffff).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 28.w, vertical: 15.h),
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
                            onTap: () {},
                            child: Text("See All",
                                style: TextStyle(
                                    color: Color(0xff4A80F0),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.w)))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 279.w,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.post.relatedPhotos.length,
                      itemBuilder: (BuildContext context, int index) {
                        int likes = widget.post.likesPhoto[index];
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 24, right: 24, top: 0, bottom: 30),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(
                                      height: 400.w,
                                      width: 280.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xff121421),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                              
                                              color: Color(0xff4A80F0)
                                                  .withOpacity(0.1),
                                              blurRadius: 20,
                                              spreadRadius: 10,
                                              offset: Offset(0, 3))
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 220.w,
                                          width: 280.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              filterQuality: FilterQuality.low,
                                              fit: BoxFit.cover,
                                              image: AssetImage(widget
                                                  .post.relatedPhotos[index]),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Material(
                                              color: Colors.transparent,
                                              child: InkWell(
                                                borderRadius:
                                                    BorderRadius.circular(360),
                                                onTap: () {
                                                  debugPrint("${widget.post.likestatuts[index]}");
                                                  widget.post.likestatuts[index] = !widget.post.likestatuts[index];
                                                  widget.post.likestatuts[index] ? widget.post.likesPhoto[index]++ : widget.post.likesPhoto[index]--;
                                            
                                                  setState(() {
                                                    widget.post.likestatuts[index] = widget.post.likestatuts[index];
                                                  });
                                                },
                                                child: Container(
                                                  height: 30.w,
                                                  width: 30.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            360),
                                                  ),
                                                  child: Center(
                                                    child: SvgAsset(
                                                      assetName: AssetName.heart,
                                                      height: 24.w,
                                                      width: 24.w,
                                                      color: widget.post.likestatuts[index]
                                                          ? Colors.red
                                                          : Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "${likes}",
                                                style: TextStyle(
                                                    color: Color(0xff515979),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.w),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ],
                        );
                      }),
                  // child: ListView(
                  //   physics: BouncingScrollPhysics(),
                  //   scrollDirection: Axis.horizontal,
                  //   children: [
                  //     SizedBox(width: 28.w),
                  //     Container(
                  //       height: 280.w,
                  //       width: 280.w,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(
                  //           fit: BoxFit.cover,
                  //           image: AssetImage("assets/pics/pic1.png"),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(width: 20.w),
                  //     Container(
                  //       height: 280.w,
                  //       width: 280.w,
                  //       decoration: BoxDecoration(
                  //         color: Colors.blue,
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(
                  //           fit: BoxFit.cover,
                  //           image: AssetImage(
                  //             "assets/pics/pic2.jpg",
                  //           ),
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Row(
                    children: [
                      Container(
                        height: 56.w,
                        width: 56.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Center(
                            child: SvgAsset(
                                assetName: AssetName.headphone,
                                height: 28.w,
                                width: 28.w)),
                      ),
                      SizedBox(width: 16.w),
                      Container(
                        height: 56.w,
                        width: 56.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Center(
                            child: SvgAsset(
                                assetName: AssetName.tape,
                                height: 28.w,
                                width: 28.w)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 46.h),
                Padding(
                  padding:
                      EdgeInsets.only(left: 28.w, right: 28.w, bottom: 80.h),
                  child: Text(
                    widget.post.description,
                    style: TextStyle(
                        color: Color(0xffffffff).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                )
              ],
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: Color(0xff121421),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 22.w, right: 22.w, top: 20.h, bottom: 10.h),
                    child: Material(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(360),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 35.w,
                              width: 35.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                              ),
                              child: Center(
                                child: SvgAsset(
                                  assetName: AssetName.back,
                                  height: 20.w,
                                  width: 20.w,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                        left: 22.w, right: 0.w, top: 0.h, bottom: 0.h),
                            child: Hero(
                              tag: widget.post.ChallengeType.toString(),
                              child: SvgAsset(
                                assetName: widget.post.ChallengeType,
                                height: 50,
                                width: 50,
                                color: Colors.white,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      blurRadius: 14,
                                      spreadRadius: 3,
                                      color: Colors.white.withOpacity(0.2),
                                      offset: Offset(0, 2))
                                ]),
                              ),
                            ),
                          ),
                          DiscoverSmallCardFlexible(
                    onTap: () {},
                    tag: "ITS",
                    title: "ITS",
                    gradientStartColor: Color(0xff13DEA0),
                    gradientEndColor: Color(0xff06B782),
                    textSize: 20,
                    height: 50,
                    width: 80,
                  ),
                        ],
                      ),
                    ),
                  ),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 87.h,
                decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                        stops: [
                          0,
                          1
                        ],
                        colors: [
                          Color(0xff121421),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
                child: Center(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: onStartButtonPressed,
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Color(0xff4A80F0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          height: 56.h,
                          width: 319.w,
                          child: Center(
                              child: Text(
                            "Start",
                            style: TextStyle(
                                fontSize: 16.w,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onStartButtonPressed() {}

  void onBackIconTapped() {
    Get.back();
  }

  void onHeartIconTapped() {
    setState(() {
      
    });
  }
}
