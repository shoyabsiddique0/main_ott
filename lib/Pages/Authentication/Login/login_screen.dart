import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Authentication/Login/login_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/AuthWidget/custom_text_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.find<LoginController>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                SizedBox(
                    height: 230.h,
                    child: Image.asset(
                      "assets/AuthAssets/camera.png",
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  height: 50.h,
                ),
                CustomTextInput(
                  hintText: "Enter Phone Number",
                  controller: controller.phoneController,
                  inputType: TextInputType.phone,
                  validateFunc: controller.validateMobile,
                  prefix: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "+91 | ",
                        style: GoogleFonts.poppins(
                            color: whiteColor.withOpacity(0.30),
                            fontSize: 14.w),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomTextInput(
                  hintText: "Enter Password",
                  controller: controller.passController,
                  inputType: TextInputType.visiblePassword,
                  validateFunc: controller.validatePassword,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 24.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.forgotPasswordScreen);
                          },
                          child: Text(
                            "Forgot Passowrd?",
                            style: GoogleFonts.poppins(
                                color: primaryColor,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                    width: double.infinity,
                    height: 50.h,
                    padding: EdgeInsets.only(left: 24.w, right: 24.w),
                    child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.bottomNavigationScreen);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor),
                        child: Text(
                          "Login",
                          style: GoogleFonts.poppins(
                              fontSize: 16.w, fontWeight: FontWeight.w500),
                        ))),
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New Here? ",
                      style: GoogleFonts.poppins(
                          color: whiteColor, fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.registerScreen);
                        },
                        child: Text(
                          "Register",
                          style: GoogleFonts.poppins(
                              color: primaryColor,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
