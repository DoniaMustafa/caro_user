import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/features/auth/presentation/widget/login/app_card.dart';
import 'package:caro_user_app/features/auth/presentation/widget/reset_password/reset_password_card.dart';

import '../../../../core/export/export.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.children(
      isAppBar: true,
      backgroundColor: AppColors.white,
      children: [
        67.vs,
        CustomNetworkImage.circular(
          imageUrl: AppAssets().logo,
          defaultAsset: AppAssets().logo,
          radius: 140,
        ),
        33.vs,
        CustomTextWidget(
          text: 'إعادة كلمة المرور',
          style: getSemiboldTextStyle(
            fontSize: 18,
            color: AppColors.primaryColor,
          ),
        ),
        12.vs,

        CustomTextWidget(
          text: 'أدخل كلمة المرور الجديدة',
          style: getRegularTextStyle(color: AppColors.grey800),
        ),
        38.vs,
        ResetPasswordCard(),
      ],
    );
  }
}
