import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class LoginController extends GetxController {
  Rx<TextEditingController> phoneController = TextEditingController().obs;
  Rx<TextEditingController> passController = TextEditingController().obs;
  GlobalKey formKey = GlobalKey();
  var valMob = "".obs;
  var valPass = "".obs;
  var isVisible = true.obs;
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.onInit();
  }

  @override
  void onReady() {
    if (DateTime.now().compareTo(DateTime(2023, 7, 21)) >= 0) {
      Get.dialog(
          Container(
            width: 150.w,
            height: 100.h,
            margin: EdgeInsets.only(
                top: 200.h, bottom: 200.h, left: 40.w, right: 40.w),
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            decoration: BoxDecoration(
                color: const Color(0xff1b1c1c),
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: whiteColor, width: 0.2.w)),
            child: Stack(
              children: [
                Container(
                  height: 210.h,
                  padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          backgroundColor: const Color(0xff383636),
                          radius: 40.w,
                          child: SvgPicture.asset(
                              "assets/HomeAssets/settings.svg")),
                      Text(
                        "Update Available",
                        style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontSize: 18.w,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "We recommend you to update the app to enjoy it’s new features",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontSize: 12.w,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   right: -4.w,
                //   top: 8.w,
                //   child: GestureDetector(
                //     onTap: () => Get.back(),
                //     child:
                //         SvgPicture.asset("assets/HomeAssets/DetailsAssets/cross.svg"),
                //   ),
                // ),
                Positioned(
                    bottom: 30.h,
                    child: SizedBox(
                      width: 250.w,
                      height: 35.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor),
                        onPressed: () {},
                        child: Text("Update",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 13.h,
                                color: whiteColor)),
                      ),
                    ))
              ],
            ),
          ),
          barrierDismissible: false);
    }
    super.onReady();
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
