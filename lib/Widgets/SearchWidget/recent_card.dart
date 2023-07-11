import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class RecentCard extends StatelessWidget {
  final String imageLink, title;
  final void Function() onClick;
  const RecentCard(
      {super.key,
      required this.imageLink,
      required this.title,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 110.w,
          height: 70.h,
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.w),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: GestureDetector(
                    onTap: onClick,
                    child: SizedBox(
                        width: 100.w,
                        height: 65.h,
                        child: Image.asset(imageLink)),
                  ),
                ),
              ),
              Positioned(
                  right: 0.w,
                  top: 5.w,
                  child: SvgPicture.asset("assets/SearchAssets/cross.svg"))
            ],
          ),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
              color: whiteColor, fontSize: 10.w, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
