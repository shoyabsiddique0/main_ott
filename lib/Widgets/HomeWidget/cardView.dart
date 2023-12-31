import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

// ignore: must_be_immutable
class CardView extends StatelessWidget {
  final String name;
  final String duration;
  final String image;
  void Function() action;
  CardView(
      {super.key,
      required this.name,
      required this.duration,
      required this.image,
      required this.action});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            SizedBox(height: 145.h, child: Image.asset(image)),
            Positioned(
              bottom: ScreenUtil.defaultSize.width * 0.02,
              right: ScreenUtil.defaultSize.width * 0.01,
              child: Text(
                duration,
                style: TextStyle(color: Color(0xff808082), fontSize: 10.w),
              ),
            )
          ]),
          SizedBox(
            height: ScreenUtil.defaultSize.width * 0.01,
          ),
          Row(
            children: [
              SizedBox(
                  height: 12.w,
                  width: 12.w,
                  child: SvgPicture.asset("assets/HomeAssets/playIcon.svg")),
              Text("  $name",
                  style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontSize: 12.w,
                      fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis),
            ],
          )
        ],
      ),
    );
  }
}
