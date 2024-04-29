import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Profile/ContactUs/contact_us_controller.dart';

class ContactUsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactUsController());
  }
}
