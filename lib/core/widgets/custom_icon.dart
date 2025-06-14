import 'package:caro_user_app/core/utils/size_utils.dart';
import 'package:flutter/cupertino.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.color, this.onTap});
  final IconData icon;
  final Color? color;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(icon, size: iconSize(9, 16), color: color),
    );
  }
}
