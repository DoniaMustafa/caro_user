import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/utils/app_fonts.dart';
import 'package:caro_user_app/core/utils/app_list_constant.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_grid_view.dart';
import 'package:caro_user_app/core/widgets/custom_list_tile_vertical.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/form_field/search_form_field.dart';
import 'package:caro_user_app/core/widgets/shapes/circel_shape.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      isAppBar: false,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        44.vs,
        Row(
          children: [
            CustomNetworkImage.circular(
              imageUrl: AppAssets().user,
              defaultAsset: AppAssets().user,
              radius: 46,
            ),
            12.hs,
            Expanded(
              child: CustomTextWidget(
                textAlign: TextAlign.start,
                text: 'إعلاناتي',
                style: getMediumTextStyle(
                  fontSize: 16,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            CustomIcon(
              icon: Icons.notifications,
              size: iconSize(18.67, 21),
              color: AppColors.primaryColor,
            ),
          ],
        ),
        16.vs,
        Row(
          children: [
            Expanded(child: SearchFormField(controller: searchController)),
            5.hs,
            RectangleShape.tap(
              padding: getMarginOrPadding(all: 8),
              borderRadius: 27.radius,
              color: AppColors.red300,
              child: Row(
                children: [
                  CircleShape(
                    height: 18.h,
                    alignment: Alignment.center,
                    width: 18.w,
                    color: AppColors.white,
                    child: CustomIcon(
                      icon: Icons.add,
                      size: iconSize(6 * 2, 7 * 2),
                      color: AppColors.red300,
                    ),
                  ),
                  3.hs,
                  CustomTextWidget(
                    text: 'إضافة اعلان',
                    style: getMediumTextStyle(
                      fontSize: 12,
                      fontFamily: FontFamilies.cairoFamily,
                      color: AppColors.white,
                    ),
                  ),
                  3.hs,
                  CustomIcon(
                    icon: Icons.camera_alt_rounded,
                    size: iconSize(21, 21),
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
          ],
        ).withSizedBox(h: 36),
        20.vs,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            2,
            (index) => Expanded(
              child: AspectRatio(
                aspectRatio: 1.1 / 0.5,
                child: CustomListTileVertical(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  imageAlign: AlignmentDirectional.bottomEnd,
                  index: index,
                  model: AppListConstant.headerSection[index],
                  fontTitle: 14,
                ),
              ),
            ),
          ),
        ),
        12.vs,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            AppListConstant.homeService.length,
            (index) => Expanded(
              child: AspectRatio(
                aspectRatio: 0.98 / 1.0,
                child: CustomListTileVertical(
                  index: index,
                  fontTitle: 10,
                  model: AppListConstant.homeService[index],
                ),
              ),
            ),
          ),
        ),
        16.vs,
        CustomTextWidget(
          text: 'الاقسام الشائعة',
          style: getMediumTextStyle(
            // color: AppColors.لاb,
            fontSize: 16,
          ),
        ),
        12.vs,

        CustomScrollView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return CustomListTileVertical(
                  index: index,
                  model: AppListConstant.popularCategory[index],
                  fontTitle: 16,
                );
              }, childCount: AppListConstant.popularCategory.length - 1),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 12,
                childAspectRatio: 0.9 / 1.0,
              ),
            ),

            SliverToBoxAdapter(
              child: CustomListTileVertical(
                index: 6,
                fontTitle: 16,
                model: AppListConstant.popularCategory[6],
              ).withSizedBox(h: 120.h).withPadding(top: 12),
            ),
          ],
        ),
        16.vs,
        CustomTextWidget(
          text: 'المراكز',
          style: getMediumTextStyle(
            // color: AppColors.لاb,
            fontSize: 16,
          ),
        ),
        12.vs,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            AppListConstant.centers.length,
            (index) => Expanded(
              child: AspectRatio(
                aspectRatio: 0.98 / 1.0,
                child: CustomListTileVertical(
                  index: index,
                  fontTitle: 15,
                  model: AppListConstant.centers[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
