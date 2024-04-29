import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Episode extends StatelessWidget {
  final String epName;
  final void Function() goTo;

  const Episode({super.key, required this.epName, required this.goTo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: goTo,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                child:
                    Image.asset("assets/HomeAssets/DetailsAssets/episode.png")),
            Container(
              // padding: EdgeInsets.only(left: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/HomeAssets/playIcon.svg",
                    fit: BoxFit.fitWidth,
                    width: 10.w,
                  ),
                  Text(" $epName",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 12.sp),
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
