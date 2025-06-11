import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/core/utils/app_style.dart';
import 'package:caro_user_app/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../core/utils/assats_file.dart';
import '../core/utils/size_utils.dart';
import '../core/widgets/custom_network_image.dart';
import '../core/widgets/custom_svg.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _buildAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4), // مدة الانيميشن الكلية
    );

    _carSlideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0), // تبدأ من خارج الشاشة على الشمال
      end: const Offset(0.0, 0.0), // توصل لمكانها الأصلي
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          0.6,
          curve: Curves.easeOutCubic,
        ), // انيميشن الحركة
      ),
    );
    _logoOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.5,
          0.7,
          curve: Curves.easeIn,
        ), // تبدأ من 50% وتنتهي عند 70%
      ),
    );

    // الـ Pop Effect للوجو: هيحصل بعد ما يظهر بـ Opacity كامل
    _logoScaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.7,
          0.75,
          curve: Curves.easeInOutBack,
        ), // Pop جزء صغير
      ),
    );
    // جزء الرجوع لحجمه الطبيعي
    _logoScaleAnimation = Tween<double>(begin: 1.05, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.75,
          0.8,
          curve: Curves.easeInOut,
        ), // رجوع للحجم الطبيعي
      ),
    );

    // ************* Text Opacity and Scale Animation *************
    // النص يبدأ يظهر بعد اللوجو بمدة بسيطة (مثلاً من 0.8 لـ 0.95 من المدة)
    _textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.8,
          0.95,
          curve: Curves.easeIn,
        ), // تبدأ من 80% وتنتهي عند 95%
      ),
    );

    // الـ Pop Effect للنص: هيحصل بعد ما يظهر بـ Opacity كامل
    _textScaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.95,
          0.975,
          curve: Curves.easeInOutBack,
        ), // Pop جزء صغير
      ),
    );
    // جزء الرجوع لحجمه الطبيعي
    _textScaleAnimation = Tween<double>(begin: 1.05, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.975,
          1.0,
          curve: Curves.easeInOut,
        ), // رجوع للحجم الطبيعي
      ),
    );

    // ابدأ الـ animation
    _controller.forward();
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
      opacity: 1.0, // هنا تم تثبيت الـ opacity على 1.0
      child: FractionallySizedBox(
        alignment: Alignment.bottomLeft,
        widthFactor: 1.0,
        heightFactor: 1.0,
        child: Transform.translate(
          offset: Offset(
            _carSlideAnimation.value.dx * MediaQuery.of(context).size.width,
            0,
          ), // Y offset ثابت على 0
          child: CustomNetworkImage.rectangle(
            imageUrl: AppAssets().car,
            // fit: BoxFit.contain,
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
        Transform.scale(
          scale: _logoScaleAnimation.value,
          child: Opacity(
            opacity: _logoOpacityAnimation.value,
            child: CustomNetworkImage.circular(
              imageUrl: AppAssets().logo,
              radius: 100,
              defaultAsset: AppAssets().logo,
            ),
          ),
        ),
        22.vs,
        Transform.scale(
          scale: _textScaleAnimation.value,
          child: Opacity(
            opacity: _textOpacityAnimation.value,
            child: CustomTextWidget(
              text: 'عالم السيارات في يدك',
              style: getMediumTextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  );
}
