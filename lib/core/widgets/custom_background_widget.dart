import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_text_widget.dart';

class CustomBackgroundWidget extends StatelessWidget {
  // CustomNetworkImage._internal();
  CustomBackgroundWidget.children({
    super.key,
    this.child,
    required this.children,
    this.bottomNavigationBar,
    this.leading,
    this.image,
    this.title,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : isChildren = true;
  CustomBackgroundWidget.child({
    super.key,
    required this.child,
    this.children,
    this.leading,
    this.title,
    this.bottomNavigationBar,
    this.crossAxisAlignment,
    this.image,
  }) : isChildren = false;
  final Widget? child;
  final List<Widget>? children;
  final CrossAxisAlignment? crossAxisAlignment;
  bool? isChildren;
  final String? image;
  final String? title;
  final Widget? bottomNavigationBar;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return isChildren == true ? _buildListWidget : _buildChildWidget;
  }

  get _buildListWidget => Scaffold(
    appBar: title.isNotNull || leading.isNotNull||image.isNotNull ? appBar : null,
    bottomNavigationBar: bottomNavigationBar,
    body: SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              crossAxisAlignment: crossAxisAlignment!,
              children: children!,
            ),
          ),
        ),
      ),
    ),
  );
  get _buildChildWidget => Scaffold(
    appBar: title.isNotNull || leading.isNotNull||image.isNotNull ? appBar : null,
    bottomNavigationBar: bottomNavigationBar,
    body: SafeArea(child: child!),
  );
  AppBar get appBar => AppBar(
    toolbarHeight: 70,
    title: title.isNotNull ? CustomTextWidget(text: title!) : null,
    leading:
        leading.isNotNull
            ? leading
            : (image.isNotNull
                ? CustomNetworkImage.circular(imageUrl: image)
                : null),
    leadingWidth: 150,
  );
}
