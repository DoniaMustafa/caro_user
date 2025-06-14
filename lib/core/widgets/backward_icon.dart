
import 'package:flutter/material.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../core/widgets/custom_icon.dart';

class BackwardIcon extends StatelessWidget {
  const BackwardIcon({super.key, required this.onPressed});
 
final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getMarginOrPadding(end: 20),
      child: CircleAvatar(
        backgroundColor: Colors.grey[100],
        child: IconButton(
          onPressed: onPressed,
          icon: const CustomIcon(
            icon: Icons.arrow_forward_ios,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
