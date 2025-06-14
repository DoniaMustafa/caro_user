import 'package:caro_user_app/config/routes/app_routes_helper.dart';
import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/core/widgets/shapes/circel_shape.dart';

class CustomBackgroundWidget extends StatelessWidget {
  // CustomNetworkImage._internal();
  CustomBackgroundWidget.children({
    super.key,
    this.child,
    required this.children,
    this.bottomNavigationBar,
    this.leading,
    this.padding,
    this.isAppBar = true,
    this.image,
    this.isBack = true,
    this.title,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : isChildren = true;
  CustomBackgroundWidget.child({
    super.key,
    required this.child,
    this.children,
    this.leading,
    this.isBack = true,
    this.isAppBar = true,
    this.title,
    this.padding,
    this.bottomNavigationBar,
    this.image,
  }) : isChildren = false;
  final Widget? child;
  final List<Widget>? children;
  CrossAxisAlignment? crossAxisAlignment;
  MainAxisAlignment? mainAxisAlignment;
  bool isBack;
  bool? isChildren;
  final String? image;
  final String? title;
  final EdgeInsetsGeometry? padding;
  final Widget? bottomNavigationBar;
  final Widget? leading;
  bool? isAppBar;
  @override
  Widget build(BuildContext context) {
    return isChildren == true ? _buildListWidget : _buildChildWidget;
  }

  get _buildListWidget => AnnotatedRegion<SystemUiOverlayStyle>(
    value: systemUiOverlayStyle,
    child: Scaffold(
      backgroundColor: AppColors.white200,
      appBar: isAppBar.isTrue ? appBar : null,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: padding ?? getMarginOrPadding(all: 11.0),
              child: Column(
                crossAxisAlignment: crossAxisAlignment!,
                mainAxisAlignment: mainAxisAlignment!,

                children: children!,
              ),
            ),
          ),
        ),
      ),
    ),
  );
  get _buildChildWidget => AnnotatedRegion<SystemUiOverlayStyle>(
    value: systemUiOverlayStyle,
    child: Scaffold(
      backgroundColor: AppColors.white200,
      appBar: isAppBar.isTrue ? appBar : null,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(child: child!),
    ),
  );
  AppBar get appBar => AppBar(
    backgroundColor: AppColors.white200,
    toolbarHeight: 50,
    title: title.isNotNull ? CustomTextWidget(text: title!) : null,
    actions: isBack.isTrue ? [_circleBack, 20.hs] : null,
    // leadingWidth: 70,
    leading:
        leading.isNotNull
            ? leading
            : (image.isNotNull
                ? CustomNetworkImage.circular(imageUrl: image)
                : Container()),
  );

  get _circleBack => CircleShape(
    width: 36,
    height: 36,
    alignment: AlignmentDirectional.center,
    onTap: pop,
    margin: getMarginOrPadding(start: 20),
    color: AppColors.grey.withValues(alpha: 0.051),
    child: const CustomIcon(
      icon: Icons.arrow_forward_ios,
      color: AppColors.black,
    ),
  );

  get systemUiOverlayStyle => SystemUiOverlayStyle(
    statusBarColor: AppColors.white200,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
  );
}
