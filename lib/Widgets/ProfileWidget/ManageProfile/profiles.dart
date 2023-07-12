import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class Profiles extends StatelessWidget {
  const Profiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 140.h,
        width: 120.w,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                width: 100.w,
                height: 120.h,
                child: Column(
                  children: [
                    Image.asset("assets/ProfileAssets/profile.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nico Robin",
                          style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.w),
                        ),
                        SvgPicture.asset(
                          "assets/ProfileAssets/ManageProfiles/lock.svg",
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                    "assets/ProfileAssets/ManageProfiles/edit.svg"))
          ],
        ),
      ),
    );
  }
}
