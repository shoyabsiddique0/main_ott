import 'package:get/get.dart';
import 'package:main_ott/Pages/Home/DetailsScreen/details_controller.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsController());
  }
}
