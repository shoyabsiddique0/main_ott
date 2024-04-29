import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Profile/ChangePassword/change_password_controller.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/AuthWidget/custom_text_input.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    ChangePasswordController controller = Get.find<ChangePasswordController>();
    return Scaffold(
      backgroundColor: const Color(0xff1c1b1b),
      appBar: AppBar(
          backgroundColor: const Color(0xff1b1c1c),
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: SvgPicture.asset(
              "assets/AuthAssets/back.svg",
              fit: BoxFit.scaleDown,
            ),
          ),
          centerTitle: true,
          title: Text("Change Password",
              style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 15.w,
                  fontWeight: FontWeight.w500))),
      body: Container(
        padding: EdgeInsets.only(top: 36.h),
        child: Column(
          children: [
            CustomTextInput(
              controller: controller.oldPass,
              hintText: "Enter Old Password",
              inputType: TextInputType.visiblePassword,
              validateFunc: controller.validateOldPassword,
              valText: controller.oldPassVal,
              isVisible: controller.isVisOld,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextInput(
              controller: controller.newPass,
              hintText: "Enter New Password",
              inputType: TextInputType.visiblePassword,
              validateFunc: controller.validateNewPassword,
              valText: controller.newPassVal,
              isVisible: controller.isVisNew,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextInput(
              controller: controller.confPass,
              hintText: "Confirm Password",
              inputType: TextInputType.visiblePassword,
              validateFunc: controller.validateConfPassword,
              valText: controller.confPassVal,
              isVisible: controller.isVisConf,
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 45.h,
              width: double.infinity,
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: ElevatedButton(
                onPressed: () {
                  Get.dialog(Container(
                    width: 100.w,
                    height: 100.h,
                    margin: EdgeInsets.only(
                        top: 230.h, bottom: 230.h, left: 60.w, right: 60.w),
                    decoration: BoxDecoration(
                        color: const Color(0xff1b1c1c),
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: whiteColor, width: 0.2.w)),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                  backgroundColor: const Color(0xff383636),
                                  radius: 40.w,
                                  child: SvgPicture.asset(
                                      "assets/ProfileAssets/great.svg")),
                              Text(
                                "Great!",
                                style: GoogleFonts.poppins(
                                    color: whiteColor,
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none),
                              ),
                              Text(
                                "Your password has been updated Successfully",
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
                        Positioned(
                          right: 8.w,
                          top: 8.w,
                          child: GestureDetector(
                            onTap: () => Get.back(),
                            child: SvgPicture.asset(
                                "assets/HomeAssets/DetailsAssets/cross.svg"),
                          ),
                        )
                      ],
                    ),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                child: Text("Update",
                    style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontSize: 13.h,
                        fontWeight: FontWeight.w500)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
