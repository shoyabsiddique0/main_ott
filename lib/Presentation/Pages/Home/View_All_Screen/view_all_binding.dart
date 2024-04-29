import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Home/View_All_Screen/view_all_controller.dart';

class ViewAllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewAllController());
  }
}
