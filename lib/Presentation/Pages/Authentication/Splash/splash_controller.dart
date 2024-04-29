import 'package:get/get.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Utils/utils.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    var token = await Utils().getToken();
    print(token);
    if (token != null) {
      Get.offAllNamed(AppRoutes.bottomNavigationScreen);
    } else {
      Get.offAllNamed(AppRoutes.loginScreen);
    }
    super.onInit();
  }
}
