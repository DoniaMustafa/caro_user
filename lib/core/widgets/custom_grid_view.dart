import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.itemCount,
    required this.widget,
    this.shrinkWrap = false,
    this.reverse = false,
    this.padding, required this.crossCount,
    this.scroll = const BouncingScrollPhysics(),
    this.axisDirection = Axis.vertical,
    required this.aspectRatio,
  });

  final double aspectRatio;
  final int itemCount; final int crossCount;
  final Axis? axisDirection;
  final Widget? Function(BuildContext context, int index) widget;
  final bool? shrinkWrap;
  final ScrollPhysics? scroll;
  final bool? reverse;
  final EdgeInsetsDirectional? padding;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      scrollDirection: axisDirection!,
      shrinkWrap: shrinkWrap!,
      reverse: reverse!,
      physics: scroll,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossCount,
        childAspectRatio: aspectRatio,
        crossAxisSpacing: 9,
        mainAxisSpacing: 12,
      ),
      padding: padding ?? getMarginOrPadding(all: 10),itemCount: itemCount,
      itemBuilder: widget

    );
  }
}
