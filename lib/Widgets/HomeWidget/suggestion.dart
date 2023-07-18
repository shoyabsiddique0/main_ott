import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

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
                  Color(0xff1b1c1c),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0, 0.3],
              ),
            ),
            child: Image.asset(imageLink)),
        Positioned(
            bottom: 80.h,
            left: 25.2.w,
            child: SvgPicture.asset(
              "assets/HomeAssets/playIcon.svg",
              fit: BoxFit.fill,
              width: 12.w,
            )),
        Positioned(
            bottom: 75.h,
            left: 45.4.w,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 19.6.w,
                  fontWeight: FontWeight.w500),
            )),
        Positioned(
            bottom: 58.h,
            left: 25.w,
            child: Text(duration,
                style: GoogleFonts.poppins(
                  color: whiteColor.withOpacity(0.5),
                  fontSize: 8.8.w,
                ))),
        Positioned(
            bottom: 3.5.h,
            left: 25.w,
            child: SizedBox(
              width: 170.w,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc02739),
                ),
                child: Text(
                  "Watch Now",
                  style: GoogleFonts.poppins(),
                ),
              ),
            )),
        Positioned(
            bottom: 0.h,
            right: 90.w,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: SvgPicture.asset(
                "assets/HomeAssets/add.svg",
                width: 38.w,
              ),
            )),
        Positioned(
            bottom: 0.h,
            right: 30.w,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: SvgPicture.asset(
                "assets/HomeAssets/forward.svg",
                width: 38.w,
              ),
            )),
      ],
    );
  }
}
