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

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsController detailsController = Get.find<DetailsController>();
    return Scaffold(
      backgroundColor: Color(0xff1b1c1c),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // Container(
                  //     foregroundDecoration: const BoxDecoration(
                  //       gradient: LinearGradient(
                  //         colors: [
                  //           Colors.black,
                  //           Color(0xff1c1b1b),
                  //         ],
                  //         begin: Alignment.bottomCenter,
                  //         end: Alignment.topCenter,
                  //         stops: [0, 0.05],
                  //       ),
                  //     ),
                  //     child: Image.asset(
                  //       "assets/HomeAssets/DetailsAssets/Card.png",
                  //       fit: BoxFit.fill,
                  //     )),
                  Image.asset(
                    "assets/HomeAssets/DetailsAssets/Card.png",
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                      bottom: 92.h,
                      left: 25.w,
                      child: Text(
                        "50 shades of grey",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 20.w,
                        ),
                      )),
                  Positioned(
                      bottom: 72.h,
                      left: 25.w,
                      child: Text(
                        "Season 4 / 10 episodes",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(179, 255, 249, 249),
                          fontSize: 10.8.w,
                        ),
                      )),
                  Positioned(
                      bottom: 18.h,
                      left: 10.w,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: SvgPicture.asset(
                            "assets/HomeAssets/DetailsAssets/play.svg"),
                      )),
                  Positioned(
                      bottom: 18.h,
                      left: 67.w,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: SvgPicture.asset("assets/HomeAssets/add.svg"),
                      )),
                  Positioned(
                      bottom: 18.h,
                      left: 124.w,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: SvgPicture.asset(
                            "assets/HomeAssets/DetailsAssets/download.svg"),
                      )),
                  Positioned(
                      bottom: 18.h,
                      left: 182.w,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child:
                            SvgPicture.asset("assets/HomeAssets/forward.svg"),
                      )),
                ],
              ),
              Container(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xbffff9f9),
                              fontSize: 16.w,
                              fontFamily: "Poppins"),
                        ),
                        Text(
                          "Fifty Shades is a British-American film trilogy series based on the Fifty Shades trilogy by English author E. L. James. It is distributed by Universal Studios and stars Dakota Johnson and Jamie Dornan as the lead roles Anastasia Steele and Christian Grey, respectively",
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
                              color: Color(0xff1c1b1b),
                              child: SingleChildScrollView(
                                  child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "50 Shades of Grey",
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
                                        .map((e) => Text(
                                              e,
                                              style: GoogleFonts.poppins(
                                                  color: whiteColor,
                                                  fontSize: 16.w),
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
                                        .map((e) => Text(
                                              e,
                                              style: GoogleFonts.poppins(
                                                  color: whiteColor,
                                                  fontSize: 16.w),
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
                                        .map((e) => Text(
                                              e,
                                              style: GoogleFonts.poppins(
                                                  color: whiteColor,
                                                  fontSize: 16.w),
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
                        ),
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
                      aspectRatio: 2.w)),
              Header(
                title: "Similar Shows",
                child: CarouselSlider(
                    items: detailsController.recentList,
                    options: CarouselOptions(
                        aspectRatio: 1.5.w,
                        viewportFraction: 0.474.w,
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
