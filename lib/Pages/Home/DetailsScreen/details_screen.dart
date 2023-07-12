import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Widgets/HomeWidget/DetailsWidget/episode.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  padding: EdgeInsets.only(left: 25.w),
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
                        // Get.to(() => VideoScreen(
                        //       link:
                        //           "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
                        //     ));
                      },
                    ),
                    Episode(
                      epName: "Ep 2 - Lorem ipsum",
                      goTo: () {
                        // Get.to(() => VideoScreen(
                        //       link:
                        //           "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
                        //     ));
                      },
                    ),
                    Episode(
                      epName: "Ep 3 - Lorem ipsum",
                      goTo: () {
                        // Get.to(() => VideoScreen(
                        //       link:
                        //           "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
                        // ));
                      },
                    ),
                  ],
                  options: CarouselOptions(
                      viewportFraction: 0.459.w,
                      padEnds: false,
                      enableInfiniteScroll: false))
            ],
          ),
        ),
      ),
    );
  }
}
