import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class Profiles extends StatelessWidget {
  final void Function() goTo;
  const Profiles({super.key, required this.goTo});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 158.h,
        width: 122.w,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                width: 100.w,
                height: 136.h,
                child: Column(
                  children: [
                    SizedBox(
                        width: 100.w,
                        height: 100.w,
                        child: Image.asset(
                          "assets/ProfileAssets/profile.png",
                          fit: BoxFit.contain,
                        )),
                    Container(
                      padding: EdgeInsets.only(right: 5.w, top: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nico Robin",
                            style: GoogleFonts.poppins(
                                color: whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp),
                          ),
                          // SvgPicture.asset(
                          //   "assets/ProfileAssets/ManageProfiles/lock.svg",
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: goTo,
                  child: SvgPicture.asset(
                      "assets/ProfileAssets/ManageProfiles/edit.svg"),
                ))
          ],
        ),
      ),
    );
  }
}
