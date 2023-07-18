import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class WatchlistCard extends StatelessWidget {
  final String title, imageLink, duration, left;
  final bool isDownloads;
  final double progress;
  const WatchlistCard(
      {super.key,
      required this.title,
      required this.imageLink,
      required this.duration,
      required this.left,
      required this.isDownloads,
      required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.w, right: 24.w),
      padding: EdgeInsets.only(bottom: 20.w),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 140.w,
              height: 80.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.asset(imageLink),
                  Positioned(
                    // bot tom: 0,
                    child: LinearProgressIndicator(
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.red),
                      backgroundColor: whiteColor.withOpacity(0.5),
                      value: progress,
                      minHeight: 1.h,
                    ),
                  )
                ],
              )),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 5.h),
              // width: 150.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/HomeAssets/playIcon.svg",
                            width: 10.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            title,
                            style: GoogleFonts.poppins(
                                fontSize: 12.5.w,
                                fontWeight: FontWeight.w500,
                                color: whiteColor),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.bottomSheet(Container(
                            height: 130.h,
                            padding: EdgeInsets.only(
                                left: 24.w, right: 24.w, top: 10.w),
                            color: const Color(0xff1b1c1c),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      title,
                                      style: GoogleFonts.poppins(
                                          color: whiteColor,
                                          fontSize: 18.w,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                      onTap: () => Get.back(),
                                      child: SvgPicture.asset(
                                          "assets/HomeAssets/DetailsAssets/cross.svg"),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 23.w,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/HomeAssets/playIcon.svg",
                                      width: 12.w,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "Watch Now",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14.w,
                                          color: whiteColor,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16.w,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/ProfileAssets/WatchlistAssets/delete.svg",
                                      width: 12.w,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      isDownloads
                                          ? "Remove From Downloads"
                                          : "Remove From Watchlist",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14.w,
                                          color: whiteColor,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ));
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 30.w),
                          child: SizedBox(
                            height: 14.h,
                            width: 12.w,
                            child: SvgPicture.asset(
                              "assets/ProfileAssets/WatchlistAssets/option.svg",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    duration,
                    style: GoogleFonts.poppins(
                        fontSize: 8.w, color: whiteColor.withOpacity(0.5)),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "$left left",
                    style: GoogleFonts.poppins(
                        fontSize: 10.w, color: whiteColor.withOpacity(0.75)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
