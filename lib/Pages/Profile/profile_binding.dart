import 'package:get/get.dart';
import 'package:main_ott/Pages/Profile/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
