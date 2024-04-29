import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_3d/text_3d.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

// ignore: must_be_immutable
class CardView extends StatelessWidget {
  final String name;
  final String duration;
  final String image;
  void Function() action;
  final bool isTopRated;
  final String number;
  CardView(
      {super.key,
      required this.name,
      required this.duration,
      required this.image,
      required this.action,
      this.isTopRated = false,
      this.number = "1"});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        width: isTopRated ? 170.w : 150.w,
        alignment: Alignment.bottomRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(clipBehavior: Clip.none, children: [
              SizedBox(
                  height: 200.h,
                  width: 150.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.r),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  )),
              Positioned(
                bottom: ScreenUtil.defaultSize.width * 0.02,
                right: ScreenUtil.defaultSize.width * 0.03,
                child: Text(
                  duration,
                  style: TextStyle(color: kColorCardDuration, fontSize: 10.sp),
                ),
              ),
              isTopRated
                  ? Positioned(
                      left: -25.w,
                      bottom: 0.h,
                      child: Text(number,
                          style: GoogleFonts.rampartOne(
                              color: whiteColor,
                              fontSize: 72.sp,
                              shadows: [
                                BoxShadow(
                                    color: const Color(0xffFCEEAE)
                                        .withOpacity(0.75),
                                    offset: Offset(5.w, 8.h),
                                    spreadRadius: 5,
                                    blurRadius: 20),
                              ])),
                    )
                  : SizedBox.shrink()
            ]),
            SizedBox(
              height: ScreenUtil.defaultSize.width * 0.01,
            ),
            // Row(
            //   children: [
            //     SizedBox(
            //         height: 12.w,
            //         width: 12.w,
            //         child: SvgPicture.asset("assets/HomeAssets/playIcon.svg")),
            //     SizedBox(
            //       width: 4.w,
            //     ),
            //     Text(name,
            //         style: GoogleFonts.poppins(
            //             color: whiteColor,
            //             fontSize: 14.sp,
            //             fontWeight: FontWeight.w500),
            //         overflow: TextOverflow.ellipsis),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
