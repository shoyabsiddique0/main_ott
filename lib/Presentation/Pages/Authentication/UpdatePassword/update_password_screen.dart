import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Authentication/UpdatePassword/update_password_controller.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/AuthWidget/custom_text_input.dart';
import 'package:main_ott/Presentation/Widgets/common/custom_button.dart';

class UpdatePassword extends StatelessWidget {
  const UpdatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    UpdatePasswordController controller = Get.find<UpdatePasswordController>();
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
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
                width: 177.9.w,
                height: 169.h,
                child: Image.asset("assets/AuthAssets/lock.png")),
            SizedBox(
              height: 25.h,
            ),
            Text(
              "Update Password",
              style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
              child: Text(
                "Enter at least 6 characters with upper and lower case ",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 40.h,
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
              height: 100.h,
            ),
            CustomButton(
                onTap: () => controller.updatePassword(),
                text: "Update",
                bgColor: kPrimaryColor,
                textColor: whiteColor),
          ]),
        ),
      ),
    );
  }
}
