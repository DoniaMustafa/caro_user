import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/features/orders/presentation/widget/offer_widget_finished_order.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_network_image.dart';

class FinishedOrders extends StatelessWidget {
  const FinishedOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const OfferWidgetFinishedOrder(), 14.vs, const OfferWidgetFinishedOrder()],
    );
  }
}
