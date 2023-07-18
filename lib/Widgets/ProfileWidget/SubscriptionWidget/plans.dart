import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class Plans extends StatelessWidget {
  final String title;
  const Plans({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/ProfileAssets/AccountSetting/doubletick.svg"),
        Text(
          "Lorem ipsum domet - dummy text",
          style: GoogleFonts.poppins(
              color: whiteColor.withOpacity(0.75), fontSize: 12.w),
        )
      ],
    );
  }
}
