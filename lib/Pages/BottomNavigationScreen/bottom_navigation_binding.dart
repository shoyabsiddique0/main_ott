import 'package:get/get.dart';
import 'package:main_ott/Pages/BottomNavigationScreen/bottom_navigation_controller.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationController());
  }
}
