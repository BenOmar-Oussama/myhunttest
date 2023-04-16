import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/icons.dart';

class SvgAsset extends StatelessWidget {
  final AssetName? assetName;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  final BoxDecoration? decoration;
  const SvgAsset(
      {Key? key, this.assetName, this.height, this.width, this.fit, this.color, this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: SizedBox(
        height: height,
        width: width,
        child: SvgPicture.asset(
          MeditationSvgAssets().assets[assetName]!,
          fit: fit ?? BoxFit.cover,
          color: color,
        ),
      ),
    );
  }
}
