import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/svg_asset.dart';

class DiscoverSmallCardFlexible extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color? gradientStartColor;
  final Color? gradientEndColor;
  final double? height;
  final double? width;
  final Widget? vectorBottom;
  final Widget? vectorTop;
  final double? borderRadius;
  final Widget? icon;
  final double? textSize;
  final String? tag;
  final Function()? onTap;
  const DiscoverSmallCardFlexible(
      {Key? key,
      this.tag,
      this.textSize,
      this.title,
      this.subtitle,
      this.gradientStartColor,
      this.gradientEndColor,
      this.height,
      this.width,
      this.vectorBottom,
      this.vectorTop,
      this.borderRadius,
      this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap ?? () {},
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                gradientStartColor ?? Color(0xff441DFC),
                gradientEndColor ?? Color(0xff4E81EB),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: height,
                  width: width,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: height,
                        width: width,
                        child: SvgAsset(assetName: AssetName.vectorSmallBottom),
                      ),
                      SizedBox(
                        child: SvgAsset(
                            height: height,
                            width: width,
                            fit: BoxFit.fitHeight,
                            assetName: AssetName.vectorSmallTop),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height,
                width: width,
                child: Padding(
                  padding: EdgeInsets.only(left: 22.w, top: 10.w, bottom: 5.w , right:10 ),
                  child: Text(
                    title!,
                    style: TextStyle(
                        fontSize: textSize ?? 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
