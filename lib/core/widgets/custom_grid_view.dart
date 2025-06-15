import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.itemCount,
    required this.widget,
    this.shrinkWrap = false,
    this.reverse = false,
    this.padding,
    this.scroll = const BouncingScrollPhysics(),
    this.axisDirection = Axis.vertical,
    required this.aspectRatio, required this.axisCount,
  });

  final double aspectRatio;
  final int itemCount;
  final int axisCount;
  final Axis? axisDirection;
  final Widget? Function(BuildContext context, int index) widget;
  final bool? shrinkWrap;
  final ScrollPhysics? scroll;
  final bool? reverse;
  final EdgeInsetsDirectional? padding;
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      scrollDirection: axisDirection!,
      shrinkWrap: shrinkWrap!,
      reverse: reverse!,
      physics: scroll,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: axisCount,
        childAspectRatio: aspectRatio,
      ),

      padding: padding ?? getMarginOrPadding(all: 10),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return widget(context, index);
      }, childCount: itemCount),
    );
  }
}
