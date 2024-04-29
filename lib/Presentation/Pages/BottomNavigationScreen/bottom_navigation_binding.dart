import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/BottomNavigationScreen/bottom_navigation_controller.dart';
import 'package:main_ott/Presentation/Pages/Category/category_controller.dart';
import 'package:main_ott/Presentation/Pages/Home/home_controller.dart';
import 'package:main_ott/Presentation/Pages/Profile/profile_controller.dart';
import 'package:main_ott/Presentation/Pages/Search/search_controller.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CategoryController());

    Get.lazyPut(() => ProfileController());
  }
}
