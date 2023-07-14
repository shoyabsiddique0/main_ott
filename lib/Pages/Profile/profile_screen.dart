import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Profile/Watchlist/watchlist_screen.dart';
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
                    imageLink: "assets/ProfileAssets/full.svg",
                    title: "Watchlist",
                    onTap: () => Get.toNamed(AppRoutes.watchlistScreen),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ProfileList(
                    imageLink: "assets/ProfileAssets/download.svg",
                    title: "Downloads",
                    onTap: () => Get.toNamed(AppRoutes.downloadsScreen),
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
                    onTap: () {
                      // Get.defaultDialog(
                      //     title: "Logout",
                      //     content: Text("Are you sure you want to logout?"),
                      //     actions: [
                      //       ElevatedButton(
                      //           onPressed: () =>
                      //               Get.offAllNamed(AppRoutes.loginScreen),
                      //           child: Text("Yes")),
                      //       ElevatedButton(
                      //           onPressed: () => Get.back(), child: Text("No"))
                      //     ]);
                      Get.dialog(Container(
                        width: 100.w,
                        height: 100.h,
                        margin: EdgeInsets.only(
                            top: 230.h, bottom: 230.h, left: 60.w, right: 60.w),
                        decoration: BoxDecoration(
                            color: Color(0xff1b1c1c),
                            borderRadius: BorderRadius.circular(8.r),
                            border:
                                Border.all(color: whiteColor, width: 0.2.w)),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Color(0xff383636),
                                      radius: 40.w,
                                      child: SvgPicture.asset(
                                          "assets/ProfileAssets/exit.svg")),
                                  Text(
                                    "Logout?",
                                    style: GoogleFonts.poppins(
                                        color: whiteColor,
                                        fontSize: 18.w,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.none),
                                  ),
                                  Text(
                                    "Are you sure you want to Logout??",
                                    style: GoogleFonts.poppins(
                                        color: whiteColor,
                                        fontSize: 12.w,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    color: primaryColor,
                                                    width: 1.w,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.w)),
                                              backgroundColor: primaryColor,
                                              elevation: 0,
                                              minimumSize: Size(80.w, 30.h)),
                                          onPressed: () => Get.offAllNamed(
                                              AppRoutes.loginScreen),
                                          child: Text("Yes")),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.transparent,
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    color: primaryColor,
                                                    width: 1.w,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.w)),
                                              elevation: 0,
                                              minimumSize: Size(80.w, 30.h)),
                                          onPressed: () => Get.back(),
                                          child: Text("No"))
                                    ],
                                  )
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
