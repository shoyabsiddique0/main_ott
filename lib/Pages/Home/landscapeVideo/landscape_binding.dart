import 'package:get/get.dart';
import 'package:main_ott/Pages/Home/landscapeVideo/landscape_controller.dart';

class LandscapeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandscapeController());
  }
}
