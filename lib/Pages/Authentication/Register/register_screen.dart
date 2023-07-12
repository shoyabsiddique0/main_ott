import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Authentication/Register/register_controller.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/AuthWidget/custom_text_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.find<RegisterController>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                SizedBox(
                    height: 200.h,
                    child: Image.asset(
                      "assets/AuthAssets/camera.png",
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  height: 25.h,
                ),
                CustomTextInput(
                  hintText: "Enter Your Name",
                  controller: controller.nameController,
                  inputType: TextInputType.name,
                  validateFunc: controller.validateName,
                  valText: controller.valName,
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextInput(
                  hintText: "Enter Phone Number",
                  controller: controller.phoneController,
                  inputType: TextInputType.phone,
                  validateFunc: controller.validateMobile,
                  valText: controller.valMob,
                ),
                SizedBox(
                  height: 6.h,
                ),
                CustomTextInput(
                  hintText: "Enter Password",
                  controller: controller.passController,
                  inputType: TextInputType.visiblePassword,
                  validateFunc: controller.validatePassword,
                  valText: controller.valPass,
                  isVisible: controller.isVisible,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    width: double.infinity,
                    height: 50.h,
                    padding: EdgeInsets.only(left: 24.w, right: 24.w),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor),
                        child: Text(
                          "Register",
                          style: GoogleFonts.poppins(
                              fontSize: 16.w, fontWeight: FontWeight.w500),
                        ))),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 120.w,
                      child: const Divider(
                        color: Color(0xff5d5d5d),
                        thickness: 2,
                        height: 2,
                      ),
                    ),
                    Text(
                      "Or",
                      style: GoogleFonts.poppins(
                          color: whiteColor, fontSize: 15.w),
                    ),
                    SizedBox(
                      width: 120.w,
                      child: const Divider(
                        color: Color(0xff5d5d5d),
                        thickness: 2,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.w),
                        border: Border.all(color: primaryColor, width: 1.5)),
                    margin: EdgeInsets.only(left: 24.w, right: 24.w),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Continue with Google  ",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.w,
                                  fontWeight: FontWeight.w500,
                                  color: primaryColor),
                            ),
                            SvgPicture.asset("assets/AuthAssets/google.svg"),
                          ],
                        ))),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have an Account? ",
                      style: GoogleFonts.poppins(
                          color: whiteColor, fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.poppins(
                              color: primaryColor,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
                SizedBox(
                  height: 25.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
