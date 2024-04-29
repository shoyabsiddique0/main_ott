import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "About Us",
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: kColorSecondaryBackground,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Who we are",
                style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                """
        Lorem ipsum dolor sit amet consectetur. Egestas congue mauris eu risus leo orci montes donec lorem. Ultrices amet pellentesque non semper. Tincidunt faucibus elit scelerisque sed fames lacus ipsum nulla. Sapien sed viverra lorem arcu risus velit.
        
        Vestibulum cras tincidunt erat et hendrerit condimentum. Urna sapien viverra quisque amet nibh. Cursus natoque condimentum suscipit amet sem. Leo pharetra aliquet egestas proin ornare ut dignissim elementum phasellus. 
        
        Mi sit in pharetra in. Turpis volutpat scelerisque cras consectetur dis amet convallis nibh at. Et fusce placerat vitae morbi cursus quisque habitasse lacus metus. Arcu dapibus sollicitudin diam volutpat. Est eu pulvinar tortor orci. Vestibulum cras tincidunt erat et hendrerit condimentum. Urna sapien viverra quisque amet nibh. Cursus natoque condimentum suscipit amet sem. Leo pharetra aliquet egestas proin ornare ut dignissim elementum phasellus. Imperdiet in at vitae commodo congue facilisi tristique. Blandit 
        
        Mi sit in pharetra in. Turpis volutpat scelerisque cras consectetur dis amet convallis nibh at. Et fusce placerat vitae morbi cursus quisque habitasse lacus metus. Arcu dapibus sollicitudin diam volutpat. Est eu pulvinar tortor orci. Vestibulum cras tincidunt erat et hendrerit condimentum. Urna sapien viverra quisque amet nibh. Cursus natoque condimentum suscipit amet sem. Leo pharetra aliquet egestas proin ornare ut dignissim elementum phasellus. Imperdiet in at vitae commodo congue facilisi tristique. Blandit 
        """,
                style: GoogleFonts.poppins(color: whiteColor, fontSize: 14.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
