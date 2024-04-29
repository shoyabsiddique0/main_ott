import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/ProfileWidget/ManageProfile/profiles.dart';

class ManageProfileScreen extends StatelessWidget {
  const ManageProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        margin: EdgeInsets.only(
          left: 50.w,
          right: 50.w,
          top: 50.h,
        ),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 3 / 4,
          shrinkWrap: true,
          children: [
            Profiles(
              goTo: () => Get.toNamed(AppRoutes.profileManageScreen),
            ),
            Profiles(goTo: () => Get.toNamed(AppRoutes.profileManageScreen)),
            Profiles(goTo: () => Get.toNamed(AppRoutes.profileManageScreen)),
            Profiles(goTo: () => Get.toNamed(AppRoutes.profileManageScreen)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100.w,
                  height: 105.w,
                  margin: EdgeInsets.only(top: 10.h, left: 20.w),
                  decoration: const BoxDecoration(color: Colors.black),
                  child: SvgPicture.asset(
                    "assets/ProfileAssets/ManageProfiles/adduser.svg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  height: 3.w,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.w),
                  // alignment: Alignment.center,
                  child: Text(
                    "Add Profile",
                    style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
