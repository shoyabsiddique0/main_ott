import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  @override
  void onInit() {
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
