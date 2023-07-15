import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Profile/ManageProfiles/ProfileManagement/profile_manage_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/ProfileWidget/AccountSetting/EditProfile.dart';
import 'package:main_ott/Widgets/ProfileWidget/profile_list.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgP;

class ProfileManageScreen extends StatelessWidget {
  const ProfileManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileManageController controller = Get.find<ProfileManageController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1b1c1c),
        elevation: 0,
        leading: TextButton(
          child: SvgPicture.asset("assets/AuthAssets/back.svg"),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Manage Profiles",
          style: GoogleFonts.poppins(
              color: whiteColor, fontSize: 16.w, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff1c1b1b),
      body: Container(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40.h, bottom: 50.h),
                  height: 120.h,
                  child: Stack(children: [
                    Image.asset(
                      "assets/ProfileAssets/profile.png",
                      width: 100.w,
                      height: 100.h,
                    ),
                    Positioned(
                      // alignment: Alignment.bottomCenter,
                      bottom: 5.h,
                      left: 38.w,
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
              height: 30.h,
            ),
            ProfileList(
              imageLink: "assets/ProfileAssets/pass.svg",
              title: "Change Password",
              onTap: () => Get.toNamed(AppRoutes.changePasswordScreen),
            ),
            SizedBox(
              height: 25.h,
            ),
            EditProfile(
                imageLink: "assets/ProfileAssets/family.svg",
                title: "Family Safe",
                suffix: Obx(
                  () => SwitchTheme(
                    data: SwitchThemeData(
                        trackOutlineColor: controller.famSafe.value
                            ? MaterialStateProperty.all(primaryColor)
                            : MaterialStateProperty.all(whiteColor),
                        trackColor:
                            MaterialStateProperty.all(Colors.transparent),
                        // thumbIcon: MaterialStateProperty.all(Icon(Icons.circle_outlined)),
                        thumbColor: MaterialStateProperty.all(
                            controller.famSafe.value
                                ? primaryColor
                                : whiteColor)),
                    child: Switch(
                        thumbIcon: null,
                        // thumbIcon: MaterialStateProperty.all(Icon(Icons.circle_outlined)),
                        // activeTrackColor: primaryColor,
                        onChanged: (value) {
                          controller.famSafe.value = value;
                        },
                        value: controller.famSafe.value),
                  ),
                ),
                onTap: () {}),
            SizedBox(
              height: 25.h,
            ),
            EditProfile(
                imageLink: "assets/ProfileAssets/delete.svg",
                title: "Delete Account",
                suffix: SizedBox.shrink(),
                color: primaryColor,
                onTap: () {
                  Get.dialog(Container(
                    width: 100.w,
                    height: 100.h,
                    margin: EdgeInsets.only(
                        top: 198.h, bottom: 198.h, left: 60.w, right: 60.w),
                    decoration: BoxDecoration(
                        color: Color(0xff1b1c1c),
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: whiteColor, width: 0.2.w)),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                  backgroundColor: Color(0xff383636),
                                  radius: 40.w,
                                  child: SvgPicture.asset(
                                    "assets/ProfileAssets/delete.svg",
                                    color: Colors.white,
                                    fit: BoxFit.fitHeight,
                                    height: 30.h,
                                  )),
                              Text(
                                "Delete Account?",
                                style: GoogleFonts.poppins(
                                    color: whiteColor,
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none),
                              ),
                              Text(
                                "Are you sure you want to Delete account? All the data of this account will be erased.",
                                textAlign: TextAlign.center,
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
                                                  BorderRadius.circular(8.w)),
                                          backgroundColor: primaryColor,
                                          elevation: 0,
                                          minimumSize: Size(80.w, 30.h)),
                                      onPressed: () => Get.offAllNamed(
                                          AppRoutes.loginScreen),
                                      child: Text("Yes")),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: primaryColor,
                                                width: 1.w,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.w)),
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
                }),
          ],
        ),
      ),
    );
  }
}
