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
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0, 0.05],
              ),
            ),
            child: Image.asset(imageLink)),
        // Positioned(
        //     top: 50.h,
        //     right: 25.w,
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.circular(8),
        //       child: BackdropFilter(
        //         filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
        //         child: Container(
        //           color: whiteColor.withOpacity(0.25),
        //           width: 100.0.w,
        //           height: 40.0.w,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //             children: [
        //               SvgPicture.asset(
        //                 "assets/HomeAssets/subscribe.svg",
        //                 fit: BoxFit.scaleDown,
        //               ),
        //               Text(
        //                 "Subscribe",
        //                 style: GoogleFonts.poppins(
        //                     color: whiteColor,
        //                     fontSize: 12.w,
        //                     fontWeight: FontWeight.w500),
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     )),
        Positioned(
            bottom: 98.h,
            left: 25.2.w,
            child: SvgPicture.asset(
              "assets/HomeAssets/playIcon.svg",
              fit: BoxFit.fill,
            )),
        Positioned(
            bottom: 92.h,
            left: 45.4.w,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 21.6.w,
                  fontWeight: FontWeight.w700),
            )),
        Positioned(
            bottom: 72.h,
            left: 25.w,
            child: Text(duration,
                style: GoogleFonts.poppins(
                  color: whiteColor.withOpacity(0.5),
                  fontSize: 10.8.w,
                ))),
        Positioned(
            bottom: 21.5.h,
            left: 25.w,
            child: SizedBox(
              width: 140.w,
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
            bottom: 18.h,
            right: 120.w,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: SvgPicture.asset("assets/HomeAssets/add.svg"),
            )),
        Positioned(
            bottom: 18.h,
            right: 60.w,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: SvgPicture.asset("assets/HomeAssets/forward.svg"),
            )),
      ],
    );
  }
}
