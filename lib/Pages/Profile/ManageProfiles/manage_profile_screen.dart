import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/ProfileWidget/ManageProfile/profiles.dart';

class ManageProfileScreen extends StatelessWidget {
  const ManageProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        margin: EdgeInsets.only(
          left: 50.w,
          right: 50.w,
          top: 50.h,
        ),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.w,
          mainAxisSpacing: 15.h,
          childAspectRatio: 3.w / 4.h,
          shrinkWrap: true,
          children: [
            Profiles(goTo: () => Get.toNamed(AppRoutes.profileManageScreen),),
            Profiles(goTo: () => Get.toNamed(AppRoutes.profileManageScreen)),
            Profiles(goTo: () => Get.toNamed(AppRoutes.profileManageScreen)),
            Profiles(goTo: () => Get.toNamed(AppRoutes.profileManageScreen)),
            Column(
              children: [
                Container(
                  width: 100.w,
                  height: 100.w,
                  decoration: const BoxDecoration(color: blackColor),
                  child: SvgPicture.asset(
                    "assets/ProfileAssets/ManageProfiles/adduser.svg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Text(
                  "Add Profile",
                  style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.w),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
