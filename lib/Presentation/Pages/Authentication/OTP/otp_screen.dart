import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Authentication/OTP/otp_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/AuthWidget/otp_text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OtpController controller = Get.find<OtpController>();
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                margin: EdgeInsets.only(top: 60.h),
                width: 177.9.w,
                height: 169.h,
                child: Image.asset("assets/AuthAssets/lock.png")),
            SizedBox(
              height: 54.h,
            ),
            Text(
              "OTP Verification",
              style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 82.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.w, right: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpText(
                    controller: controller.controller1,
                    hintText: "*",
                    inputType: TextInputType.number,
                    currNode: controller.node1,
                    nextNode: controller.node2,
                    prevNode: controller.node1,
                  ),
                  OtpText(
                    controller: controller.controller2,
                    hintText: "*",
                    inputType: TextInputType.number,
                    currNode: controller.node2,
                    nextNode: controller.node3,
                    prevNode: controller.node1,
                  ),
                  OtpText(
                    controller: controller.controller3,
                    hintText: "*",
                    inputType: TextInputType.number,
                    currNode: controller.node3,
                    nextNode: controller.node4,
                    prevNode: controller.node2,
                  ),
                  OtpText(
                    controller: controller.controller4,
                    hintText: "*",
                    inputType: TextInputType.number,
                    currNode: controller.node4,
                    nextNode: controller.node4,
                    prevNode: controller.node3,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.w),
              child: Align(
                alignment: Alignment.centerRight,
                child: Obx(
                  () => Text(
                    "00:${Duration(seconds: controller.start.value).toString().split(".")[0].split(':')[2]} sec",
                    style:
                        GoogleFonts.poppins(color: whiteColor.withOpacity(0.5)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 116.h,
            ),
            GestureDetector(
              // onTap: () => controller.verifyOtp(),
              onTap: () => Get.toNamed(AppRoutes.bottomNavigationScreen),
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  margin: EdgeInsets.only(left: 16.w, right: 16.w),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: kPrimaryColor,
                  ),
                  alignment: Alignment.center,
                  // height: 40.h,
                  child: Text(
                    "Verify",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, color: whiteColor),
                  )),
            ),
            SizedBox(
              height: 36.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't recieve the code?",
                  style: GoogleFonts.poppins(color: whiteColor),
                ),
                Obx(
                  () => TextButton(
                    onPressed: controller.start.value == 0
                        ? () {
                            Get.back();
                          }
                        : null,
                    child: Text(
                      "Resend",
                      style: GoogleFonts.poppins(
                          color: controller.start.value == 0
                              ? kPrimaryColor
                              : Colors.grey,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
