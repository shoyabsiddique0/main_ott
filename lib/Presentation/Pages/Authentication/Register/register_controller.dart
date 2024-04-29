import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:main_ott/Routes/app_pages.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Utils/constants.dart';
import 'package:main_ott/Utils/headers.dart';
import 'package:main_ott/Utils/utils.dart';
import 'package:main_ott/model/Authentication/registration_model.dart';
import 'package:main_ott/service/api/api_helper.dart';

class RegisterController extends GetxController {
  Rx<TextEditingController> phoneController = TextEditingController().obs;
  Rx<TextEditingController> passController = TextEditingController().obs;
  Rx<TextEditingController> nameController = TextEditingController().obs;
  var valPass = "".obs;
  var valMob = "".obs;
  var valName = "".obs;
  var isVisible = true.obs;
  var apiHelper = Get.find<ApiHelper>();
  GlobalKey formKey = GlobalKey();
  var registrationModel = RegistrationModel().obs;
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.onInit();
  }

  void sendOtp() async {
    if (valName.value == "" && valMob.value == "" && valPass.value == "") {
      var header = await getHeaders();
      registrationModel.value = await apiHelper.callApi<RegistrationModel>(
          endPoint: Const.register,
          header: header!,
          reqType: 'post',
          body: {
            "name": nameController.value.text,
            "password": passController.value.text,
            "phone": phoneController.value.text
          },
          fromJsonFunction: RegistrationModel.fromJson);
      if (registrationModel.value.success == 1) {
        Get.toNamed(AppRoutes.otpScreen,
            arguments: {"mobileNo": phoneController.value.text});
        Utils().showSnackBar(Get.context, registrationModel.value.message,
            isSuccess: true);
      } else {
        print(registrationModel.value.toJson());
        Utils().showSnackBar(Get.context, registrationModel.value.message,
            isSuccess: false);
      }
    } else {
      Utils().showSnackBar(Get.context, "Please fill all fields properly",
          isSuccess: false);
    }
  }

  void validatePassword(String? value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      valPass.value = 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        valPass.value = 'Enter valid password';
      } else {
        valPass.value = "";
      }
    }
  }

  void validateName(String? value) {
    RegExp regex = RegExp(r'^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$');
    if (value!.isEmpty) {
      valName.value = 'Please enter name';
    } else {
      if (!regex.hasMatch(value)) {
        valName.value = 'Enter valid name';
      } else {
        valName.value = "";
      }
    }
  }

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
}
