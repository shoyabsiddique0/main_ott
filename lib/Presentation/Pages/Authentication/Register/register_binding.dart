import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Authentication/Register/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RegisterController());
  }
}
