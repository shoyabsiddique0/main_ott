import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class CategoryCard extends StatelessWidget {
  final String imageLink, title;
  const CategoryCard({super.key, required this.imageLink, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8.w),
            child: Image.asset(imageLink)),
        Positioned(
            bottom: 10.w,
            left: 10.w,
            child: Text(
              title,
              style: GoogleFonts.poppins(color: whiteColor, fontSize: 11.w),
            ))
      ],
    );
  }
}
