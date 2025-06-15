import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/utils/app_list_constant.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_grid_view.dart';
import 'package:caro_user_app/core/widgets/custom_list_view.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';
import 'package:caro_user_app/features/search_for_me/presentation/widget/search_details/car_description.dart';
import 'package:caro_user_app/features/search_for_me/presentation/widget/search_details/car_photos_search.dart';
import 'package:caro_user_app/features/search_for_me/presentation/widget/search_details/comments_widget_serch_for_me.dart';
import 'package:caro_user_app/features/search_for_me/presentation/widget/search_details/releated_items.dart';
import 'package:flutter/material.dart';

import '../widget/search_details/car_details_search_for_me.dart';
import '../widget/search_details/connect_widget.dart';
import '../widget/search_details/payment_container.dart';
import '../widget/search_details/seller_information.dart';

class SearchForMeDetails extends StatelessWidget {
  const SearchForMeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      padding: getMarginOrPadding(horizontal: 20, bottom: 40 , top: 11),
      title: "سيارات",
      isBack: true,
      children: [
        SellerInformation(),
        PaymentContainer(),
        CarDescriptionSearchForMe(),
        CarPhotosSearchForMe(),
        CarDetailsSearchForMe(),
        ConnectWidget(),
        CommentsWidgetSerchForMe(),
        ReleatedItems(),
      ],
    );
  }
}
