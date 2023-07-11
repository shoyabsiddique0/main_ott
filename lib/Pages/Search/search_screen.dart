import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Search/search_controller.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/HomeWidget/header.dart';
import 'package:main_ott/Widgets/SearchWidget/recent_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SearchScreenController searchController =
        Get.find<SearchScreenController>();
    return SafeArea(
        child: Container(
      color: const Color(0xff1c1b1b),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(right: 24.w, top: 17.h, left: 24.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      // IconButton(
                      //     onPressed: () {},
                      // icon:
                      GestureDetector(
                          onTap: () {},
                          child:
                              SvgPicture.asset("assets/AuthAssets/back.svg")),
                      // ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: whiteColor.withOpacity(0.25),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.w))),
                          child: TextFormField(
                            expands: true,
                            minLines: null,
                            maxLines: null,
                            decoration: InputDecoration(
                                isDense: true,
                                prefixIcon: SvgPicture.asset(
                                  "assets/NavBarAssets/search.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                                hintText: "Search Here...",
                                hintStyle: GoogleFonts.poppins(
                                    color: whiteColor.withOpacity(0.5),
                                    fontSize: 18.w),
                                border: const OutlineInputBorder(),
                                focusedBorder: const OutlineInputBorder()),
                            style: GoogleFonts.poppins(
                                color: whiteColor.withOpacity(0.5),
                                fontSize: 18.w),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 100.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: searchController.recentList,
                    ),
                  ),
                ],
              )),
          Expanded(
            child: ListView(
              children: [
                Header(
                  title: "Most Searched",
                  child: CarouselSlider(
                      items: searchController.trendingList,
                      options: CarouselOptions(
                          aspectRatio: 1.5.w,
                          viewportFraction: 0.474.w,
                          enableInfiniteScroll: false,
                          padEnds: false)),
                ),
                Header(
                  title: "Trending Now",
                  child: CarouselSlider(
                      items: searchController.trendingList,
                      options: CarouselOptions(
                          aspectRatio: 1.5.w,
                          viewportFraction: 0.474.w,
                          enableInfiniteScroll: false,
                          padEnds: false)),
                ),
                Header(
                  title: "Trending Now",
                  child: CarouselSlider(
                      items: searchController.trendingList,
                      options: CarouselOptions(
                          aspectRatio: 1.5.w,
                          viewportFraction: 0.474.w,
                          enableInfiniteScroll: false,
                          padEnds: false)),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
