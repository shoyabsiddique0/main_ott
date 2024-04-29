import 'package:get/get.dart';
import 'package:main_ott/Pages/Profile/Subscription/subscription_controller.dart';

class SubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionController());
  }
}
