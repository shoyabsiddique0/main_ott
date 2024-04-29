import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class EpisodePlay extends StatelessWidget {
  const EpisodePlay(
      {Key? key,
      required this.title,
      required this.duration,
      required this.isPlaying})
      : super(key: key);
  final String title;
  final String duration;
  final bool isPlaying;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 5.w),
      child: Row(
        children: [
          SizedBox(
            width: 125.w,
            height: 76.h,
            child: Image.asset(
              "assets/HomeAssets/DetailsAssets/episode.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 20.w),
                // width: 200.w,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/HomeAssets/playIcon.svg",
                      width: 10.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        title,
                        maxLines: 1,
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.w),
                child: Text(
                  duration,
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              isPlaying
                  ? Padding(
                      padding: EdgeInsets.only(left: 28.w),
                      child: Text(
                        "Currently Playing",
                        maxLines: 1,
                        style: GoogleFonts.poppins(
                          fontSize: 12.w,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          )
        ],
      ),
    );
  }
}
