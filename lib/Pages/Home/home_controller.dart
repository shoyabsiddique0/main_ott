import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Widgets/HomeWidget/cardView.dart';
import 'package:main_ott/Widgets/HomeWidget/suggestion.dart';

class HomeController extends GetxController {
  CarouselController controller = CarouselController();
  final current = 0.obs;
  final collection1 = 0.obs;
  final collection2 = 0.obs;
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.onInit();
  }

  final suggestionList = <Widget>[
    const Suggestion(
        imageLink: "assets/HomeAssets/suggestionCard.png",
        title: "Joker",
        duration: "2hr 30mins"),
    const Suggestion(
        imageLink: "assets/HomeAssets/suggestionCard.png",
        title: "Joker",
        duration: "2hr 30mins"),
    const Suggestion(
        imageLink: "assets/HomeAssets/suggestionCard.png",
        title: "Joker",
        duration: "2hr 30mins"),
    const Suggestion(
        imageLink: "assets/HomeAssets/suggestionCard.png",
        title: "Joker",
        duration: "2hr 30mins"),
  ].obs;
  final recentList = <Widget>[
    CardView(
      // action: () {},
      name: "50 Shades of Grey",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card2.png",
      action: () => Get.toNamed(AppRoutes.detailsScreen),
    ),
    CardView(
      // action: () {},
      name: "50 Shades of Grey",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card2.png",
      action: () => Get.toNamed(AppRoutes.detailsScreen),
    ),
    CardView(
      // action: () {},
      name: "50 Shades of Grey",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card2.png",
      action: () => Get.toNamed(AppRoutes.detailsScreen),
    ),
    CardView(
      // action: () {},
      name: "50 Shades of Grey",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card2.png",
      action: () => Get.toNamed(AppRoutes.detailsScreen),
    ),
    CardView(
      // action: () {},
      name: "50 Shades of Grey",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card2.png",
      action: () => Get.toNamed(AppRoutes.detailsScreen),
    ),
  ].obs;
  final trendingList = <Widget>[
    CardView(
      // action: () {},
      name: "Harley Quinn",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card1.png",
      action: () => Get.toNamed(AppRoutes.detailsScreen),
    ),
    CardView(
      // action: () {},
      name: "Harley Quinn",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card1.png",
      action: () => Get.toNamed(AppRoutes.detailsScreen),
    ),
    CardView(
      // action: () {},
      name: "Harley Quinn",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card1.png",
      action: () => Get.toNamed(AppRoutes.detailsScreen),
    ),
    CardView(
      // action: () {},
      name: "Harley Quinn",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card1.png",
      action: () => Get.toNamed(AppRoutes.detailsScreen),
    ),
    CardView(
      // action: () {},
      name: "Harley Quinn",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card1.png",
      action: () => Get.toNamed(AppRoutes.detailsScreen),
    ),
  ].obs;
  List<Image> collectionList1 = [
    Image.asset("assets/HomeAssets/collection1.png"),
    Image.asset("assets/HomeAssets/collection1.png"),
    Image.asset("assets/HomeAssets/collection1.png"),
    Image.asset("assets/HomeAssets/collection1.png"),
  ].obs;
  List<Image> collectionList2 = [
    Image.asset("assets/HomeAssets/collection2.png"),
    Image.asset("assets/HomeAssets/collection2.png"),
    Image.asset("assets/HomeAssets/collection2.png"),
    Image.asset("assets/HomeAssets/collection2.png"),
  ].obs;
}
