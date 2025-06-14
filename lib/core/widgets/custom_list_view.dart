
import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:flutter/material.dart';




class CustomListView extends StatelessWidget {
  const CustomListView(
      {super.key,
      required this.itemCount,
      required this.widget,
      this.shrinkWrap = false,
      this.reverse = false,
      this.padding,
      this.scroll = const BouncingScrollPhysics(),
      this.axisDirection = Axis.vertical,
      this.separatorWidget});
  final int itemCount;
  final Axis? axisDirection;
  final Widget? Function(BuildContext context, int index) widget;
  final Widget Function(BuildContext context, int index)? separatorWidget;
  final bool? shrinkWrap;
  final ScrollPhysics? scroll;
  final bool? reverse;
  final EdgeInsetsDirectional? padding;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: axisDirection!,
        shrinkWrap: shrinkWrap!,
        reverse: reverse!,
        physics: scroll,
        padding: padding ?? getMarginOrPadding(all: 10),
        itemBuilder: widget,
        separatorBuilder:
            separatorWidget ?? (context, index) => const SizedBox.shrink(),
        itemCount: itemCount);
  }
}
