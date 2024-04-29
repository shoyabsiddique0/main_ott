import 'package:get/get.dart';
import 'package:main_ott/Pages/Profile/ManageProfiles/ProfileManagement/profile_manage_controller.dart';

class ProfileManageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileManageController());
  }
}