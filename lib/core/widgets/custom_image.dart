import 'package:caro_user_app/core/export/export.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(image));
  }
}
