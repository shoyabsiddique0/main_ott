import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Profile/TermAndCondition/term_condition_controller.dart';

class TermsAndConditionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsAndConditionsController());
  }
}
