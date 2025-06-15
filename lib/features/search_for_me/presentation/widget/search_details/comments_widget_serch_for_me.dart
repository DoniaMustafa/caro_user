import 'package:caro_user_app/core/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/export/export.dart';
import '../../../../../core/widgets/custom_network_image.dart';
import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class CommentsWidgetSerchForMe extends StatelessWidget {
  const CommentsWidgetSerchForMe({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      color: AppColors.white,
      margin: getMarginOrPadding(bottom: 14),
      borderRadius: BorderRadius.circular(16),
      padding: getMarginOrPadding(end: 20, bottom: 8, top: 12, start: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextWidget(text: "التعليقات", style: getMediumTextStyle()),
          14.vs,
          CustomListView(
            separatorWidget:
                (context, index) => Divider(
                  height: 24.h,
                  thickness: 1,
                  endIndent: 0,
                  indent: 0,
                  color: AppColors.grey,
                ),
            shrinkWrap: true,
            scroll: NeverScrollableScrollPhysics(),
            itemCount: 3,
            widget: (context, index) => CommentDetails(),
          ),
          8.vs,
          RectangleShape.tap(
            color: AppColors.red300,
            borderRadius: BorderRadius.circular(8),
            padding: getMarginOrPadding(vertical: 7, horizontal: 10),
            child: CustomTextWidget(
              text: "متابعة الردود",

              style: getMediumTextStyle(fontSize: 12, color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class CommentDetails extends StatelessWidget {
  const CommentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIcon(
          icon: Icons.more_vert,
          size: iconSize(4, 16),
          color: AppColors.grey,
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomTextWidget(
              text: "منذ ساعة",
              style: getMediumTextStyle(fontSize: 8, color: AppColors.grey),
            ),
            8.hs,
            CustomTextWidget(
              text: "تميم الراجحي",
              style: getMediumTextStyle(color: AppColors.red300, fontSize: 12),
            ),
            10.vs,
            CustomTextWidget(
              textAlign: TextAlign.center,
              text: "التعليق يكتب هنا ، التعليق يكتب هنا ",
              style: getRegularTextStyle(),
            ),
            17.vs,
            Row(
              children: [
                CustomTextWidget(
                  text: "الرد",
                  style: getMediumTextStyle(
                    color: AppColors.red300,
                    fontSize: 12,
                  ),
                ),
                6.hs,
                CustomIcon(
                  icon: Icons.reply,
                  color: AppColors.red300,
                  size: iconSize(13, 9),
                ),
              ],
            ),
          ],
        ),

        10.hs,
        CustomNetworkImage.circular(
          imageUrl: AppAssets().logo,
          defaultAsset: AppAssets().logo,

          radius: 50,
        ),
      ],
    );
  }
}
