import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Authentication/UpdatePassword/update_password_controller.dart';

class UpdatePasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpdatePasswordController());
  }
}
