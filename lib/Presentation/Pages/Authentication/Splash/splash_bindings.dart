import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Authentication/Splash/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
