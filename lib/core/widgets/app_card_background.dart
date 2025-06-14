import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/shapes/rectangle_shape.dart';

class AppCardBackground extends StatelessWidget {
  const AppCardBackground({super.key, required this.child, this.padding});
  final Widget child;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      color: AppColors.white300,
      margin: getMarginOrPadding(horizontal: 9),
      borderRadius: BorderRadiusDirectional.circular(20),
      padding: padding ?? getMarginOrPadding(top: 24, bottom: 17),
      child: child,
    );
  }
}
