import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorSecondaryBackground,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.sizeOf(context).width, 70.h),
        child: Container(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
          decoration: const BoxDecoration(color: kBackgroundColor, boxShadow: [
            BoxShadow(color: Colors.black, spreadRadius: 0.00001, blurRadius: 5)
          ]),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Get.back(),
                child: SvgPicture.asset(
                  "assets/AuthAssets/back.svg",
                  width: 20.w,
                  height: 20.w,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Terms & Conditions",
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontSize: 18.w,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Terms & Conditions",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontSize: 14.w,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                """
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
In sit amet ex sed sem pretium sollicitudin eget at est.
Vivamus vitae metus in dui pellentesque luctus.
Integer lobortis neque ut lacus suscipit fringilla.
Nulla a eros vel est euismod vehicula.
Aenean ac leo suscipit, pulvinar ex et, scelerisque nibh.
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
In sit amet ex sed sem pretium sollicitudin eget at est.
Vivamus vitae metus in dui pellentesque luctus.
Integer lobortis neque ut lacus suscipit fringilla.
Nulla a eros vel est euismod vehicula.
Aenean ac leo suscipit, pulvinar ex et, scelerisque nibh.""",
                style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              )
            ]),
      ),
    );
  }
}
