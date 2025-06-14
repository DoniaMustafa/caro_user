import 'package:caro_user_app/core/model/generic_model.dart';
import '../export/export.dart';

class AppListConstant {
  AppListConstant._();

  static List<OnBoardingModel> onBoardingData = [
    OnBoardingModel(
      image: AppAssets().onBoarding1,
      title: "البحث عن المنتجات",
      subtitle:
          "شكل توضع لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارج الشكل الخارج للنص أو شكل توضع لصفحة ما سيلهي القارئ عن التي يقرأها. ولذاستخدام طريقة تبدو",
    ),
    OnBoardingModel(
      image: AppAssets().onBoarding2,
      title: "متابعة الطلب",
      subtitle:
          "شكل توضع لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارج الشكل الخارج للنص أو شكل توضع لصفحة ما سيلهي القارئ عن التي يقرأها. ولذاستخدام طريقة تبدو",
    ),
    OnBoardingModel(
      image: AppAssets().onBoarding1,
      title: "البحث عن المنتجات",
      subtitle:
          "شكل توضع لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارج الشكل الخارج للنص أو شكل توضع لصفحة ما سيلهي القارئ عن التي يقرأها. ولذاستخدام طريقة تبدو",
    ),
  ];

  static List<OrderDetailStaticModel> orderDetailStaticData = [
    OrderDetailStaticModel(
      status: "حاله الطلب",
      title: "تم الاستلام"
    ),
   OrderDetailStaticModel(
      status: "تاريخ الطلب",
      title: "2/5/2025"
    ),
    OrderDetailStaticModel(
      status: "رقم الطلب",
      title: "#5635"
    ),
  ];
}
