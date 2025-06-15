import '../../../../../core/export/export.dart';
import '../../../../../core/utils/app_list_constant.dart';
import '../../../../../core/widgets/custom_grid_view.dart';
import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class CarDetailsSearchForMe extends StatelessWidget {
  const CarDetailsSearchForMe({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      margin: getMarginOrPadding(bottom: 16),
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
      padding: getMarginOrPadding(end: 15, start: 15, top: 14, bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextWidget(
            text: "المواصفات و التفاصيل",
            style: getMediumTextStyle(),
          ),
          12.vs,
          CustomGridView(
            itemCount: AppListConstant.carDetailsStaticData.length,
            axisCount: 4,
            scroll: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            widget:
                (context, index) => RectangleShape.withoutTap(
                  isBoarder: true,
                  color: AppColors.white,
                  margin: getMarginOrPadding(all: 6),
                  borderRadius: BorderRadius.circular(10),
                  padding: getMarginOrPadding(
                    top: 14,
                    start: 5,
                    end: 6,
                    bottom: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomSvg.assets(
                          asset:
                              AppListConstant.carDetailsStaticData[index].icon!,
                        ),
                      ),
                      8.vs,
                      Expanded(
                        child: CustomTextWidget(
                          text:
                              AppListConstant
                                  .carDetailsStaticData[index]
                                  .title!,
                          style: getMediumTextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
            aspectRatio: 1,
          ),
          20.vs,
          CustomTextWidget(text: "الالوان", style: getMediumTextStyle()),
          12.vs,
          ColorDetailsForCar(
            insideColor: AppColors.black,
            insideColorText: "اسود",
            outsideColor: AppColors.white,
            outsideColorText: "ابيض",
          ),
        ],
      ),
    );
  }
}

class ColorDetailsForCar extends StatelessWidget {
  const ColorDetailsForCar({
    super.key,
    required this.insideColorText,
    required this.outsideColorText,
    required this.insideColor,
    required this.outsideColor,
  });
  final String insideColorText;
  final String outsideColorText;
  final Color insideColor;
  final Color outsideColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RectangleShape.withoutTap(
          isBoarder: true,

          borderRadius: BorderRadius.circular(10),
          padding: getMarginOrPadding(end: 8, bottom: 9, top: 8, start: 49),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomTextWidget(
                text: "اللون الخارجي",
                style: getMediumTextStyle(color: AppColors.grey, fontSize: 10),
              ),
              6.vs,
              Row(
                children: [
                  CustomTextWidget(
                    text: outsideColorText,
                    style: getMediumTextStyle(
                      color: AppColors.red300,
                      fontSize: 10,
                    ),
                  ),
                  6.hs,
                  RectangleShape.withoutTap(
                    width: 16,
                    height: 16,
                    color: outsideColor,
                    borderRadius: BorderRadius.circular(4),
                    isBoarder: true,

                    child: Container(),
                  ),
                ],
              ),
            ],
          ),
        ),
        8.hs,
        RectangleShape.withoutTap(
          isBoarder: true,
          borderRadius: BorderRadius.circular(10),
          padding: getMarginOrPadding(end: 8, bottom: 9, top: 8, start: 49),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomTextWidget(
                text: "اللون الداخلي",
                style: getMediumTextStyle(color: AppColors.grey, fontSize: 10),
              ),
              6.vs,
              Row(
                children: [
                  CustomTextWidget(
                    text: insideColorText,
                    style: getMediumTextStyle(
                      color: AppColors.red300,
                      fontSize: 10,
                    ),
                  ),
                  6.hs,
                  RectangleShape.withoutTap(
                    width: 16,
                    height: 16,
                    borderRadius: BorderRadius.circular(4),
                    color: insideColor,
                    isBoarder: true,
                    child: Container(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
