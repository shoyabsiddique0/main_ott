import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController{
  var oldPass = TextEditingController().obs;
  var newPass = TextEditingController().obs;
  var confPass = TextEditingController().obs;
  var oldPassVal = "".obs;
  var newPassVal = "".obs;
  var confPassVal = "".obs;
  var isVisOld = true.obs;
  var isVisNew = true.obs;
  var isVisConf = true.obs;
  void validateOldPassword(String? value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      oldPassVal.value = 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        oldPassVal.value = 'Enter valid password';
      } else {
        oldPassVal.value = "";
      }
    }
  }
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
}