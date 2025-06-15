import '../../../../../core/export/export.dart';
import '../../../../../core/widgets/custom_grid_view.dart';
import '../../../../../core/widgets/custom_network_image.dart';
import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class ReleatedItems extends StatelessWidget {
  const ReleatedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
      padding: getMarginOrPadding(bottom: 18, end: 16, start: 16, top: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextWidget(
            text: "العروض المشابهة",
            style: getMediumTextStyle(),
          ),
          13.vs,
          CustomGridView(
            shrinkWrap: true,
            scroll: NeverScrollableScrollPhysics(),
            itemCount: 9,
            widget:
                (context, index) => Padding(
                  padding: getMarginOrPadding(all: 5),
                  child: CustomNetworkImage.rectangle(
                    imageUrl: AppAssets().ordersCar,
                    defaultAsset: AppAssets().ordersCar,
                  ),
                ),
            aspectRatio: 1,
            axisCount: 3,
          ),
        ],
      ),
    );
  }
}
