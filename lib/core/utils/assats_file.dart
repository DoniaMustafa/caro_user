mixin class AssetsFiles {
  AssetsFiles._();
  static const svg = 'assets/svg/';
  String onBoarding1 = '${svg}onBoarding1.svg';
  String onBoarding2 = '${svg}onBoarding2.svg';
  String personIcon = '${svg}person_icon.svg';
}

mixin class ImageFiles {
  ImageFiles._();
  static const image = 'assets/images/';
  String car = '${image}car.png';
  String logo = '${image}logo.png';
}

class AppAssets with ImageFiles, AssetsFiles {
  AppAssets._internal();

  factory AppAssets() => AppAssets._internal();
}
