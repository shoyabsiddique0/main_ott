import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Authentication/OTP/otp_controller.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/AuthWidget/otp_text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OtpController controller = Get.find<OtpController>();
    return Scaffold(
      backgroundColor: Color(0xff1b1c1c),
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
              height: 25.h,
            ),
            Text(
              "OTP Verification",
              style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 23.w,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 56.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 24.w, right: 24.w),
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
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.w),
              child: Align(
                alignment: Alignment.centerRight,
                child: Obx(
                  () => Text(
                    Duration(seconds: controller.start.value)
                        .toString()
                        .split(".")[0],
                    style:
                        GoogleFonts.poppins(color: whiteColor.withOpacity(0.5)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
                padding: EdgeInsets.only(left: 24.w, right: 24.w),
                width: double.infinity,
                height: 40.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: primaryColor),
                  child: Text(
                    "Verify",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  ),
                )),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't recieve the code? ",
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
                              ? primaryColor
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
