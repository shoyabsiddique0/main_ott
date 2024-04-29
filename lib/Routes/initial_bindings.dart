import 'package:get/get.dart';
import 'package:main_ott/service/api/api_helper.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiHelper>(ApiHelper());
  }
}
