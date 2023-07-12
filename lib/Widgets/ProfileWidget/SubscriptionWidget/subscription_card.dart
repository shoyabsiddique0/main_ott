import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class SubscriptionCard extends StatelessWidget {
  final String title, price, discountedPrice, duration;
  final bool isRecommended;
  final List<Color> colors;
  const SubscriptionCard(
      {super.key,
      required this.title,
      required this.price,
      required this.discountedPrice,
      required this.duration,
      required this.isRecommended,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.w, right: 24.w),
      height: 160.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(2.w)),
      child: Stack(children: [
        Positioned(
            top: 16.h,
            left: 16.w,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => LinearGradient(
                          colors: colors,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)
                      .createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                        fontSize: 15.w, fontWeight: FontWeight.w600),
                  ),
                ),
                isRecommended
                    ? SvgPicture.asset(
                        "assets/ProfileAssets/AccountSetting/recommended.svg")
                    : SizedBox.shrink(),
              ],
            )),
        Positioned(
            top: 50.h,
            left: 16.w,
            child: Text(
              "₹$discountedPrice",
              style: GoogleFonts.poppins(
                  color: blackColor,
                  fontSize: 40.w,
                  fontWeight: FontWeight.w700),
            )),
        Positioned(
            top: 80.h,
            left: 130.w,
            child: Text(
              "₹$price",
              style: GoogleFonts.poppins(
                  color: blackColor.withOpacity(0.75),
                  fontSize: 16.w,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough),
            )),
        Positioned(
            bottom: 16.h,
            left: 16.w,
            right: 16.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "For $duration",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor, elevation: 0),
                    child: Row(
                      children: [
                        Text(
                          "Subscribe",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500, fontSize: 12.w),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        SvgPicture.asset(
                            "assets/ProfileAssets/AccountSetting/rocket.svg")
                      ],
                    ))
              ],
            ))
      ]),
    );
  }
}
