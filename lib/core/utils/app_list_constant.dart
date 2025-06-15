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
    OrderDetailStaticModel(status: "حاله الطلب", title: "تم الاستلام"),
    OrderDetailStaticModel(status: "تاريخ الطلب", title: "2/5/2025"),
    OrderDetailStaticModel(status: "رقم الطلب", title: "#5635"),
  ];

  static List<SearchForMeModelStatic> searchForMeStaticData = [
    SearchForMeModelStatic(
      title: "هيونداي اكسنت للبيع",
      image: AppAssets().carForSeachForMe,
      messages: "34",
      location: "جدة",
      price: "1500",
      time: "منذ ساعة",
    ),
    SearchForMeModelStatic(
      title: "هيونداي اكسنت للبيع",
      image: AppAssets().carForSeachForMe,
      status: "موثق",
      messages: "34",
      location: "جدة",
      price: "1500",
      time: "منذ ساعة",
    ),
    SearchForMeModelStatic(
      title: "هيونداي اكسنت للبيع",
      image: AppAssets().carForSeachForMe,
      status: "مميز ",
      messages: "34",
      location: "جدة",
      price: "1500",
      time: "منذ ساعة",
    ),
  ];

  static List<CarDetailsModelStatic> carDetailsStaticData = [
    CarDetailsModelStatic(icon: AppAssets().keyIcon, title: "2025"),
    CarDetailsModelStatic(icon: AppAssets().locationIcon, title: "جدة"),
    CarDetailsModelStatic(icon: AppAssets().carIcon, title: "عائليه"),
    CarDetailsModelStatic(icon: AppAssets().automaticIcon, title: "اوتامتيك"),
    CarDetailsModelStatic(icon: AppAssets().starsIcon, title: "جديد"),
    CarDetailsModelStatic(icon: AppAssets().gasIcon, title: "10.70كم/لتر"),
    CarDetailsModelStatic(icon: AppAssets().tiresIcon, title: "17انش"),
    CarDetailsModelStatic(icon: AppAssets().motorIcon, title: "164"),
    CarDetailsModelStatic(icon: AppAssets().cylnderIcon, title: "4اسطوانات"),
    CarDetailsModelStatic(icon: AppAssets().gasCan, title: "بنزين"),
    CarDetailsModelStatic(icon: AppAssets().litrIcon, title: "2.70"),
  ];
}
