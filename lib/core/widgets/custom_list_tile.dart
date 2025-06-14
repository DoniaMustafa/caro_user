
import 'package:flutter/cupertino.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.onTap,
    this.isStareWidget = false,
    this.endTitle,
    this.endSubtitle,
    required this.title,
    this.image,
    this.color,
    this.style,
    this.radiusCard,
    this.isBorder = true,
    this.isIcon = false,
    this.padding,
    this.isCircle = true,
    this.spacer = 20,
    this.radius,
    this.subTitleStyle,
    this.radiusDirectional,
    this.iconColor,
    this.subtitle,
    this.dividerHeight,
    this.widget,
    this.boxShadow,
    this.rate,
    this.subTitleColor,
    this.margin,
    this.followers,
    this.borderColor,
    this.nextWidget,
    this.defaultAsset,
    this.isDivider = true,
    this.subSubtitle,
  });

  final String title;
  final String? endTitle;
  final EdgeInsetsDirectional? margin;
  final BorderRadiusDirectional? radiusDirectional;
  final double? rate;
  final String? followers;
  final String? subtitle;
  final String? subSubtitle;
  final bool? isIcon;
  final EdgeInsetsDirectional? padding;
  final double? spacer;
  final double? radius;
  final double? radiusCard;
  final double? dividerHeight;
  final bool? isBorder;
  final bool? isCircle;

  final String? defaultAsset;
  final bool? isDivider;
  final bool? isStareWidget;
  final Widget? widget;
  final Widget? nextWidget;
  final String? image;
  final TextStyle? style;
  final TextStyle? subTitleStyle;
  final Color? subTitleColor;
  final String? endSubtitle;
  final Color? color;
  final Color? iconColor;
  final Color? borderColor;
  final VoidCallback? onTap;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container();    // return GestureDetector(
    //   onTap: onTap,
    //   child: CustomCard(
    //     margin: margin,
    //     radius: radiusCard ?? 10.r,
    //     radiusDirectional: isDivider.isTrue
    //         ? radiusDirectional ??
    //         BorderRadiusDirectional.only(
    //             topEnd: Radius.circular(10.r),
    //             bottomEnd: Radius.circular(10.r))
    //         : null,
    //     padding: padding,
    //     borderWidth: isBorder.isTrue ? 1 : 0,
    //     borderColor: isBorder.isTrue
    //         ? borderColor ?? AppColors.borderColor2
    //         : null,
    //     boxShadow: boxShadow,
    //     backgroundColor: color,
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         if (isStareWidget.isTrue)
    //           CustomCard(
    //             width: 55,
    //             height: 40,
    //             backgroundColor:
    //             context.read<HomeOperationCubit>().isDark.isTrue
    //                 ? AppColors.white
    //                 : AppColors.mainAppColor,
    //             child: CustomIcon(
    //               icon: Icons.play_arrow,
    //               size: 25,
    //               color: context.read<HomeOperationCubit>().isDark.isTrue
    //                   ? AppColors.mainAppColor
    //                   : AppColors.white,
    //             ),
    //           ),
    //         if (isStareWidget.isTrue) 10.hs,
    //         if (image.isNotNull)
    //           isCircle.isTrue
    //               ? CustomNetworkImage.circular(
    //             imageUrl: image,
    //             radius: radius ?? 65.r,
    //             defaultAsset: defaultAsset,
    //           )
    //               : CustomNetworkImage.rectangle(
    //             imageUrl: image,
    //             width: 60.w,
    //             defaultAsset: defaultAsset,
    //             height: 65.h,
    //             // radius: 50.r,
    //           ),
    //         // CustomSvg(asset: image!),
    //         if (image.isNotNull) spacer!.hs,
    //         Expanded(
    //             child: Column(
    //               mainAxisSize: MainAxisSize.min,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   title,
    //                   style: style.isNull
    //                       ? getBoldTextStyle(
    //                     fontSize: 15,
    //                   )
    //                       : style,
    //                 ),
    //                 5.vs,
    //                 if (subtitle.isNotNull)
    //                   CustomTextWidget(
    //                     text: subtitle!,
    //                     style: subTitleStyle ??
    //                         getRegularTextStyle(
    //                           fontSize: 14,
    //                           color: subTitleColor ?? AppColors.grayColor1,
    //                         ),
    //                     lines: 1,
    //                     overflow: TextOverflow.ellipsis,
    //                     textScalar: 0.9,
    //                   ),  5.vs,
    //                 if (subSubtitle.isNotNull)
    //                   CustomTextWidget(
    //                     text: subSubtitle!,
    //                     style: subTitleStyle ??
    //                         getRegularTextStyle(
    //                           fontSize: 16,
    //                           color: subTitleColor ?? AppColors.grayColor1,
    //                         ),
    //                     lines: 1,
    //                     overflow: TextOverflow.ellipsis,
    //                     textScalar: 0.9,
    //                   ),
    //               ],
    //             )),
    //         if (isIcon!)
    //           Icon(
    //             Icons.arrow_forward_ios,
    //             size: 15,
    //             color: iconColor ??
    //                 (context.read<HomeOperationCubit>().isDark.isTrue
    //                     ? AppColors.white
    //                     : AppColors.black),
    //           ),
    //         if (isIcon.isFalse)
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.end,
    //             children: [
    //               if (endTitle.isNotNull)
    //                 Row(
    //                   children: [
    //                     if (followers.isNotNull)
    //                       CustomTextWidget(
    //                           text: followers!,
    //                           style: subTitleStyle ??
    //                               getSemiboldTextStyle(
    //                                 fontSize: 15,
    //                                 color: context
    //                                     .read<HomeOperationCubit>()
    //                                     .isDark
    //                                     .isTrue
    //                                     ? AppColors.white
    //                                     : AppColors.mainAppColor,
    //                               )),
    //                     if (followers.isNotNull) 5.hs,
    //                     CustomTextWidget(
    //                         text: endTitle!,
    //                         style: subTitleStyle ??
    //                             getSemiboldTextStyle(
    //                               fontSize: 12,
    //                             )),
    //                   ],
    //                 ),
    //               if (endTitle.isNotNull) 5.vs,
    //               if (endSubtitle.isNotNull)
    //                 CustomTextWidget(
    //                     text: endSubtitle!,
    //                     style: subTitleStyle ??
    //                         getSemiboldTextStyle(
    //                             fontSize: 15,
    //                             color: AppColors.mainAppColor,
    //                             height: 1)),
    //               if (rate.isNotNull)
    //                 BuildRatingBar(
    //                   itemCount: 5,
    //                   isIgnoreRate: true,
    //                   itemSize: 15,
    //                   rate: rate!,
    //                 ),
    //               if (widget.isNotNull) widget!
    //             ],
    //           ),
    //         if (nextWidget.isNotNull) 15.hs,
    //         if (nextWidget.isNotNull) nextWidget!
    //       ],
    //     ),
    //   ),
    // );
  }
}
