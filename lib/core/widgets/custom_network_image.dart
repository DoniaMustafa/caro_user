import 'package:cached_network_image/cached_network_image.dart';
import 'package:caro_user_app/core/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_svg.dart';

class CustomNetworkImage extends StatelessWidget {
  String? imageUrl;
  String? defaultAsset;
  double? bordWidth;
  double? height;
  double? width;
  double? radius;
  Color? borderColor;
  bool? isCircle;
  EdgeInsetsGeometry? padding;
  CustomNetworkImage._internal();
  CustomNetworkImage.circular({
    this.radius,
    required this.imageUrl,
    this.bordWidth,
    this.borderColor,
    this.defaultAsset,
    super.key,
  }) : isCircle = true;
  CustomNetworkImage.rectangle({
    this.height,
    this.width,
    this.radius,
    this.borderColor,
    required this.imageUrl,
    this.bordWidth,
    this.defaultAsset,
    this.padding,
    super.key,
  }) : isCircle = false;

  @override
  Widget build(BuildContext context) {
    return isCircle!.isTrue ? buildCircularImage : buildRectangleImage;
  }

  get buildCircularImage => Container(
    height: radius,
    width: radius,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border:
          bordWidth.isNotNull
              ? Border.all(width: bordWidth!, color: Colors.white)
              : null,
    ),
    child:
        imageUrl.validateNetworkAsset && imageUrl!.contains("svg").isTrue
            ? CustomSvg.network(
              asset: imageUrl!,
              // fit: BoxFit.contain,
              // height: radius,
              // width: radius,
            )
            : imageUrl.validateNetworkAsset
            ? ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadiusDirectional.circular(50),
              child: CachedNetworkImage(
                imageUrl: imageUrl!,
                width: radius,
                height: radius,
                fit: BoxFit.fill,
                placeholder:
                    (context, url) => const Center(
                      // child: Lottie.asset(AppAssets().imageLoading),
                    ),
                errorWidget:
                    (context, url, error) =>
                        buildDefaultCircularAsset(defaultAsset),
              ),
            )
            : buildDefaultCircularAsset(imageUrl),
  );
  get buildRectangleImage => Container(
    height: height,
    width: width,
    padding: padding,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
      borderRadius: radius.isNotNull ? BorderRadius.circular(radius!) : null,
      border:
          bordWidth.isNotNull
              ? Border.all(width: bordWidth!, color: Colors.white)
              : null,
    ),
    // radius: radius,
    child:
        imageUrl.validateNetworkAsset && imageUrl!.contains("svg").isTrue
            ? CustomSvg.network(asset: imageUrl!)
            : imageUrl.validateNetworkAsset
            ? CachedNetworkImage(
              imageUrl: imageUrl!,
              width: width,
              fit: BoxFit.fill,

              height: height,
              // fit: BoxFit.fill,
              placeholder:
                  (context, url) => Center(
                    // child: Lottie.asset(AppAssets().imageLoading),
                  ),
              errorWidget:
                  (context, url, error) => buildRectangleAsset(defaultAsset),
            )
            : buildRectangleAsset(imageUrl),
  );
  buildDefaultCircularAsset(String? asset) => Container(
    // color: AppColors.mainAppColor,
    child:
        asset.isNotNull
            ? asset!.contains("svg").isTrue
                ? CustomSvg.assets(asset: defaultAsset!)
                // SvgPicture.asset(
                //   defaultAsset!,
                //   fit: BoxFit.contain,
                //   height: radius,
                //   width: radius,
                // )
                : asset.validateNetworkAsset
                ? CachedNetworkImage(imageUrl: asset)
                : defaultAsset!.contains('svg')
                ? CustomSvg.assets(asset: defaultAsset!)
                // SvgPicture.asset(
                //   defaultAsset!,
                //   fit: BoxFit.contain,
                //   height: radius,
                //   width: radius,
                // )
                : Container(
                  height: radius,
                  width: radius,
                  decoration: BoxDecoration(
                    // color: AppColors.mainAppColor,
                    image: DecorationImage(
                      image: AssetImage(defaultAsset!),
                      fit: BoxFit.fill,
                    ),
                  ),
                )
            : defaultAsset!.contains('svg')
            ? CustomSvg.assets(asset: defaultAsset!)
            // SvgPicture.asset(
            //   defaultAsset!,
            //   fit: BoxFit.contain,
            //   height: radius,
            //   width: radius,
            // )
            : Container(
              height: radius,
              width: radius,
              decoration: BoxDecoration(
                // color: AppColors.mainAppColor,
                image: DecorationImage(
                  image: AssetImage(defaultAsset!),
                  fit: BoxFit.fill,
                ),
              ),
            ),
  );
  buildRectangleAsset(String? asset) => Container(
    // color: AppColors.primaryColor,
    child:
        asset.isNotNull
            ? asset!.contains("svg").isTrue
                ? CustomSvg.assets(asset: asset!)
                // SvgPicture.asset(
                // asset,
                // height: height,
                // width: width,
                // fit: BoxFit.fill,
                // )
                : asset.validateNetworkAsset
                ? CachedNetworkImage(imageUrl: asset)
                : Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    // color: AppColors.primaryColor,
                    image: DecorationImage(
                      image: AssetImage(asset),
                      fit: BoxFit.fill,
                    ),
                  ),
                )
            : Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                // color: AppColors.mainAppColor,
                image: DecorationImage(
                  image: AssetImage(defaultAsset!),
                  fit: BoxFit.fill,
                ),
              ),
            ),
  );
}
