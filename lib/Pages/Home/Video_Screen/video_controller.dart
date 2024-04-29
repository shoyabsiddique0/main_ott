import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  @override
  void onReady() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    // TODO: implement onReady
    super.onReady();
  }
}
