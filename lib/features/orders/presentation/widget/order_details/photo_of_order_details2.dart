
import 'package:caro_user_app/core/export/export.dart';

import '../../../../../core/widgets/custom_list_view.dart';
import '../../../../../core/widgets/custom_network_image.dart';

class PhotoOfOrderDetails2 extends StatelessWidget {
  const PhotoOfOrderDetails2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.h,
      child: CustomListView(
        reverse: true,
        axisDirection: Axis.horizontal,
        itemCount: 3,
        widget:
            (context, index) => CustomNetworkImage.rectangle(
              padding: getMarginOrPadding(start: 10),
              imageUrl: AppAssets().ordersCar,
              defaultAsset: AppAssets().ordersCar,
              height: 72.h,
              width: 72.w,
            ),
      ),
    );
  }
}
