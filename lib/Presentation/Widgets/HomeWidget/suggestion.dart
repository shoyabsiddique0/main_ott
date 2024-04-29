import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class Suggestion extends StatelessWidget {
  final String imageLink;
  final String title;
  final String duration;
  const Suggestion(
      {Key? key,
      required this.imageLink,
      required this.title,
      required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kBackgroundColor,
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0, 0.3],
              ),
            ),
            child: Image.asset(
              imageLink,
              height: 620.h,
              // width: 428.w,
              fit: BoxFit.fitHeight,
            )),
        Positioned(
          bottom: 160.h,
          left: 24.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/HomeAssets/playIcon.svg",
                    fit: BoxFit.fill,
                    // width: 12.w,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                        color: kColorText,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(duration,
                  style: GoogleFonts.poppins(
                    color: kColorText.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                  )),
              SizedBox(
                height: 23.h,
              ),
              // Row(
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(
              //           color: kPrimaryColor,
              //           borderRadius: BorderRadius.circular(4.r)),
              //       alignment: Alignment.center,
              //       padding:
              //           EdgeInsets.symmetric(vertical: 10.h, horizontal: 48.w),
              //       // width: 170.w,
              //       child: Text(
              //         "Watch Now",
              //         style: GoogleFonts.poppins(
              //             color: whiteColor, fontSize: 16.sp),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 24.w,
              //     ),
              //     GestureDetector(
              //       onTap: () {},
              //       child: SvgPicture.asset(
              //         "assets/HomeAssets/add.svg",
              //         // width: 38.w,
              //       ),
              //     ),
              //     SizedBox(
              //       width: 24.w,
              //     ),
              //     GestureDetector(
              //       onTap: () {},
              //       child: SvgPicture.asset(
              //         "assets/HomeAssets/forward.svg",
              //         // width: 38.w,
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ],
    );
  }
}
