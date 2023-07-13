import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Widgets/HomeWidget/cardView.dart';

class DetailsController extends GetxController {
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.onInit();
  }

  final castList = [
    "Dakota Johnson",
    "Jamie Dornan",
    "Jennifer Ehle",
    "Eloise Mumford",
    "Jamie Dornan",
    "Jennifer Ehle",
    "Eloise Mumford"
  ];

  final directorList = ["Sam Taylor - Johnson"];

  final writerList = ["Sam Taylor - Johnson"];

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
}
