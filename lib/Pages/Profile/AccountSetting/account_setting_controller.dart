import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AccountSettingController extends GetxController {
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.onInit();
  }
}
