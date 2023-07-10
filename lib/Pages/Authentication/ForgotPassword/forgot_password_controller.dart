import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  Rx<TextEditingController> phoneController = TextEditingController().obs;
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
