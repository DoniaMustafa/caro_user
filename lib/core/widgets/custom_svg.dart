import 'package:caro_user_app/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {
  CustomSvg._internal();
  CustomSvg.network({
    super.key,
    required this.asset,
    this.color,
    this.width,
    this.height,
  }) : isAssets = false;
  String? asset;
  Color? color;
  bool? isAssets;
  double? width;
  double? height;
  CustomSvg.assets({
    super.key,
    required this.asset,
    this.color,
    this.width,
    this.height,
  }) : isAssets = true;

  @override
  Widget build(BuildContext context) {
    return isAssets.isTrue ? _assetSvg : _networkSvg;
  }

  get _assetSvg => SvgPicture.asset(
    asset!,
    color: color,
    fit: BoxFit.fill,
    width: width,
    height: height,
    matchTextDirection: true,
  );
  get _networkSvg => SvgPicture.network(
    asset!,
    color: color,
    fit: BoxFit.fill,width: width,
    height: height,
    matchTextDirection: true,
  );
}
