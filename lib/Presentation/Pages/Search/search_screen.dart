import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Search/search_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/HomeWidget/header.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SearchScreenController searchController =
        Get.find<SearchScreenController>();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20.h),
        color: kBackgroundColor,
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(
                    right: 16.w, top: 17.h, left: 16.w, bottom: 17.h),
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
                                // padding: EdgeInsets.only(left: 10.w),
                                child: SvgPicture.asset(
                              "assets/AuthAssets/back.svg",
                              width: 10.sp,
                              height: 16.sp,
                            ))),
                        // ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(
                          child: Container(
                            height: 56.h,
                            decoration: BoxDecoration(
                                color: const Color(0xffFFF9F9).withOpacity(0.1),
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
                                      "assets/SearchAssets/search.svg",
                                      color: whiteColor.withOpacity(0.4),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                  hintText: "Search Here...",
                                  hintStyle: GoogleFonts.poppins(
                                      color: whiteColor.withOpacity(0.5),
                                      fontSize: 14.w),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide.none)),
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
                    Row(
                      children: [
                        SvgPicture.asset("assets/SearchAssets/recent.svg"),
                        Container(
                          padding: EdgeInsets.only(left: 8.w, right: 16.w),
                          child: Text(
                            "Recently Searched",
                            style: GoogleFonts.poppins(
                                color: kColorText, fontSize: 10.sp),
                          ),
                        ),
                      ],
                    ).paddingOnly(left: 16.w),
                    Container(
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      height: 100.h,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: searchController.recentList.length,
                          separatorBuilder: (context, index) => SizedBox(
                                width: 16.w,
                              ),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: searchController.recentList[index],
                            );
                          }),
                    ),
                    Header(
                      inverse: false,
                      viewAll: () => Get.toNamed(AppRoutes.viewAllScreen),
                      title: "Most Searched",
                      child: SizedBox(
                        height: 207.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(right: 8.0.w),
                            child: searchController.trendingList[index],
                          ),
                          itemCount: searchController.trendingList.length,
                        ),
                      ),
                    ),
                    Header(
                      inverse: false,
                      viewAll: () => Get.toNamed(AppRoutes.viewAllScreen),
                      title: "Trending Now",
                      child: SizedBox(
                        height: 207.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(right: 8.0.w),
                            child: searchController.trendingList[index],
                          ),
                          itemCount: searchController.trendingList.length,
                        ),
                      ),
                    ),
                    Header(
                      inverse: false,
                      viewAll: () => Get.toNamed(AppRoutes.viewAllScreen),
                      title: "Trending Now",
                      child: SizedBox(
                        height: 207.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(right: 8.0.w),
                            child: searchController.trendingList[index],
                          ),
                          itemCount: searchController.trendingList.length,
                        ),
                      ),
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
