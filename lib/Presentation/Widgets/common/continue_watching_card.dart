import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class ContinueWatchingCard extends StatelessWidget {
  const ContinueWatchingCard(
      {Key? key,
      required this.title,
      required this.progress,
      required this.timeLeft,
      required this.image})
      : super(key: key);
  final String title;
  final double progress;
  final String timeLeft;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 200.w,
            height: 100.h,
            fit: BoxFit.cover,
          ),
          LinearProgressIndicator(
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
            backgroundColor: whiteColor.withOpacity(0.5),
            value: progress,
            minHeight: 2.h,
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/HomeAssets/playIcon.svg",
                height: 13.h,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                title,
                style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteColor),
              )
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            "$timeLeft left",
            style: GoogleFonts.poppins(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: whiteColor.withOpacity(0.8),
            ),
          )
        ],
      ),
    );
  }
}
