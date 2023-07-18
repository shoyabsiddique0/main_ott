import 'package:get/get.dart';
import 'package:main_ott/Pages/Search/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchScreenController());
  }
}
