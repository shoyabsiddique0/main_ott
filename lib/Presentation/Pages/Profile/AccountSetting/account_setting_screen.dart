import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/ProfileWidget/AccountSetting/EditProfile.dart';
import 'package:main_ott/Presentation/Widgets/ProfileWidget/profile_list.dart';

class AccountSettingScreen extends StatelessWidget {
  const AccountSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 27.h),
        color: kBackgroundColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () => Get.back(),
                      child: SvgPicture.asset("assets/AuthAssets/back.svg")),
                  SizedBox(
                    height: 125.h,
                    child: Stack(children: [
                      Image.asset(
                        "assets/ProfileAssets/profile.png",
                        width: 100.w,
                        height: 100.w,
                      ),
                      Positioned(
                        bottom: 0.h,
                        left: 35.w,
                        child: SvgPicture.asset(
                            "assets/ProfileAssets/AccountSetting/upload.svg"),
                      )
                    ]),
                  ),
                  const SizedBox.shrink()
                ],
              ),
              SizedBox(
                height: 36.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal Details",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.75),
                        fontSize: 12.sp,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  EditProfile(
                      imageLink: "assets/ProfileAssets/AccountSetting/user.svg",
                      title: "Nico Robin",
                      onTap: () {}),
                  SizedBox(
                    height: 24.h,
                  ),
                  EditProfile(
                      imageLink:
                          "assets/ProfileAssets/AccountSetting/email.svg",
                      title: "niconico@gmail.com",
                      onTap: () {}),
                  SizedBox(
                    height: 24.h,
                  ),
                  EditProfile(
                      imageLink: "assets/ProfileAssets/contact.svg",
                      title: "+91 423920033",
                      onTap: () {}),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Billing Details",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.75),
                        fontSize: 12.sp,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileList(
                      imageLink:
                          "assets/ProfileAssets/AccountSetting/logos_visa.svg",
                      title: "**** **** **** 2456",
                      onTap: () {}),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Upcoming billing date | 14 July 2023",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.5),
                        fontSize: 12.sp,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Subscription Details",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.75),
                        fontSize: 12.sp,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Current Plan",
                          style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp)),
                      Text("Yearly",
                          style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp)),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Expires on | 14 July 2023",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.5),
                        fontSize: 12.sp,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
