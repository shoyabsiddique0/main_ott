import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Search/search_controller.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/HomeWidget/header.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SearchScreenController searchController =
        Get.find<SearchScreenController>();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20.h),
        color: const Color(0xff1c1b1b),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(
                    right: 24.w, top: 17.h, left: 24.w, bottom: 17.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // IconButton(
                        //     onPressed: () {},
                        // icon:
                        GestureDetector(
                            onTap: () => Get.back(),
                            child: Container(
                                padding: EdgeInsets.only(left: 10.w),
                                child: SvgPicture.asset(
                                    "assets/AuthAssets/back.svg"))),
                        // ),
                        // SizedBox(
                        //   width: 16.w,
                        // ),
                        Expanded(
                          child: Container(
                            height: 45.h,
                            margin: EdgeInsets.only(left: 15.w),
                            decoration: BoxDecoration(
                                color: whiteColor.withOpacity(0.1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.w))),
                            child: TextFormField(
                              expands: true,
                              minLines: null,
                              maxLines: null,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  isDense: true,
                                  prefixIcon: Container(
                                    margin: EdgeInsets.only(
                                        left: 5.w,
                                        right: 5.w,
                                        top: 10.h,
                                        bottom: 10.h),
                                    child: SvgPicture.asset(
                                      "assets/NavBarAssets/search.svg",
                                      color: whiteColor.withOpacity(0.4),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                  hintText: "Search Here...",
                                  hintStyle: GoogleFonts.poppins(
                                      color: whiteColor.withOpacity(0.5),
                                      fontSize: 14.w),
                                  border: const OutlineInputBorder(),
                                  focusedBorder: const OutlineInputBorder()),
                              style: GoogleFonts.poppins(
                                  color: whiteColor.withOpacity(0.5),
                                  fontSize: 14.w),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 24.w, right: 24.w),
                      child: Text(
                        "Recently Searched",
                        style: GoogleFonts.poppins(
                            color: whiteColor.withOpacity(0.25),
                            fontSize: 10.w),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24.w, right: 24.w),
                      height: 100.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: searchController.recentList,
                      ),
                    ),
                    Header(
                      inverse: false,
                      title: "Most Searched",
                      child: CarouselSlider(
                          items: searchController.trendingList,
                          options: CarouselOptions(
                              aspectRatio: 1.7.w,
                              viewportFraction: 0.442.w,
                              enableInfiniteScroll: false,
                              padEnds: false)),
                    ),
                    Header(
                      inverse: false,
                      title: "Trending Now",
                      child: CarouselSlider(
                          items: searchController.trendingList,
                          options: CarouselOptions(
                              aspectRatio: 1.7.w,
                              viewportFraction: 0.442.w,
                              enableInfiniteScroll: false,
                              padEnds: false)),
                    ),
                    Header(
                      inverse: false,
                      title: "Trending Now",
                      child: CarouselSlider(
                          items: searchController.trendingList,
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
          ],
        ),
      ),
    );
  }
}
