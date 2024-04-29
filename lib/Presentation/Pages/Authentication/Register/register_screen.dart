import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Authentication/Register/register_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/AuthWidget/custom_text_input.dart';
import 'package:main_ott/Presentation/Widgets/common/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.find<RegisterController>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                SizedBox(
                    child: Image.asset(
                  "assets/AuthAssets/camera.png",
                  fit: BoxFit.fitWidth,
                )),
                Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      CustomTextInput(
                        hintText: "Enter Your Name",
                        controller: controller.nameController,
                        inputType: TextInputType.name,
                        validateFunc: controller.validateName,
                        valText: controller.valName,
                        height: 56.h,
                      ),
                      SizedBox(
                        height: 24.h,
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
                      SizedBox(
                        height: 20.h,
                      ),
                      // Container(
                      //     width: double.infinity,
                      //     height: 45.h,
                      //     padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      //     child: ElevatedButton(
                      //         onPressed: () {},
                      //         style: ElevatedButton.styleFrom(
                      //             backgroundColor: kPrimaryColor),
                      //         child: Text(
                      //           "Register",
                      //           style: GoogleFonts.poppins(
                      //               fontSize: 14.w, fontWeight: FontWeight.w500),
                      //         ))),
                      CustomButton(
                          onTap: () => controller.sendOtp(),
                          text: "Register",
                          bgColor: kPrimaryColor,
                          textColor: whiteColor),
                      SizedBox(
                        height: 48.h,
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
                                color: whiteColor, fontSize: 16.sp),
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
                        height: 48.h,
                      ),
                      Container(
                          width: double.infinity,
                          height: 56.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border:
                                  Border.all(color: kPrimaryColor, width: 1.5)),
                          margin: EdgeInsets.only(left: 16.w, right: 16.w),
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
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: kPrimaryColor),
                                  ),
                                  SvgPicture.asset(
                                      "assets/AuthAssets/google.svg"),
                                ],
                              ))),
                      const SizedBox(
                        height: 48,
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
                                    color: kPrimaryColor,
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
                ).paddingOnly(top: 258.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
