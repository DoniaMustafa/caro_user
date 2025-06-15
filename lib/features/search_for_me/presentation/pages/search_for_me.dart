import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/utils/app_list_constant.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';
import 'package:flutter/material.dart';

import '../widget/search_item_search_for_me.dart';

class SearchForMe extends StatelessWidget {
  const SearchForMe({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.child(
      title: "ابحث لي",
      isBack: true,
      child: Column(
        children: [
          Row(
            children: [
              RectangleShape.tap(
                padding: getMarginOrPadding(start: 19, end: 9, vertical: 7),
                borderRadius: BorderRadius.circular(27),
                color: AppColors.red300,
                child: Row(
                  children: [
                    CustomTextWidget(
                      text: "اضف طلبك",
                      style: getMediumTextStyle(color: Colors.white),
                    ),
                    9.hs,
                    CustomIcon(icon: Icons.add_circle, color: AppColors.white),
                  ],
                ),
              ),
              5.hs,
              Expanded(
                child: CustomTextFormField(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                  hintText: "ابحث في ابحثلي",
                  isFill: true,
                  hintStyle: getRegularTextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                  ),
                  textDirection: TextDirection.rtl,
                  hintTextDirection: TextDirection.rtl,
                  suffixIcon: CustomIcon(icon: Icons.search),
                ),
              ),
            ],
          ),
          11.vs,
          CustomNetworkImage.rectangle(
            height: 112.h,
            imageUrl: AppAssets().carForSeachForMe,
            defaultAsset: AppAssets().carForSeachForMe,
          ),
          20.vs,
          Expanded(
            child: ListView.builder(
              itemCount: AppListConstant.searchForMeStaticData.length,
              itemBuilder:
                  (context, index) => SearchItemInSearchForMe(
                    title: AppListConstant.searchForMeStaticData[index].title!,
                    status: AppListConstant.searchForMeStaticData[index].status,
                    location:
                        AppListConstant.searchForMeStaticData[index].location!,
                    time: AppListConstant.searchForMeStaticData[index].time!,
                    price: AppListConstant.searchForMeStaticData[index].price!,
                    image: AppListConstant.searchForMeStaticData[index].image!,
                    messages:
                        AppListConstant.searchForMeStaticData[index].messages!,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

