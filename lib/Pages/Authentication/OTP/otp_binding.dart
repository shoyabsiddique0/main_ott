import 'package:get/get.dart';
import 'package:main_ott/Pages/Authentication/OTP/otp_controller.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpController());
  }
}
