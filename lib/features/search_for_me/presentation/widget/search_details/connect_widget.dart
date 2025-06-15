import '../../../../../core/export/export.dart';
import '../../../../../core/widgets/shapes/rectangle_shape.dart';

class ConnectWidget extends StatelessWidget {
  const ConnectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RectangleShape.withoutTap(
      color: AppColors.white,
      margin: getMarginOrPadding(bottom: 12),
      borderRadius: BorderRadius.circular(12),
      padding: getMarginOrPadding(end: 14, top: 12, bottom: 15, start: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextWidget(text: "تواصل", style: getMediumTextStyle()),
          14.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ConnectionType(text: "اتصال"),
              ConnectionType(text: "واتساب"),
              ConnectionType(text: "محادثه"),
            ],
          ),
        ],
      ),
    );
  }
}

class ConnectionType extends StatelessWidget {
  const ConnectionType({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return RectangleShape.tap(
      color: AppColors.white300,
      borderRadius: BorderRadius.circular(8),
      padding: getMarginOrPadding(vertical: 5, horizontal: 30),
      child: CustomTextWidget(
        text: text,
        style: getMediumTextStyle(color: AppColors.red300),
      ),
    );
  }
}
