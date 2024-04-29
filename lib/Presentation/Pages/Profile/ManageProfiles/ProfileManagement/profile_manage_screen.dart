import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Profile/ManageProfiles/ProfileManagement/profile_manage_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/ProfileWidget/AccountSetting/EditProfile.dart';
import 'package:main_ott/Presentation/Widgets/ProfileWidget/profile_list.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgP;

class ProfileManageScreen extends StatelessWidget {
  const ProfileManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileManageController controller = Get.find<ProfileManageController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: TextButton(
          child: SvgPicture.asset("assets/AuthAssets/back.svg"),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Manage Profiles",
          style: GoogleFonts.poppins(
              color: whiteColor, fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      backgroundColor: kBackgroundColor,
      body: Container(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40.h, bottom: 50.h),
                  height: 130.h,
                  child: Stack(children: [
                    Image.asset(
                      "assets/ProfileAssets/profile.png",
                      width: 100.w,
                      height: 100.w,
                    ),
                    Positioned(
                      // alignment: Alignment.bottomCenter,
                      bottom: 0.h,
                      left: 35.w,
                      child: SvgPicture.asset(
                          "assets/ProfileAssets/AccountSetting/upload.svg"),
                    )
                  ]),
                ),
              ],
            ),
            EditProfile(
                imageLink: "assets/ProfileAssets/AccountSetting/user.svg",
                title: "Nico Robin",
                onTap: () {}),
            SizedBox(
              height: 25.h,
            ),
            ProfileList(
              imageLink: "assets/ProfileAssets/pass.svg",
              title: "Change Password",
              onTap: () => Get.toNamed(AppRoutes.changePasswordScreen),
            ),
            SizedBox(
              height: 20.h,
            ),
            EditProfile(
                imageLink: "assets/ProfileAssets/family.svg",
                title: "Family Safe",
                suffix: Obx(
                  () => SwitchTheme(
                    data: SwitchThemeData(
                        trackOutlineColor: controller.famSafe.value
                            ? MaterialStateProperty.all(kPrimaryColor)
                            : MaterialStateProperty.all(whiteColor),
                        trackColor:
                            MaterialStateProperty.all(Colors.transparent),
                        // thumbIcon: MaterialStateProperty.all(Icon(Icons.circle_outlined)),
                        thumbColor: MaterialStateProperty.all(
                            controller.famSafe.value
                                ? kPrimaryColor
                                : whiteColor)),
                    child: Switch(
                        thumbIcon: null,
                        // thumbIcon: MaterialStateProperty.all(Icon(Icons.circle_outlined)),
                        // activeTrackColor: kPrimaryColor,
                        onChanged: (value) {
                          controller.famSafe.value = value;
                        },
                        value: controller.famSafe.value),
                  ),
                ),
                onTap: () {}),
            SizedBox(
              height: 20.h,
            ),
            EditProfile(
              imageLink: "assets/ProfileAssets/delete.svg",
              title: "Delete Profile",
              suffix: const SizedBox.shrink(),
              color: kPrimaryColor,
              onTap: () {
                Get.dialog(
                  Container(
                    width: 274.w,
                    height: 307.h,
                    margin: EdgeInsets.symmetric(
                        horizontal:
                            (MediaQuery.sizeOf(context).width - 274) / 2,
                        vertical:
                            (MediaQuery.sizeOf(context).height - 307) / 2),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: whiteColor, width: 0.2.w)),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                  backgroundColor: const Color(0xff151414),
                                  radius: 50.r,
                                  child: SvgPicture.asset(
                                    "assets/ProfileAssets/delete.svg",
                                    color: Colors.white,
                                    fit: BoxFit.fitHeight,
                                    height: 36.h,
                                  )),
                              Text(
                                "Delete Profile?",
                                style: GoogleFonts.poppins(
                                    color: whiteColor,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none),
                              ),
                              Text(
                                "Are you sure you want to Delete this profile? All the data of this profile will be erased.",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: whiteColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                      onTap: () => Get.offAllNamed(
                                          AppRoutes.loginScreen),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: kPrimaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(8.r)),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 36.w, vertical: 8.h),
                                          child: Text(
                                            "Yes",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: whiteColor,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                decoration:
                                                    TextDecoration.none),
                                          ))),
                                  GestureDetector(
                                      onTap: () => Get.back(),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: kPrimaryColor,
                                                  width: 1.w),
                                              borderRadius:
                                                  BorderRadius.circular(8.r)),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 36.w, vertical: 8.h),
                                          child: Text(
                                            "No",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: whiteColor,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                decoration:
                                                    TextDecoration.none),
                                          ))),
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
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
