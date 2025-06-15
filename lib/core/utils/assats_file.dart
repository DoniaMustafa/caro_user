mixin class AssetsFiles {
  AssetsFiles._();
  static const svg = 'assets/svg/';
  String onBoarding1 = '${svg}onBoarding1.svg';
  String onBoarding2 = '${svg}onBoarding2.svg';
  String personIcon = '${svg}person_icon.svg';
  String verify = '${svg}verify.svg';

  String send = '${svg}send.svg';
  String puzzle = '${svg}puzzle.svg';
  String moneyIcon = '${svg}money.svg';
  String speedIcon = '${svg}speed.svg';
  String riyalSaudi = '${svg}Saudi_Riyal_icon.svg';
  String colorIcon = '${svg}colors_icon.svg';
  // String mada = '${svg}mada.svg';
  String litrIcon = '${svg}litr_icon.svg';
  String gasCan = '${svg}gas_can_icon.svg';
  String cylnderIcon = '${svg}cylnder_icon.svg';
  String motorIcon = '${svg}motor_icon.svg';
  String tiresIcon = '${svg}tires_icon.svg';
  String gasIcon = '${svg}gas_icon.svg';
  String starsIcon = '${svg}stars_icon.svg';
  String automaticIcon = '${svg}automatic_icon.svg';
  String carIcon = '${svg}car_icon.svg';
  String locationIcon = '${svg}location.svg';
  String keyIcon = '${svg}key.svg';
}

mixin class ImageFiles {
  ImageFiles._();
  static const image = 'assets/images/';
  String car = '${image}car.png';
  String logo = '${image}logo.png';
  String reel = '${image}reel.png';
  String ordersCar = '${image}orders_car.png';
  String mada = '${image}mada.png';
  String carForSeachForMe = '${image}searchForMe.png';
}

class AppAssets with ImageFiles, AssetsFiles {
  AppAssets._internal();

  factory AppAssets() => AppAssets._internal();
}
