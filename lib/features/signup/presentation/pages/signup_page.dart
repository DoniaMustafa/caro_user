import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../config/routes/app_routes_helper.dart';
import '../../../../core/widgets/backward_icon.dart';
import '../widgets/container_body.dart';
import '../widgets/title_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          BackwardIcon(
            onPressed: () {
              pop(Routes.onBoardRoute);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              18.vs,
              const TitleWidget(),
              38.vs,
              const ContainerOfBody(),
            ],
          ),
        ),
      ),
    );
  }
}
