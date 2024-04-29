import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/ProfileWidget/profile_list.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 70.h),
          child: Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
            decoration: const BoxDecoration(
                color: kBackgroundColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, spreadRadius: 0.00001, blurRadius: 5)
                ]),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: SvgPicture.asset(
                    "assets/AuthAssets/back.svg",
                    width: 20.w,
                    height: 20.w,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Policies",
                        style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontSize: 18.w,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: kColorSecondaryBackground,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            children: [
              ProfileList(
                  imageLink: "assets/ProfileAssets/refund.svg",
                  title: "Refund Policy",
                  onTap: () => Get.toNamed(AppRoutes.refundPolicyScreen)),
              SizedBox(
                height: 24.h,
              ),
              ProfileList(
                  imageLink: "assets/ProfileAssets/privacy.svg",
                  title: "Privacy Policy",
                  onTap: () => Get.toNamed(AppRoutes.privacyScreen)),
              SizedBox(
                height: 24.h,
              ),
              ProfileList(
                  imageLink: "assets/ProfileAssets/cancel.svg",
                  title: "Cancellation Policy",
                  onTap: () => Get.toNamed(AppRoutes.cancellationScreen)),
            ],
          ),
        ));
  }
}
