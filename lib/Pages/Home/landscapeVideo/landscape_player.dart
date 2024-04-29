import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_ott/Pages/Home/landscapeVideo/landscape_controller.dart';
import 'package:main_ott/Widgets/HomeWidget/VideoPlayerWidget/landscape_video.dart';

// ignore: must_be_immutable
class LandscapePlayer extends StatelessWidget {
  LandscapePlayer({Key? key}) : super(key: key);
  LandscapeController controller = Get.find<LandscapeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LandscapeVideo(),
    );
  }
}
