import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
