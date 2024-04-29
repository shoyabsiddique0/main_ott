import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Profile/Policies/RefundPolicy/refund_policy_controller.dart';

class RefundPolicyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefundPolicyController());
  }
}
