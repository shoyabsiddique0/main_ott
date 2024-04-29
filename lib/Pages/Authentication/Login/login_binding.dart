import 'package:get/get.dart';
import 'package:main_ott/Pages/Authentication/Login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LoginController());
  }
}
