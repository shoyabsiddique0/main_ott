import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Profile/ChangePassword/change_password_controller.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordController());
  }
}
