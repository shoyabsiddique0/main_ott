import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:main_ott/Widgets/HomeWidget/cardView.dart';
import 'package:main_ott/Widgets/SearchWidget/recent_card.dart';

class SearchScreenController extends GetxController {
  final searchTextController = TextEditingController();
  final recentList = [
    RecentCard(
      imageLink: "assets/SearchAssets/recent.png",
      title: "Harley Quinn",
      onClick: () {},
    ),
    RecentCard(
      imageLink: "assets/SearchAssets/recent.png",
      title: "Harley Quinn",
      onClick: () {},
    ),
    RecentCard(
      imageLink: "assets/SearchAssets/recent.png",
      title: "Harley Quinn",
      onClick: () {},
    ),
    RecentCard(
      imageLink: "assets/SearchAssets/recent.png",
      title: "Harley Quinn",
      onClick: () {},
    ),
    RecentCard(
      imageLink: "assets/SearchAssets/recent.png",
      title: "Harley Quinn",
      onClick: () {},
    ),
    RecentCard(
      imageLink: "assets/SearchAssets/recent.png",
      title: "Harley Quinn",
      onClick: () {},
    ),
  ];
  final trendingList = <Widget>[
    CardView(
      name: "Harley Quinn",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card1.png",
      action: () {},
    ),
    CardView(
      name: "Harley Quinn",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card1.png",
      action: () {},
    ),
    CardView(
      name: "Harley Quinn",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card1.png",
      action: () {},
    ),
    CardView(
      name: "Harley Quinn",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card1.png",
      action: () {},
    ),
    CardView(
      name: "Harley Quinn",
      duration: "2hrs 30mins",
      image: "assets/HomeAssets/card1.png",
      action: () {},
    ),
  ].obs;
}
