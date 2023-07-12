import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Authentication/ForgotPassword/forgot_password_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/AuthWidget/custom_text_input.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordController forgotPasswordController =
        Get.find<ForgotPasswordController>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: SvgPicture.asset(
            "assets/AuthAssets/back.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      backgroundColor: blackColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
            width: 177.9.w,
            height: 169.h,
            child: Image.asset("assets/AuthAssets/lock.png")),
        SizedBox(
          height: 25.h,
        ),
        Text(
          "Forgot Password",
          style: GoogleFonts.poppins(
              color: whiteColor, fontSize: 23.w, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 56.h,
        ),
        CustomTextInput(
            controller: forgotPasswordController.phoneController,
            hintText: "Enter Your Mobile Number",
            inputType: TextInputType.phone,
            validateFunc: forgotPasswordController.validateMobile,
            valText: forgotPasswordController.valMob,
            prefix: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("+91 | ",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.30), fontSize: 14.w)),
              ],
            )),
        SizedBox(
          height: 25.h,
        ),
        Container(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            width: double.infinity,
            height: 40.h,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.otpScreen);
              },
              style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
              child: Text(
                "Send",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
              ),
            ))
      ]),
    );
  }
}
