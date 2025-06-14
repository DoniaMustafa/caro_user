mixin class AssetsFiles {
  AssetsFiles._();
  static const svg = 'assets/svg/';
  String onBoarding1 = '${svg}onBoarding1.svg';
  String onBoarding2 = '${svg}onBoarding2.svg';
  String personIcon = '${svg}person_icon.svg';
  String verify = '${svg}verify.svg';
  String car = '${svg}car.svg';
  String agm = '${svg}agm.svg';
  String send = '${svg}send.svg';
  String puzzle = '${svg}puzzle.svg';
  String moneyIcon = '${svg}money.svg';
  String speedIcon = '${svg}speed.svg';
  String riyalSaudi = '${svg}Saudi_Riyal_icon.svg';
  String colorIcon = '${svg}colors_icon.svg';

  String chats = '${svg}chats.svg';
  // String carWinch = '${svg}car_winch.svg';
  // String carWheel = '${svg}car_wheel.svg';
  // String carCrash = '${svg}car_crash.svg';
  // String carBattery = '${svg}car_battery.svg';
}

mixin class ImageFiles {
  ImageFiles._();
  static const image = 'assets/images/';
  String car = '${image}car.png';
  String logo = '${image}logo.png';
  String reel = '${image}reel.png';
  String ordersCar = '${image}orders_car.png';
  String searchToMe = '${image}search_me.jpg';
  String chat = '${image}chat.png';
  String carWinch = '${image}car_winch.jpg';
  String carWheel = '${image}car_wheel.jpg';
  String carCrash = '${image}car_crash.jpg';
  String carBattery = '${image}car_battery.jpg';
  String auctionCar = '${image}auction_car.png';
  String autoParts = '${image}auto_parts.png';
  String carShowrooms = '${image}car_showrooms.png';
  String carSuv = '${image}car_suv.png';
  String cars = '${image}cars.png';
  String motor = '${image}motor.png';
  String carWashing = '${image}car-washing.png';
  String checking = '${image}checking.png';
  String fixCar = '${image}fix_car.png';

  String user = '${image}user.png';

  String tractor = '${image}tractor.png';
}

class AppAssets with ImageFiles, AssetsFiles {
  AppAssets._internal();

  factory AppAssets() => AppAssets._internal();
}
