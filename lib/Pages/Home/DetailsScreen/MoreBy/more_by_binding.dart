import 'package:get/get.dart';
import 'package:main_ott/Pages/Home/DetailsScreen/MoreBy/more_by_controller.dart';

class MoreByBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoreByController());
  }
}
