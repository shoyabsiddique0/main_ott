import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.bgColor,
      required this.textColor});
  final void Function() onTap;
  final String text;
  final Color bgColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          // height: 45.h,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          margin: EdgeInsets.only(left: 16.w, right: 16.w),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: bgColor,
          ),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          )),
    );
  }
}
