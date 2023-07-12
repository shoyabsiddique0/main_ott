import 'package:get/get.dart';
import 'package:main_ott/Pages/Profile/ManageProfiles/manage_profile_controller.dart';

class ManageProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageProfileController());
  }
}
