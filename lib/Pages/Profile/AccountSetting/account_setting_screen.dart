import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/ProfileWidget/AccountSetting/EditProfile.dart';
import 'package:main_ott/Widgets/ProfileWidget/profile_list.dart';

class AccountSettingScreen extends StatelessWidget {
  const AccountSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 27.h),
          color: Color(0xff1C1B1B),
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
                    height: 120.h,
                    child: Stack(children: [
                      Image.asset(
                        "assets/ProfileAssets/profile.png",
                        width: 100.w,
                        height: 100.h,
                      ),
                      Positioned(
                        bottom: 10.h,
                        left: 30.w,
                        child: SvgPicture.asset(
                            "assets/ProfileAssets/AccountSetting/upload.svg"),
                      )
                    ]),
                  ),
                  SizedBox.shrink()
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal Details",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.75),
                        fontSize: 12.w,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  EditProfile(
                      imageLink: "assets/ProfileAssets/AccountSetting/user.svg",
                      title: "Nico Robin",
                      onTap: () {}),
                  SizedBox(
                    height: 18.h,
                  ),
                  EditProfile(
                      imageLink:
                          "assets/ProfileAssets/AccountSetting/email.svg",
                      title: "niconico@gmail.com",
                      onTap: () {}),
                  SizedBox(
                    height: 18.h,
                  ),
                  EditProfile(
                      imageLink: "assets/ProfileAssets/contact.svg",
                      title: "+91 423920033",
                      onTap: () {}),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Billing Details",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.75),
                        fontSize: 12.w,
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
                        fontSize: 12.w,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Subscription Details",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.75),
                        fontSize: 12.w,
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
                              fontWeight: FontWeight.w500,
                              fontSize: 16.w)),
                      Text("Premium",
                          style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.w)),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Expires on | 14 July 2023",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.5),
                        fontSize: 12.w,
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
