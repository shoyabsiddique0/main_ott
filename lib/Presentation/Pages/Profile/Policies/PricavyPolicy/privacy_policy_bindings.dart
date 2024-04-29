import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Profile/Policies/PricavyPolicy/privacy_policy_controller.dart';

class PrivacyPolicyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrivacyPolicyController());
  }
}
