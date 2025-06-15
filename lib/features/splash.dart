import 'package:caro_user_app/config/routes/app_routes.dart';
import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/app_style.dart';
import 'package:caro_user_app/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../core/utils/assats_file.dart';
import '../core/utils/size_utils.dart';
import '../core/widgets/custom_network_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _carSlideAnimation; // لتحريك السيارة
  late Animation<double> _logoOpacityAnimation;
  late Animation<double> _textOpacityAnimation;
  late Animation<double> _logoScaleAnimation;
  late Animation<double> _textScaleAnimation;
  @override
  void initState() {
    super.initState();
    _buildAnimation();
    _nextPage();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _buildAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _carSlideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOutCubic),
      ),
    );
    _logoOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 0.7, curve: Curves.easeIn),
      ),
    );

    _logoScaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.7, 0.75, curve: Curves.easeInOutBack),
      ),
    );

    _logoScaleAnimation = Tween<double>(begin: 1.05, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.75, 0.8, curve: Curves.easeInOut),
      ),
    );

    _textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.8, 0.95, curve: Curves.easeIn),
      ),
    );

    _textScaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.95, 0.975, curve: Curves.easeInOutBack),
      ),
    );

    _textScaleAnimation = Tween<double>(begin: 1.05, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.975, 1.0, curve: Curves.easeInOut),
      ),
    );
    _nextPage();
    _controller.forward();
  }

  void _nextPage() {
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Routes.onBoardRoute.pushAndRemoveAllUntil;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            alignment: AlignmentDirectional.topCenter,
            fit: StackFit.expand,
            children: [_buildCarAnimation, _buildLogoTitle],
          );
        },
      ),
    );
  }

  get _buildCarAnimation => Positioned.fill(
    child: Opacity(
      opacity: 1.0,
      child: FractionallySizedBox(
        alignment: Alignment.bottomLeft,
        widthFactor: 1.0,
        heightFactor: 1.0,
        child: Transform.translate(
          offset: Offset(_carSlideAnimation.value.dx * width, 0),
          child: CustomNetworkImage.rectangle(
            imageUrl: AppAssets().car,
            defaultAsset: AppAssets().car,
            height: 200,
            // alignment: Alignment.bottomCenter,
          ),
        ),
      ),
    ),
  );
  get _buildLogoTitle => Positioned(
    top: 90,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildComponentItem(
          widget: CustomNetworkImage.circular(
            imageUrl: AppAssets().logo,
            radius: 100,
            defaultAsset: AppAssets().logo,
          ),
          scale: _logoScaleAnimation.value,
          opacity: _logoOpacityAnimation.value,
        ),
        22.vs,
        _buildComponentItem(
          widget: CustomTextWidget(
            text: 'عالم السيارات في يدك',
            style: getMediumTextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          scale: _textScaleAnimation.value,
          opacity: _textOpacityAnimation.value,
        ),
      ],
    ),
  );
  Widget _buildComponentItem({
    required double scale,
    required double opacity,
    required Widget widget,
  }) => Transform.scale(
    scale: scale,
    child: Opacity(opacity: opacity, child: widget),
  );
}
