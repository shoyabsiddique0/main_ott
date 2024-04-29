import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Profile/AccountSetting/account_setting_controller.dart';

class AccountSettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountSettingController());
  }
}
