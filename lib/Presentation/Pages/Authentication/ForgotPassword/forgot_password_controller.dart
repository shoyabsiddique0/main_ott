import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Utils/constants.dart';
import 'package:main_ott/Utils/headers.dart';
import 'package:main_ott/Utils/utils.dart';
import 'package:main_ott/model/Authentication/forgot_password_model.dart';
import 'package:main_ott/service/api/api_helper.dart';

class ForgotPasswordController extends GetxController {
  Rx<TextEditingController> phoneController = TextEditingController().obs;
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.onInit();
  }

  var valMob = "".obs;
  var apiHelper = Get.find<ApiHelper>();
  var forpostPasswordModel = ForgotPasswordModel().obs;
  void validateMobile(String? value) {
    if (value!.isEmpty) {
      valMob.value = "";
    }
    if (value.length != 10) {
      valMob.value = 'Mobile Number must be of 10 digit';
    } else {
      valMob.value = "";
    }
  }

  void sendOtp() async {
    if (valMob.value == "") {
      var header = await getHeaders();
      forpostPasswordModel.value = await apiHelper.callApi<ForgotPasswordModel>(
          endPoint: Const.forgotPass,
          header: header!,
          reqType: 'post',
          body: {"phone": phoneController.value.text},
          fromJsonFunction: ForgotPasswordModel.fromJson);
      if (forpostPasswordModel.value.success == 1) {
        Get.toNamed(AppRoutes.otpScreen,
            arguments: {"mobileNo": phoneController.value.text});
        Utils().showSnackBar(Get.context, forpostPasswordModel.value.message,
            isSuccess: true);
      } else {
        print(forpostPasswordModel.value.toJson());
        Utils().showSnackBar(Get.context, forpostPasswordModel.value.message,
            isSuccess: false);
      }
    } else {
      Utils().showSnackBar(Get.context, "Please fill all fields properly",
          isSuccess: false);
    }
  }
}
