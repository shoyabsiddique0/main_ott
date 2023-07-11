import 'package:get/get.dart';
import 'package:main_ott/Pages/BottomNavigationScreen/bottom_navigation_controller.dart';
import 'package:main_ott/Pages/Category/category_controller.dart';
import 'package:main_ott/Pages/Home/home_controller.dart';
import 'package:main_ott/Pages/Profile/profile_controller.dart';
import 'package:main_ott/Pages/Search/search_controller.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CategoryController());
    Get.lazyPut(() => SearchScreenController());
    Get.lazyPut(() => ProfileController());
  }
}
