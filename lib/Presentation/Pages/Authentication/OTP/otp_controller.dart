import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Utils/constants.dart';
import 'package:main_ott/Utils/headers.dart';
import 'package:main_ott/Utils/utils.dart';
import 'package:main_ott/model/Authentication/login_model.dart';
import 'package:main_ott/model/Authentication/otp_model.dart';
import 'package:main_ott/service/api/api_helper.dart';

class OtpController extends GetxController {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  FocusNode node3 = FocusNode();
  FocusNode node4 = FocusNode();
  var enableResend = false.obs;
  var start = 59.obs;
  final prevScreen = Get.previousRoute;
  var otpModel = LoginModel().obs;
  final apiHelper = Get.find<ApiHelper>();
  void verifyOtp() async {
    final header = await getHeaders();
    otpModel.value = await apiHelper.callApi(
        endPoint: Const.verifyOtp,
        header: header!,
        reqType: 'post',
        body: {
          "mobileNo": Get.arguments["mobileNo"],
          "otp_code": controller1.text +
              controller2.text +
              controller3.text +
              controller4.text,
          "workflow": prevScreen == AppRoutes.registerScreen
              ? "registration"
              : "forgot-password"
        },
        fromJsonFunction: LoginModel.fromJson);
    if (prevScreen == AppRoutes.registerScreen) {
      if (otpModel.value.success == 1) {
        print(otpModel.value.toJson());
        Utils().setToken(otpModel.value.accesstoken!);
        print("token saved");
        print(await Utils().getToken());
        Get.offAllNamed(AppRoutes.bottomNavigationScreen);
      } else {
        Utils().showSnackBar(Get.context, otpModel.value.message);
      }
    } else {
      if (otpModel.value.success == 1) {
        Get.toNamed(AppRoutes.updatePasswordScreen);
      } else {
        Utils().showSnackBar(Get.context, otpModel.value.message);
      }
    }
  }

  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    const oneSec = Duration(seconds: 1);
    var timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start.value == 0) {
          enableResend.value = false;
          timer.cancel();
        } else {
          start -= 1;
        }
      },
    );
    super.onInit();
  }
}
