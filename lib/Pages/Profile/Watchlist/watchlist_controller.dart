import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_ott/Widgets/ProfileWidget/WatchlistWidget/watchlist_card.dart';

class WatchlistController extends GetxController {
  var watchlist = <Widget>[
    const WatchlistCard(
      title: "Harley Quinn",
      imageLink: "assets/ProfileAssets/WatchlistAssets/card.png",
      duration: "2hrs 30mins",
      left: "1hr 15mins",
      isDownloads: false,
      progress: 0.6,
    ),
    const WatchlistCard(
      title: "Harley Quinn",
      imageLink: "assets/ProfileAssets/WatchlistAssets/card.png",
      duration: "2hrs 30mins",
      left: "1hr 15mins",
      isDownloads: false,
      progress: 0.6,
    ),
    const WatchlistCard(
      title: "Harley Quinn",
      imageLink: "assets/ProfileAssets/WatchlistAssets/card.png",
      duration: "2hrs 30mins",
      left: "1hr 15mins",
      isDownloads: false,
      progress: 0.6,
    ),
    const WatchlistCard(
      title: "Harley Quinn",
      imageLink: "assets/ProfileAssets/WatchlistAssets/card.png",
      duration: "2hrs 30mins",
      left: "1hr 15mins",
      isDownloads: false,
      progress: 0.6,
    ),
    const WatchlistCard(
      title: "Harley Quinn",
      imageLink: "assets/ProfileAssets/WatchlistAssets/card.png",
      duration: "2hrs 30mins",
      left: "1hr 15mins",
      isDownloads: false,
      progress: 0.6,
    ),
    const WatchlistCard(
      title: "Harley Quinn",
      imageLink: "assets/ProfileAssets/WatchlistAssets/card.png",
      duration: "2hrs 30mins",
      left: "1hr 15mins",
      isDownloads: false,
      progress: 0.6,
    ),
    const WatchlistCard(
      title: "Harley Quinn",
      imageLink: "assets/ProfileAssets/WatchlistAssets/card.png",
      duration: "2hrs 30mins",
      left: "1hr 15mins",
      isDownloads: false,
      progress: 0.6,
    ),
    const WatchlistCard(
      title: "Harley Quinn",
      imageLink: "assets/ProfileAssets/WatchlistAssets/card.png",
      duration: "2hrs 30mins",
      left: "1hr 15mins",
      isDownloads: false,
      progress: 0.6,
    ),
    const WatchlistCard(
      title: "Harley Quinn",
      imageLink: "assets/ProfileAssets/WatchlistAssets/card.png",
      duration: "2hrs 30mins",
      left: "1hr 15mins",
      isDownloads: false,
      progress: 0.6,
    ),
  ].obs;
  var searchEdit = TextEditingController().obs;
  var groupValue = "A to Z".obs;
  var sort = [
    {
      "title": "A to Z",
      "value": "A to Z",
    },
    {
      "title": "Z to A",
      "value": "Z to A",
    },
    {
      "title": "Recently Watched",
      "value": "Recently Watched",
    },
  ].obs;
}
