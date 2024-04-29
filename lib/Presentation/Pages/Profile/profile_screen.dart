import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Profile/profile_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/ProfileWidget/profile_list.dart';
import 'package:main_ott/Utils/utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ProfileController>();
    return SingleChildScrollView(
      child: Container(
        color: kBackgroundColor,
        padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
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
                    width: 100.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2.r),
                      child: Image.asset(
                        "assets/ProfileAssets/profile.png",
                        // fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Nico Robin",
                    style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "niconico@gmail.com",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.75),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "+91 4283920033",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.75),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 48.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Main",
                  style:
                      GoogleFonts.poppins(color: whiteColor, fontSize: 12.sp),
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
                            "assets/ProfileAssets/crown.svg",
                            width: 24.w,
                            height: 24.w,
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          ShaderMask(
                            blendMode: BlendMode.srcIn,
                            shaderCallback: (bounds) => const LinearGradient(
                                    colors: [
                                  // kPrimaryColor,
                                  Color(0xffC02739),
                                  Color(0xffFF5B50),
                                  // whiteColor
                                ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)
                                .createShader(
                              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                            ),
                            child: Text(
                              "Subscription",
                              style: GoogleFonts.poppins(
                                  // color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp),
                            ),
                          ),
                        ],
                      ),
                      ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => const LinearGradient(
                                colors: [
                              // kPrimaryColor,
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
                          height: 24.w,
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
                  onTap: () => Get.toNamed(AppRoutes.changePasswordScreen),
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
                  style:
                      GoogleFonts.poppins(color: whiteColor, fontSize: 12.sp),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ProfileList(
                  imageLink: "assets/ProfileAssets/contact.svg",
                  title: "Contact Us",
                  onTap: () => Get.toNamed(AppRoutes.contactUsScreen),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ProfileList(
                  imageLink: "assets/ProfileAssets/policy.svg",
                  title: "Policies",
                  onTap: () => Get.toNamed(AppRoutes.policyScreen),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ProfileList(
                  imageLink: "assets/ProfileAssets/terms.svg",
                  title: "Terms & Conditions",
                  onTap: () => Get.toNamed(AppRoutes.termsAndCOnditionScreen),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ProfileList(
                  imageLink: "assets/ProfileAssets/about.svg",
                  title: "About us",
                  onTap: () => Get.toNamed(AppRoutes.aboutUsScreen),
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
                  style:
                      GoogleFonts.poppins(color: whiteColor, fontSize: 12.sp),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ProfileList(
                  imageLink: "assets/ProfileAssets/delete.svg",
                  title: "Delete Account",
                  hasBack: false,
                  // suffix: const SizedBox.shrink(),
                  // color: kPrimaryColor,
                  textColor: Colors.red,
                  onTap: () {
                    // Get.dialog(
                    //   Container(
                    //     width: 274.w,
                    //     height: 307.h,
                    //     margin: EdgeInsets.symmetric(
                    //         horizontal:
                    //             (MediaQuery.sizeOf(context).width - 274) / 2,
                    //         vertical:
                    //             (MediaQuery.sizeOf(context).height - 307) / 2),
                    //     decoration: BoxDecoration(
                    //         color: Colors.black,
                    //         borderRadius: BorderRadius.circular(8.r),
                    //         border:
                    //             Border.all(color: whiteColor, width: 0.2.w)),
                    //     child: Stack(
                    //       children: [
                    //         Container(
                    //           padding: EdgeInsets.symmetric(horizontal: 24.w),
                    //           child: Column(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceEvenly,
                    //             children: [
                    //               CircleAvatar(
                    //                   backgroundColor: const Color(0xff151414),
                    //                   radius: 50.r,
                    //                   child: SvgPicture.asset(
                    //                     "assets/ProfileAssets/delete.svg",
                    //                     color: Colors.white,
                    //                     fit: BoxFit.fitHeight,
                    //                     height: 36.h,
                    //                   )),
                    //               Text(
                    //                 "Delete Account?",
                    //                 style: GoogleFonts.poppins(
                    //                     color: whiteColor,
                    //                     fontSize: 18.sp,
                    //                     fontWeight: FontWeight.w600,
                    //                     decoration: TextDecoration.none),
                    //               ),
                    //               Text(
                    //                 "Are you sure you want to Delete account? All the data of this account will be erased.",
                    //                 textAlign: TextAlign.center,
                    //                 style: GoogleFonts.poppins(
                    //                     color: whiteColor,
                    //                     fontSize: 12.sp,
                    //                     fontWeight: FontWeight.w400,
                    //                     decoration: TextDecoration.none),
                    //               ),
                    //               Row(
                    //                 mainAxisAlignment:
                    //                     MainAxisAlignment.spaceEvenly,
                    //                 children: [
                    //                   GestureDetector(
                    //                       onTap: () => Get.offAllNamed(
                    //                           AppRoutes.loginScreen),
                    //                       child: Container(
                    //                           decoration: BoxDecoration(
                    //                               color: kPrimaryColor,
                    //                               borderRadius:
                    //                                   BorderRadius.circular(
                    //                                       8.r)),
                    //                           padding: EdgeInsets.symmetric(
                    //                               horizontal: 36.w,
                    //                               vertical: 8.h),
                    //                           child: Text(
                    //                             "Yes",
                    //                             textAlign: TextAlign.center,
                    //                             style: GoogleFonts.poppins(
                    //                                 color: whiteColor,
                    //                                 fontSize: 14.sp,
                    //                                 fontWeight: FontWeight.w400,
                    //                                 decoration:
                    //                                     TextDecoration.none),
                    //                           ))),
                    //                   GestureDetector(
                    //                       onTap: () => Get.back(),
                    //                       child: Container(
                    //                           decoration: BoxDecoration(
                    //                               color: Colors.transparent,
                    //                               border: Border.all(
                    //                                   color: kPrimaryColor,
                    //                                   width: 1.w),
                    //                               borderRadius:
                    //                                   BorderRadius.circular(
                    //                                       8.r)),
                    //                           padding: EdgeInsets.symmetric(
                    //                               horizontal: 36.w,
                    //                               vertical: 8.h),
                    //                           child: Text(
                    //                             "No",
                    //                             textAlign: TextAlign.center,
                    //                             style: GoogleFonts.poppins(
                    //                                 color: whiteColor,
                    //                                 fontSize: 14.sp,
                    //                                 fontWeight: FontWeight.w400,
                    //                                 decoration:
                    //                                     TextDecoration.none),
                    //                           ))),
                    //                 ],
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //         Positioned(
                    //           right: 8.w,
                    //           top: 8.w,
                    //           child: GestureDetector(
                    //             onTap: () => Get.back(),
                    //             child: SvgPicture.asset(
                    //                 "assets/HomeAssets/DetailsAssets/cross.svg"),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // );
                    Utils().showBottomSheetPopup(
                        context: context,
                        title: "Delete Account?",
                        description:
                            "Are you sure you want to Delete account? All the data of this account will be erased.",
                        leftButtonName: "Yes",
                        leftBtnBackgroundColor: kPrimaryColor,
                        leftTextColor: kColorText,
                        leftButtonHeight: 53.h,
                        rightBorderColor: kPrimaryColor,
                        rightTextColor: kPrimaryColor,
                        rightButtonName: "No, go back",
                        rightButtonHeight: 53.h,
                        cancelButtonPressed: () =>
                            Get.offAllNamed(AppRoutes.loginScreen),
                        ic: "assets/ProfileAssets/delete_acc.svg");
                  },
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
                    // Get.dialog(
                    //   Container(
                    //     margin: EdgeInsets.symmetric(
                    //         horizontal:
                    //             (MediaQuery.sizeOf(context).width - 292) / 2,
                    //         vertical:
                    //             (MediaQuery.sizeOf(context).height - 302) / 2),
                    //     decoration: BoxDecoration(
                    //         color: Colors.black,
                    //         borderRadius: BorderRadius.circular(8.r),
                    //         border:
                    //             Border.all(color: whiteColor, width: 0.2.w)),
                    //     child: Stack(
                    //       children: [
                    //         Container(
                    //           padding: EdgeInsets.symmetric(horizontal: 24.w),
                    //           child: Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               CircleAvatar(
                    //                   backgroundColor: const Color(0xff151414),
                    //                   radius: 50.r,
                    //                   child: SvgPicture.asset(
                    //                     "assets/ProfileAssets/logout1.svg",
                    //                     color: Colors.white,
                    //                     fit: BoxFit.fitHeight,
                    //                     height: 36.h,
                    //                   )),
                    //               SizedBox(
                    //                 height: 18.h,
                    //               ),
                    //               Text(
                    //                 "Logout?",
                    //                 style: GoogleFonts.poppins(
                    //                     color: whiteColor,
                    //                     fontSize: 18.sp,
                    //                     fontWeight: FontWeight.w600,
                    //                     decoration: TextDecoration.none),
                    //               ),
                    //               SizedBox(
                    //                 height: 8.h,
                    //               ),
                    //               Text(
                    //                 "Are you sure you want to Logout?",
                    //                 textAlign: TextAlign.center,
                    //                 style: GoogleFonts.poppins(
                    //                     color: whiteColor,
                    //                     fontSize: 12.sp,
                    //                     fontWeight: FontWeight.w400,
                    //                     decoration: TextDecoration.none),
                    //               ),
                    //               SizedBox(
                    //                 height: 24.h,
                    //               ),
                    //               Row(
                    //                 mainAxisAlignment:
                    //                     MainAxisAlignment.spaceEvenly,
                    //                 children: [
                    //                   GestureDetector(
                    //                       onTap: () {
                    //                         Get.back();
                    //                         controller.logout();
                    //                       },
                    //                       child: Container(
                    //                           decoration: BoxDecoration(
                    //                               color: kPrimaryColor,
                    //                               borderRadius:
                    //                                   BorderRadius.circular(
                    //                                       8.r)),
                    //                           padding: EdgeInsets.symmetric(
                    //                               horizontal: 36.w,
                    //                               vertical: 8.h),
                    //                           child: Text(
                    //                             "Yes",
                    //                             textAlign: TextAlign.center,
                    //                             style: GoogleFonts.poppins(
                    //                                 color: whiteColor,
                    //                                 fontSize: 14.sp,
                    //                                 fontWeight: FontWeight.w400,
                    //                                 decoration:
                    //                                     TextDecoration.none),
                    //                           ))),
                    //                   GestureDetector(
                    //                       onTap: () => Get.back(),
                    //                       child: Container(
                    //                           decoration: BoxDecoration(
                    //                               color: Colors.transparent,
                    //                               border: Border.all(
                    //                                   color: kPrimaryColor,
                    //                                   width: 1.w),
                    //                               borderRadius:
                    //                                   BorderRadius.circular(
                    //                                       8.r)),
                    //                           padding: EdgeInsets.symmetric(
                    //                               horizontal: 36.w,
                    //                               vertical: 8.h),
                    //                           child: Text(
                    //                             "No",
                    //                             textAlign: TextAlign.center,
                    //                             style: GoogleFonts.poppins(
                    //                                 color: whiteColor,
                    //                                 fontSize: 14.sp,
                    //                                 fontWeight: FontWeight.w400,
                    //                                 decoration:
                    //                                     TextDecoration.none),
                    //                           ))),
                    //                 ],
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //         Positioned(
                    //           right: 8.w,
                    //           top: 8.w,
                    //           child: GestureDetector(
                    //             onTap: () => Get.back(),
                    //             child: SvgPicture.asset(
                    //                 "assets/HomeAssets/DetailsAssets/cross.svg"),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // );
                    Utils().showBottomSheetPopup(
                        context: context,
                        title: "Logout?",
                        description:
                            "Are you sure you want to logout of the app? No worries you can login later.",
                        leftButtonName: "Yes",
                        leftBtnBackgroundColor: kPrimaryColor,
                        leftTextColor: kColorText,
                        leftButtonHeight: 53.h,
                        rightBorderColor: kPrimaryColor,
                        rightTextColor: kPrimaryColor,
                        rightButtonName: "No, go back",
                        rightButtonHeight: 53.h,
                        cancelButtonPressed: () =>
                            Get.offAllNamed(AppRoutes.loginScreen),
                        ic: "assets/ProfileAssets/logout_acc.svg");
                  },
                ),
              ],
            ),
            SizedBox(
              height: 170.h,
            )
          ],
        ),
      ),
    );
  }
}
