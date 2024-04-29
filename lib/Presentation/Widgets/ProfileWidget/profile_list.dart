import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class ProfileList extends StatelessWidget {
  final String imageLink, title;
  final void Function() onTap;
  final Color? textColor;
  final bool hasBack;
  const ProfileList(
      {super.key,
      required this.imageLink,
      required this.title,
      required this.onTap,
      this.textColor,
      this.hasBack = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  imageLink,
                  width: 24.w,
                  height: 24.w,
                  fit: BoxFit.scaleDown,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                      color: textColor ?? whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp),
                ),
              ],
            ),
            hasBack
                ? SvgPicture.asset(
                    "assets/ProfileAssets/right.svg",
                    width: 24.w,
                    height: 24.w,
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
