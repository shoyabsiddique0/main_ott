import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Profile/ChangePassword/change_password_controller.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/AuthWidget/custom_text_input.dart';
import 'package:main_ott/Presentation/Widgets/common/custom_button.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    ChangePasswordController controller = Get.find<ChangePasswordController>();
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
          backgroundColor: kBackgroundColor,
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
            CustomButton(
                onTap: () {
                  Get.dialog(Container(
                    width: 100.w,
                    height: 100.h,
                    margin: EdgeInsets.symmetric(
                        horizontal:
                            (MediaQuery.sizeOf(context).width - 274) / 2,
                        vertical:
                            (MediaQuery.sizeOf(context).height - 233) / 2),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: whiteColor, width: 0.2.w)),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                  backgroundColor: const Color(0xff383636),
                                  radius: 50.r,
                                  child: SvgPicture.asset(
                                      "assets/ProfileAssets/great.svg")),
                              SizedBox(
                                height: 16.h,
                              ),
                              Text(
                                "Great!",
                                style: GoogleFonts.poppins(
                                    color: whiteColor,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                "Your password has been updated Successfully",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: whiteColor,
                                    fontSize: 12.sp,
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
                text: "Update",
                bgColor: kPrimaryColor,
                textColor: whiteColor),
          ],
        ),
      ),
    );
  }
}
