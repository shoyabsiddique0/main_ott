import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Profile/Policies/CancelPolicy/cancel_policy_controller.dart';

class CancellationPolicyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CancellationPolicyController());
  }
}
