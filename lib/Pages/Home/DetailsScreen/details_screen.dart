import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Home/DetailsScreen/details_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/HomeWidget/DetailsWidget/episode.dart';
import 'package:main_ott/Widgets/HomeWidget/header.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsController detailsController = Get.find<DetailsController>();
    return Scaffold(
      backgroundColor: const Color(0xff1b1c1c),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                      height: 500.h,
                      foregroundDecoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff1b1c1c),
                            Color(0xff1b1c1c),
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [0, 0.15, 0.3],
                        ),
                      ), // ),

                      child: VisibilityDetector(
                          key: detailsController.vidFocus.value,
                          onVisibilityChanged: (info) {
                            if (info.visibleFraction < 0.3) {
                              detailsController.controller.pause();
                            } else {
                              detailsController.controller.play();
                            }
                          },
                          child: VideoPlayer(detailsController.controller))),
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
                      margin:
                          EdgeInsets.only(left: 10.w, right: 10.w, top: 280.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "One Piece",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 20.w,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (detailsController.mute.value) {
                                      detailsController.controller.setVolume(1);
                                    } else {
                                      detailsController.controller.setVolume(0);
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
                          Text(
                            "Season 4 / 10 episodes",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(179, 255, 249, 249),
                              fontSize: 10.8.w,
                            ),
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                ),
                                child: SvgPicture.asset(
                                    "assets/HomeAssets/DetailsAssets/play.svg"),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                ),
                                child: SvgPicture.asset(
                                    "assets/HomeAssets/add.svg"),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                ),
                                child: SvgPicture.asset(
                                    "assets/HomeAssets/DetailsAssets/download.svg"),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                ),
                                child: SvgPicture.asset(
                                    "assets/HomeAssets/forward.svg"),
                              )
                            ],
                          ),
                          Text(
                            "Description",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: const Color(0xbffff9f9),
                                fontSize: 16.w,
                                fontFamily: "Poppins"),
                          ),
                          Text(
                            "Monkey D. Luffy wants to become the King of all pirates. Along his quest he meets: a skilled swordsman named Roronoa Zolo; Nami, a greedy thief who has a knack for navigation; Usopp, a great liar who has an affinity for inventing; Sanji, a warrior cook; Chopper, a sentient deer who is also a skilled physician; and Robin, former member of Baroque Works. The gang sets sail to unknown seas in Grand Line to find the treasure of One Piece.",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: const Color(0xbffff9f9),
                                fontSize: 10.w,
                                fontFamily: "Poppins"),
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.bottomSheet(Container(
                                height: 800.h,
                                padding: EdgeInsets.only(
                                    left: 24.w, right: 24.w, top: 24.h),
                                color: const Color(0xff1c1b1b),
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
                                              fontSize: 20.w,
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
                                          fontSize: 16.w,
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
                                                        fontSize: 16.w),
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
                                          fontSize: 16.w,
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
                                                        fontSize: 16.w),
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
                                          fontSize: 16.w,
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
                                                      top: 5.w, bottom: 5.w),
                                                  child: Text(
                                                    e,
                                                    style: GoogleFonts.poppins(
                                                        color: whiteColor,
                                                        fontSize: 16.w),
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                    ),
                                  ],
                                )),
                              ));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Starring: ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xbffff9f9),
                                    fontSize: 12.w,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    "Dakota Johnson,  Jamie Dornan, Jennifer Ehle, Eloise Mumford, Victor Rasuk, Luke Grimes",
                                    style: GoogleFonts.poppins(
                                        color: whiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.w),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  " more",
                                  style: GoogleFonts.poppins(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.w,
                                      decoration: TextDecoration.underline),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Row(
                            children: [
                              Text(
                                "Director: ",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xbffff9f9),
                                  fontSize: 12.w,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  "Sam Taylor- Johnson",
                                  style: GoogleFonts.poppins(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.w),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 180.h,
                    left: 150.w,
                    child: Obx(
                      () => Visibility(
                        visible: detailsController.bufferVisible.value,
                        child: SizedBox(
                          width: 40.w,
                          height: 40.h,
                          child: const CircularProgressIndicator(
                            strokeWidth: 6,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24.w,
                        ),
                        Text(
                          "Episodes",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xbffff9f9),
                              fontSize: 16.w,
                              fontFamily: "Poppins"),
                        ),
                        SizedBox(
                          height: 16.w,
                        ),
                      ])),
              CarouselSlider(
                  items: [
                    Episode(
                      epName: "Ep 1 - Lorem ipsum",
                      goTo: () {
                        Get.toNamed(AppRoutes.videoScreen);
                      },
                    ),
                    Episode(
                      epName: "Ep 2 - Lorem ipsum",
                      goTo: () {
                        Get.toNamed(AppRoutes.videoScreen);
                      },
                    ),
                    Episode(
                      epName: "Ep 3 - Lorem ipsum",
                      goTo: () {
                        Get.toNamed(AppRoutes.videoScreen);
                      },
                    ),
                  ],
                  options: CarouselOptions(
                      viewportFraction: 0.459.w,
                      padEnds: false,
                      enableInfiniteScroll: false,
                      aspectRatio: 2.9.w)),
              Header(
                inverse: false,
                title: "Similar Shows",
                child: CarouselSlider(
                    items: detailsController.recentList,
                    options: CarouselOptions(
                        aspectRatio: 1.7.w,
                        viewportFraction: 0.442.w,
                        enableInfiniteScroll: false,
                        padEnds: false)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
