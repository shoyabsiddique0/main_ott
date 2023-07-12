import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
          childAspectRatio: 2 / 3,
          shrinkWrap: false,
          children: [
            const Profiles(),
            const Profiles(),
            const Profiles(),
            const Profiles(),
            Column(
              children: [
                Container(
                  width: 110.w,
                  height: 100.h,
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
