import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Home/DetailsScreen/details_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/HomeWidget/header.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsController detailsController = Get.find<DetailsController>();
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Container(
                      height: 622.h,
                      foregroundDecoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            kBackgroundColor,
                            // kBackgroundColor,
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [0.2, 1],
                        ),
                        color: kBackgroundColor,
                      ), // ),

                      child: VisibilityDetector(
                        key: detailsController.vidFocus.value,
                        onVisibilityChanged: (info) {
                          if (info.visibleFraction < 0.7) {
                            detailsController.controller.pause();
                          } else {
                            if (detailsController.controller.value.position !=
                                detailsController.controller.value.duration) {
                              detailsController.controller.play();
                            }
                          }
                        },
                        child: VideoPlayer(detailsController.controller),
                        // child: Image.asset(
                        //   "assets/HomeAssets/DetailsAssets/image.png",
                        //   fit: BoxFit.fitWidth,
                        //   width: double.infinity,
                        // ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 20.h,
                      left: 20.w,
                      child: GestureDetector(
                        onTap: () => Get.back(),
                        child: SvgPicture.asset(
                          "assets/AuthAssets/back.svg",
                        ),
                      )),
                  Align(
                    // bottom: 0,
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // color: kBackgroundColor,
                      padding: EdgeInsets.only(top: 372.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              right: 16.w,
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "One Piece",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 24.sp,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (detailsController.mute.value) {
                                        detailsController.controller
                                            .setVolume(1);
                                      } else {
                                        detailsController.controller
                                            .setVolume(0);
                                      }
                                      detailsController.mute.value =
                                          !detailsController.mute.value;
                                    },
                                    child: SizedBox(
                                      width: 40.w,
                                      height: 40.h,
                                      child: Obx(() => SvgPicture.asset(
                                            detailsController.mute.value
                                                ? "assets/HomeAssets/DetailsAssets/volumeNone.svg"
                                                : "assets/HomeAssets/DetailsAssets/volumeFull.svg",
                                            fit: BoxFit.scaleDown,
                                          )),
                                    ),
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              right: 16.w,
                            ),
                            child: Text(
                              "Season 1 : 4 / 10 episodes",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(179, 255, 249, 249),
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              right: 16.w,
                            ),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () =>
                                      Get.toNamed(AppRoutes.videoScreen),
                                  // style: TextButton.styleFrom(
                                  //   backgroundColor: Colors.transparent,
                                  // ),
                                  child: SvgPicture.asset(
                                      "assets/HomeAssets/DetailsAssets/play.svg"),
                                ),
                                SizedBox(
                                  width: 24.w,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  // style: TextButton.styleFrom(
                                  //   backgroundColor: Colors.transparent,
                                  // ),
                                  child: SvgPicture.asset(
                                      "assets/HomeAssets/DetailsAssets/add.svg"),
                                ),
                                SizedBox(
                                  width: 24.w,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  // style: TextButton.styleFrom(
                                  //   backgroundColor: Colors.transparent,
                                  // ),
                                  child: SvgPicture.asset(
                                      "assets/HomeAssets/DetailsAssets/download.svg"),
                                ),
                                SizedBox(
                                  width: 24.w,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  // style: TextButton.styleFrom(
                                  //   backgroundColor: Colors.transparent,
                                  // ),
                                  child: SvgPicture.asset(
                                      "assets/HomeAssets/DetailsAssets/share.svg"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              right: 16.w,
                            ),
                            child: Text(
                              "Description",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xbffff9f9),
                                  fontSize: 16.sp,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              right: 16.w,
                            ),
                            child: Text(
                              "Monkey D. Luffy wants to become the King of all pirates. Along his quest he meets: a skilled swordsman named Roronoa Zoro; ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: kColorText.withOpacity(0.5),
                                  fontSize: 12.sp,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.bottomSheet(Container(
                                height: 800.h,
                                padding: EdgeInsets.only(
                                    left: 16.w, right: 16.w, top: 24.h),
                                color: kBackgroundColor,
                                child: SingleChildScrollView(
                                    child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "One Piece",
                                          style: GoogleFonts.poppins(
                                              color: whiteColor,
                                              fontSize: 20.sp,
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
                                      height: 24.h,
                                    ),
                                    Text(
                                      "Screen Cast",
                                      style: GoogleFonts.poppins(
                                          color: whiteColor,
                                          fontSize: 16.sp,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Column(
                                      children: detailsController.castList
                                          .map((e) => GestureDetector(
                                                onTap: () => Get.toNamed(
                                                    AppRoutes.moreByScreen),
                                                child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 5.w, bottom: 5.w),
                                                  child: Text(
                                                    e,
                                                    style: GoogleFonts.poppins(
                                                        color: whiteColor,
                                                        fontSize: 16.sp),
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Director",
                                      style: GoogleFonts.poppins(
                                          color: whiteColor,
                                          fontSize: 16.sp,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Column(
                                      children: detailsController.directorList
                                          .map((e) => GestureDetector(
                                                onTap: () => Get.toNamed(
                                                    AppRoutes.moreByScreen),
                                                child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 5.w, bottom: 5.w),
                                                  child: Text(
                                                    e,
                                                    style: GoogleFonts.poppins(
                                                        color: whiteColor,
                                                        fontSize: 16.sp),
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Writers",
                                      style: GoogleFonts.poppins(
                                          color: whiteColor,
                                          fontSize: 16.sp,
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Column(
                                      children: detailsController.writerList
                                          .map((e) => GestureDetector(
                                                onTap: () => Get.toNamed(
                                                    AppRoutes.moreByScreen),
                                                child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 5.h, bottom: 5.w),
                                                  child: Text(
                                                    e,
                                                    style: GoogleFonts.poppins(
                                                        color: whiteColor,
                                                        fontSize: 16.sp),
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                    ),
                                  ],
                                )),
                              ));
                            },
                            child: Container(
                              color: kBackgroundColor,
                              padding: EdgeInsets.only(
                                left: 16.w,
                                right: 16.w,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Starring: ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: kColorText,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Dakota Johnson,  Jamie Dornan, Jennifer Ehle, Eloise Mumford, Victor Rasuk, Luke Grimes",
                                      style: GoogleFonts.poppins(
                                          color: kColorText.withOpacity(0.75),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    " more",
                                    style: GoogleFonts.poppins(
                                        color: whiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                        decoration: TextDecoration.underline),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: kBackgroundColor,
                            height: 8.h,
                          ),
                          Container(
                            color: kBackgroundColor,
                            padding: EdgeInsets.only(
                              left: 16.w,
                              right: 16.w,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Director: ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: kColorText,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    "Sam Taylor- Johnson",
                                    style: GoogleFonts.poppins(
                                        color: kColorText.withOpacity(0.75),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    // top: 180.h,
                    // left: 150.w,
                    margin: EdgeInsets.only(top: 200.h),
                    child: Obx(
                      () => Visibility(
                        visible: detailsController.bufferVisible.value,
                        child: SizedBox(
                          width: 40.w,
                          height: 40.w,
                          child: CircularProgressIndicator(
                            strokeWidth: 4.w,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: whiteColor, width: 1.sp))),
                                child: Text(
                                  " Season 1 ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: whiteColor, width: 1.sp))),
                                child: Text(
                                  " Season 2 ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: whiteColor, width: 1.sp))),
                                child: Text(
                                  " Season 3 ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: whiteColor, width: 1.sp))),
                                child: Text(
                                  " Season 4 ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: whiteColor, width: 1.sp))),
                                child: Text(
                                  " Season 5 ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: whiteColor, width: 1.sp))),
                                child: Text(
                                  " Season 6 ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: whiteColor, width: 1.sp))),
                                child: Text(
                                  " Season 7 ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                            ],
                          ).paddingSymmetric(vertical: 30.h),
                        ),
                        Text(
                          "Episodes",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: whiteColor,
                              fontSize: 16.sp,
                              fontFamily: "Poppins"),
                        ),
                        SizedBox(
                          height: 16.w,
                        ),
                      ])),

              Container(
                padding: EdgeInsets.only(
                    left: ScreenUtil.defaultSize.width * 0.05 - 8.w),
                height: 170.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Padding(
                        padding: EdgeInsets.only(left: 8.0.w),
                        child: detailsController.episodeList[index],
                      )),
                  itemCount: detailsController.episodeList.length,
                ),
              ),
              // CarouselSlider(
              //     items: [
              //       Episode(
              //         epName: "Ep 1 - Lorem ipsum",
              //         goTo: () {
              //           Get.toNamed(AppRoutes.videoScreen);
              //         },
              //       ),
              //       Episode(
              //         epName: "Ep 2 - Lorem ipsum",
              //         goTo: () {
              //           Get.toNamed(AppRoutes.videoScreen);
              //         },
              //       ),
              //       Episode(
              //         epName: "Ep 3 - Lorem ipsum",
              //         goTo: () {
              //           Get.toNamed(AppRoutes.videoScreen);
              //         },
              //       ),
              //     ],
              //     options: CarouselOptions(
              //         viewportFraction: 0.459.w,
              //         padEnds: false,
              //         enableInfiniteScroll: false,
              //         aspectRatio: 2.9.w)),
              Header(
                inverse: false,
                title: "Similar Shows",
                viewAll: () => Get.toNamed(AppRoutes.viewAllScreen),
                child: SizedBox(
                  height: 207.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 8.0.w),
                      child: detailsController.recentList[index],
                    ),
                    itemCount: detailsController.recentList.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
