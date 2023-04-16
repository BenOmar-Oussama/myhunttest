import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/svg_asset.dart';

class DiscoverCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color? gradientStartColor;
  final Color? gradientEndColor;
  final double? height;
  final double? width;
  final Widget? vectorBottom;
  final Widget? vectorTop;
  final Function? onTap;
  final String tag;
  final AssetName? TypeOfChallenge;
  final AssetName? right;

  const DiscoverCard({
    Key? key,
    this.title,
    this.subtitle,
    this.gradientStartColor,
    this.gradientEndColor,
    this.height,
    this.width,
    this.vectorBottom,
    this.vectorTop,
    this.onTap,
    required this.tag,
    this.TypeOfChallenge,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var x;
    if (TypeOfChallenge == AssetName.camera)
      x = "PictureQuest";
    else if (TypeOfChallenge == AssetName.pin)
      x = "FindMeQuest";
    else
      x = "AddValideChall";
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onTap!(),
        borderRadius: BorderRadius.circular(26),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            gradient: LinearGradient(
              colors: [
                gradientStartColor ?? Color(0xff441DFC),
                gradientEndColor ?? Color(0xff4E81EB),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Container(
            height: 176.w,
            width: 305.w,
            child: Stack(
              children: [
                vectorBottom ??
                    ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: SvgAsset(
                          height: 176.w,
                          width: 305.w,
                          assetName: AssetName.vectorBottom),
                    ),
                vectorTop ??
                    ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: SvgAsset(
                          height: 176.w,
                          width: 305.w,
                          assetName: AssetName.vectorTop),
                    ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 24.h, bottom: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(                            
                            tag: tag,
                            child: Material(
                              color: Colors.transparent,
                              child: Text(
                                title!,
                                style: TextStyle(
                                    fontSize: 22.w,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          subtitle != null
                              ? Text(
                                  subtitle!,
                                  style: TextStyle(
                                      fontSize: 16.w,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                )
                              : Container(),
                        ],
                      ),
                      Row(
                        children: [
                          SvgAsset(
                            assetName: TypeOfChallenge ?? AssetName.skull,
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
                          SizedBox(width: 10.w),
                          Text(
                            x,
                            style: TextStyle(
                                fontSize: 13.w,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          // SizedBox(width: 24.w),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right : 24.0),
                            child: SvgAsset(
                              assetName: right ?? AssetName.skull,
                              height: 40,
                              width: 40,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
