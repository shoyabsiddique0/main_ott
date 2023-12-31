import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class EditProfile extends StatelessWidget {
  final String imageLink, title;
  final void Function() onTap;
  final Widget? suffix;
  final Color? color;
  const EditProfile(
      {super.key,
      required this.imageLink,
      required this.title,
      required this.onTap,
      this.suffix,
      this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                imageLink,
                width: 24.w,
                height: 24.h,
                fit: BoxFit.scaleDown,
                color: color ?? whiteColor,
              ),
              SizedBox(
                width: 16.w,
              ),
              Text(
                title,
                style: GoogleFonts.poppins(
                    color: color ?? whiteColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.w),
              ),
            ],
          ),
          suffix ??
              SvgPicture.asset(
                "assets/ProfileAssets/AccountSetting/edit.svg",
                width: 24.w,
                height: 24.h,
              ),
        ],
      ),
    );
  }
}
