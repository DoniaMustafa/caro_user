import 'package:caro_user_app/core/model/generic_model.dart';
import 'package:caro_user_app/core/utils/assats_file.dart';

class AppListConstant {
  AppListConstant._();

  static List<GenericModel> onBoardingData = [
    GenericModel(
      image: AppAssets().onBoarding1,
      title: "البحث عن المنتجات",
      subtitle:
          "شكل توضع لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارج الشكل الخارج للنص أو شكل توضع لصفحة ما سيلهي القارئ عن التي يقرأها. ولذاستخدام طريقة تبدو",
    ),
    GenericModel(
      image: AppAssets().onBoarding2,
      title: "متابعة الطلب",
      subtitle:
          "شكل توضع لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارج الشكل الخارج للنص أو شكل توضع لصفحة ما سيلهي القارئ عن التي يقرأها. ولذاستخدام طريقة تبدو",
    ),
    GenericModel(
      image: AppAssets().onBoarding1,
      title: "البحث عن المنتجات",
      subtitle:
          "شكل توضع لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارج الشكل الخارج للنص أو شكل توضع لصفحة ما سيلهي القارئ عن التي يقرأها. ولذاستخدام طريقة تبدو",
    ),
  ];
  static List<GenericModel> centers = [
    GenericModel(image: AppAssets().fixCar, title: "ورش و صيانة"),
    GenericModel(image: AppAssets().checking, title: "فحص"),
    GenericModel(image: AppAssets().carWashing, title: "عناية بالسيارات"),
  ];

  static List<GenericModel> homeService = [
    GenericModel(
      image: AppAssets().carCrash,
      title: "تشليح",
      subtitle: "افضل خدمة",
    ),
    GenericModel(
      image: AppAssets().carWinch,
      title: "ونش وسطحة",
      subtitle: "يجيلك في اسرع وقت",
    ),
    GenericModel(
      image: AppAssets().carBattery,
      title: "اشتراك بطارية",
      subtitle: "اعلى كفاءة و ضمان",
    ),
    GenericModel(
      image: AppAssets().carWheel,
      title: "تعبئة كفر",
      subtitle: "حسب المواصفات",
    ),
  ];
  static List<GenericModel> popularCategory = [
    GenericModel(image: AppAssets().carSuv, title: "سيارات"),
    GenericModel(image: AppAssets().carShowrooms, title: "معارض"),
    GenericModel(image: AppAssets().autoParts, title: "قطع غيار"),
    GenericModel(image: AppAssets().auctionCar, title: "مزاد\n لوحات و سيارات"),
    GenericModel(image: AppAssets().motor, title: "درجات/سكوتر"),
    GenericModel(image: AppAssets().tractor, title: "معدات ثقيلة"),
    GenericModel(image: AppAssets().cars, title: "مكاتب تأجير سيارات"),
  ];
  static List<GenericModel> headerSection = [
    GenericModel(image: AppAssets().searchToMe, title: "ابحث لي"),
    GenericModel(image: AppAssets().chat, title: "تويت - Tweet"),
  ];
}
