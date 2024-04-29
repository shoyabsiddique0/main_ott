import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SubscriptionController extends GetxController {
  RxString groupValue = "1 year".obs;
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.onInit();
  }
}
