import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Profile/AboutUs/about_us_controller.dart';

class AboutUsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutUsController());
  }
}
