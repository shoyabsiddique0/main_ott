import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsController extends GetxController {
  var nameController = TextEditingController().obs;
  var mobileController = TextEditingController().obs;
  var queryController = TextEditingController().obs;

  var valName = "".obs;
  var valMobile = "".obs;
  var valQuery = "".obs;

  void validateName(String? value) {
    if (value!.isEmpty) {
      valName.value = "";
    }
    if (value.length > 16) {
      valName.value = 'Name is too long';
    } else {
      valName.value = "";
    }
  }

  void validateQuery(String? value) {
    if (value!.isEmpty) {
      valName.value = "";
    }
    if (value.length < 16) {
      valName.value = 'Query too short';
    } else {
      valName.value = "";
    }
  }

  void validateMobile(String? value) {
    if (value!.isEmpty) {
      valMobile.value = "";
    }
    if (value.length != 10) {
      valMobile.value = 'Mobile Number must be of 10 digit';
    } else {
      valMobile.value = "";
    }
  }
}
