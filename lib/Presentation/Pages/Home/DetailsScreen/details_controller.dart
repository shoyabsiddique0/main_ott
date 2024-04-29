import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Widgets/HomeWidget/DetailsWidget/episode.dart';
import 'package:main_ott/Presentation/Widgets/HomeWidget/cardView.dart';
import 'package:main_ott/model/VideoListing/vudei_details_model.dart';
import 'package:video_player/video_player.dart';

class DetailsController extends GetxController {
  String link =
      "https://ia804603.us.archive.org/2/items/turner_video_391309/391309.ia.mp4?cnt=0";
  late VideoPlayerController controller;
  var position = const Duration(seconds: 0).obs;
  var duration = const Duration(seconds: 0).obs;
  var mute = false.obs;
  var bufferVisible = true.obs;
  var vidFocus = GlobalKey().obs;
  var videoDetailsModel = VideoDetailsModel().obs;
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    videoDetailsModel = Get.arguments;
    super.onInit();
    controller = VideoPlayerController.networkUrl(Uri.parse(link),
        videoPlayerOptions: VideoPlayerOptions())
      ..initialize().then((value) {
        position.value = controller.value.position;
        duration.value = controller.value.duration;
      });
    controller.addListener(() {
      if (!controller.value.isInitialized) {
        bufferVisible.value = true;
      } else {
        bufferVisible.value = controller.value.isBuffering;
      }
    });
    controller.play();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.pause();
    controller.dispose();
    super.dispose();
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
  var episodeList = <Widget>[
    Episode(
      epName: "Ep 1 - Lorem ipsum",
      goTo: () {
        Get.toNamed(AppRoutes.videoScreen);
      },
    ),
    Episode(
      epName: "Ep 2 - Lorem ipsum",
      goTo: () {
        Get.toNamed(AppRoutes.videoScreen);
      },
    ),
    Episode(
      epName: "Ep 3 - Lorem ipsum",
      goTo: () {
        Get.toNamed(AppRoutes.videoScreen);
      },
    ),
  ].obs;
}
