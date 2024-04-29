import 'package:get/get.dart';
import 'package:main_ott/Pages/Category/category_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryController());
  }
}
