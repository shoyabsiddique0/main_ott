import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/ProfileWidget/profile_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: const Color(0xff1c1b1b),
          padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100.h,
                      width: 100.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2.w),
                        child: Image.asset(
                          "assets/ProfileAssets/profile.png",
                          // fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      "Nico Robin",
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontSize: 16.w,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "niconico@gmail.com",
                      style: GoogleFonts.poppins(
                          color: whiteColor.withOpacity(0.75),
                          fontSize: 12.w,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "+91 4283920033",
                      style: GoogleFonts.poppins(
                          color: whiteColor.withOpacity(0.75),
                          fontSize: 12.w,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Main",
                    style: GoogleFonts.poppins(color: whiteColor),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileList(
                    imageLink: "assets/NavBarAssets/profile.svg",
                    title: "Account Settings",
                    onTap: () => Get.toNamed(AppRoutes.accountSetting),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.subscriptionScreen),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/ProfileAssets/subscription.svg",
                              width: 24.w,
                              height: 24.h,
                              fit: BoxFit.scaleDown,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (bounds) => const LinearGradient(
                                      colors: [
                                    // primaryColor,
                                    Color(0xffC02739),
                                    Color(0xffFF5B50),
                                    // whiteColor
                                  ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter)
                                  .createShader(
                                Rect.fromLTWH(
                                    0, 0, bounds.width, bounds.height),
                              ),
                              child: Text(
                                "Subscription",
                                style: GoogleFonts.poppins(
                                    // color: whiteColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.w),
                              ),
                            ),
                          ],
                        ),
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (bounds) => const LinearGradient(
                                  colors: [
                                // primaryColor,
                                Color(0xffC02739),
                                Color(0xffFF5B50),
                                // whiteColor
                              ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)
                              .createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                          ),
                          child: SvgPicture.asset(
                            "assets/ProfileAssets/right.svg",
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileList(
                    imageLink: "assets/ProfileAssets/manage.svg",
                    title: "Manage Profiles",
                    onTap: () => Get.toNamed(AppRoutes.manageProfileScreen),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileList(
                    imageLink: "assets/ProfileAssets/heart.svg",
                    title: "Wishlist",
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileList(
                    imageLink: "assets/ProfileAssets/download.svg",
                    title: "Downloads",
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileList(
                    imageLink: "assets/ProfileAssets/pass.svg",
                    title: "Change Password",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 36.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Others",
                    style: GoogleFonts.poppins(color: whiteColor),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileList(
                    imageLink: "assets/ProfileAssets/contact.svg",
                    title: "Contact Us",
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileList(
                    imageLink: "assets/ProfileAssets/terms.svg",
                    title: "Terms & Conditions",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 36.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Actions",
                    style: GoogleFonts.poppins(color: whiteColor),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileList(
                    imageLink: "assets/ProfileAssets/logout.svg",
                    title: "Logout",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 36.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
