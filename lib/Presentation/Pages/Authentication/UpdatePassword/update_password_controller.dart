import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Utils/constants.dart';
import 'package:main_ott/Utils/headers.dart';
import 'package:main_ott/Utils/utils.dart';
import 'package:main_ott/model/Authentication/forgot_password_model.dart';
import 'package:main_ott/service/api/api_helper.dart';

class UpdatePasswordController extends GetxController {
  var newPass = TextEditingController().obs;
  var confPass = TextEditingController().obs;
  var newPassVal = "".obs;
  var confPassVal = "".obs;
  var isVisNew = true.obs;
  var isVisConf = true.obs;
  var apiHelper = Get.find<ApiHelper>();
  var forpostPasswordModel = ForgotPasswordModel().obs;

  void validateNewPassword(String? value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      newPassVal.value = 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        newPassVal.value = 'Enter valid password';
      } else {
        newPassVal.value = "";
      }
    }
  }

  void validateConfPassword(String? value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      confPassVal.value = 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        confPassVal.value = 'Enter valid password';
      } else {
        confPassVal.value = "";
      }
    }
  }

  void updatePassword() async {
    if (newPassVal.value == "" && confPassVal.value == "") {
      var header = await getHeaders();
      forpostPasswordModel.value = await apiHelper.callApi<ForgotPasswordModel>(
          endPoint: Const.updatePass,
          header: header!,
          reqType: 'post',
          body: {
            "newPassword": newPass.value.text,
            "confirmPassword": confPass.value.text
          },
          fromJsonFunction: ForgotPasswordModel.fromJson);
      if (forpostPasswordModel.value.success == 1) {
        Get.offAllNamed(
          AppRoutes.loginScreen,
        );
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
