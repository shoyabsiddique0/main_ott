import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_ott/Presentation/Widgets/common/continue_watching_card.dart';

class ContinueWatchingController extends GetxController {
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
  final continueWatching = <Widget>[
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
    const ContinueWatchingCard(
      image: "assets/HomeAssets/continue_watching_card.png",
      progress: 0.7,
      title: "Harley Quinn",
      timeLeft: "1hr 15mins",
    ),
  ];
}
