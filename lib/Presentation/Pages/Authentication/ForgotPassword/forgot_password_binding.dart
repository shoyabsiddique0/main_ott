import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Authentication/ForgotPassword/forgot_password_controller.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
  }
}
