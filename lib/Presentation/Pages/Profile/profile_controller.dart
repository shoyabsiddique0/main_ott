import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Utils/constants.dart';
import 'package:main_ott/Utils/headers.dart';
import 'package:main_ott/Utils/utils.dart';
import 'package:main_ott/model/Authentication/logout_model.dart';
import 'package:main_ott/service/api/api_helper.dart';

class ProfileController extends GetxController {
  var apiHelper = Get.find<ApiHelper>();
  var logoutModel = LogoutModel().obs;
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.onInit();
  }

  logout() async {
    var header = await getHeaders();
    logoutModel.value = await apiHelper.callApi(
        endPoint: Const.logout,
        header: header!,
        reqType: 'post',
        fromJsonFunction: LogoutModel.fromJson);
    if (logoutModel.value.success == 1) {
      Utils().deleteToken();
      Get.offAllNamed(AppRoutes.loginScreen);
    }
  }
}
