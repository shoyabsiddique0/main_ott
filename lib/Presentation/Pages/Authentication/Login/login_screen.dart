import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Authentication/Login/login_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/AuthWidget/custom_text_input.dart';
import 'package:main_ott/Presentation/Widgets/common/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.find<LoginController>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  SizedBox(
                      // height: 230.h,
                      // width: double.infinity,
                      child: Image.asset(
                    "assets/AuthAssets/camera.png",
                    fit: BoxFit.fill,
                  )),
                  SizedBox(
                    height: 93.h,
                  ),
                  CustomTextInput(
                    hintText: "Enter Phone Number",
                    controller: controller.phoneController,
                    inputType: TextInputType.phone,
                    validateFunc: controller.validateMobile,
                    valText: controller.valMob,
                    prefix: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+91 | ",
                          style: GoogleFonts.poppins(
                              color: whiteColor.withOpacity(0.30),
                              fontSize: 14.sp),
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
                    valText: controller.valPass,
                    isVisible: controller.isVisible,
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
                              "Forgot Password?",
                              style: GoogleFonts.poppins(
                                  color: kPrimaryColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1.5.sp,
                                  decorationColor: kPrimaryColor),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48.h,
                  ),
                  // GestureDetector(
                  //   onTap: () => Get.toNamed(AppRoutes.otpScreen),
                  //   child: Container(
                  //       width: double.infinity,
                  //       // height: 45.h,
                  //       padding: EdgeInsets.symmetric(vertical: 16.h),
                  //       margin: EdgeInsets.only(left: 16.w, right: 16.w),
                  //       alignment: Alignment.center,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(4.r),
                  //         color: kPrimaryColor,
                  //       ),
                  //       child: Text(
                  //         "Login",
                  //         style: GoogleFonts.poppins(
                  //             fontSize: 16.sp,
                  //             fontWeight: FontWeight.w500,
                  //             color: whiteColor),
                  //       )),
                  // ),
                  CustomButton(
                    onTap: () => controller.login(),
                    // onTap: () => Get.toNamed(AppRoutes.otpScreen),
                    text: "Login",
                    bgColor: kPrimaryColor,
                    textColor: whiteColor,
                  ),
                  SizedBox(
                    height: 141.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New Here? ",
                        style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp),
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.registerScreen);
                          },
                          child: Text(
                            "Register",
                            style: GoogleFonts.poppins(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                decorationColor: kPrimaryColor,
                                decorationThickness: 1.5.sp,
                                fontSize: 14.sp),
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
      ),
    );
  }
}
