import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ManageProfileController extends GetxController {
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.onInit();
  }
}
