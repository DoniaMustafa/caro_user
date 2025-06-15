import 'package:flutter/material.dart';

class OnBoardingModel {
  String? title;
  String? subtitle;
  String? image;
  IconData? icon;
  OnBoardingModel({this.title, this.subtitle, this.image, this.icon});
}

class OrderDetailStaticModel{

  String? title;
  String? status;
OrderDetailStaticModel({this.title, this.status});


}

class SearchForMeModelStatic{
  String? title;
  String? status;
  String? location;
  String? time;
  String? price;
  String? image;
  String? messages;
  SearchForMeModelStatic({this.title, this.status, this.location, this.time, this.price, this.image, this.messages});

}
class CarDetailsModelStatic{
  String? icon;
  String? title;
  CarDetailsModelStatic({this.icon, this.title});


}