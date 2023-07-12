import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  Rx<TextEditingController> phoneController = TextEditingController().obs;
  Rx<TextEditingController> passController = TextEditingController().obs;
  Rx<TextEditingController> nameController = TextEditingController().obs;
  var valPass = "".obs;
  var valMob = "".obs;
  var valName = "".obs;
  var isVisible = true.obs;
  GlobalKey formKey = GlobalKey();
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
