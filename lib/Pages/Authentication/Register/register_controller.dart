import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  Rx<TextEditingController> phoneController = TextEditingController().obs;
  Rx<TextEditingController> passController = TextEditingController().obs;
  GlobalKey formKey = GlobalKey();
  String validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return "";
      }
    }
  }

  String validateMobile(String value) {
    if (value.isEmpty) {
      return "";
    }
    if (value.length != 10) {
      return 'Mobile Number must be of 10 digit';
    } else {
      return "";
    }
  }
}
