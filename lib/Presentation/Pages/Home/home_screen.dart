import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Home/home_controller.dart';
import 'package:main_ott/Presentation/Widgets/common/wipe_fill_carousel.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/HomeWidget/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();
    return SingleChildScrollView(
      child: Stack(children: [
        CarouselSlider(
          items: homeController.suggestionList,
          options: CarouselOptions(
              aspectRatio: 107 / 155,
              pauseAutoPlayOnManualNavigate: true,
              autoPlay: true,
              pageSnapping: true,
              // ScreenUtil.defaultSize.width *
              // 1.8 /
              // ScreenUtil.defaultSize.height,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                homeController.current.value = index;
              }),
          carouselController: homeController.controller,
        ),
        // SizedBox(
        //     height: 620.h,
        //     width: 280.w,
        //     child: OverlappingCarousel(
        //       items: homeController.suggestionList,
        //       animationDuration: Duration(seconds: 2),
        //     )),
        // Obx(() => Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children:
        //           homeController.suggestionList.asMap().entries.map((entry) {
        //         return GestureDetector(
        //           onTap: () =>
        //               homeController.controller.animateToPage(entry.key),
        //           child: Container(
        //             width: 5.0.w,
        //             height: 5.0.w,
        //             margin: EdgeInsets.symmetric(
        //                 vertical: 8.0.w, horizontal: 3.0.h),
        //             decoration: BoxDecoration(
        //                 shape: BoxShape.circle,
        //                 color: (Theme.of(context).brightness == Brightness.dark
        //                         ? kPrimaryColor
        //                         : kPrimaryColor)
        //                     .withOpacity(
        //                         homeController.current.value == entry.key
        //                             ? 0.9
        //                             : 0.4)),
        //           ),
        //         );
        //       }).toList(),
        //     )),
        // SizedBox(
        //   height: 5.h,
        // ),
        Container(
          margin: EdgeInsets.only(top: 500.h),
          child: Column(
            children: [
              Header(
                title: "Continue Watching",
                inverse: false,
                viewAll: () => Get.toNamed(AppRoutes.continueWatchingScreen),
                child: SizedBox(
                  height: 160.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 16.0.w),
                      child: homeController.continueWatching[index],
                    ),
                    itemCount: homeController.continueWatching.length,
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Header(
                inverse: false,
                title: "Trending Now",
                viewAll: () => Get.toNamed(AppRoutes.viewAllScreen),
                child: SizedBox(
                  height: 205.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 8.0.w),
                      child: homeController.recentList[index],
                    ),
                    itemCount: homeController.recentList.length,
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Header(
                title: "Featured Collection",
                viewAll: () => Get.toNamed(AppRoutes.viewAllScreen),
                inverse: true,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          right: ScreenUtil.defaultSize.width * 0.05),
                      child: CarouselSlider(
                          items: homeController.collectionList1,
                          options: CarouselOptions(
                              aspectRatio: 2.5,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                homeController.collection1.value = index;
                              },
                              viewportFraction: 1)),
                    ),
                    Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: homeController.collectionList1
                              .asMap()
                              .entries
                              .map((entry) {
                            return Container(
                              width: 5.0.w,
                              height: 5.0.w,
                              margin: EdgeInsets.symmetric(
                                  vertical: 8.0.w, horizontal: 3.0.w),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? const Color(0xffD6B5BB)
                                          : const Color(0xffE41238))
                                      .withOpacity(
                                          homeController.collection1.value ==
                                                  entry.key
                                              ? 0.9
                                              : 0.4)),
                            );
                          }).toList(),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Header(
                inverse: false,
                title: "Recently Added",
                viewAll: () => Get.toNamed(AppRoutes.viewAllScreen),
                child: SizedBox(
                  height: 205.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 8.0.w),
                      child: homeController.trendingList[index],
                    ),
                    itemCount: homeController.trendingList.length,
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Header(
                inverse: true,
                title: "Featured Collection",
                viewAll: () => Get.toNamed(AppRoutes.viewAllScreen),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          right: ScreenUtil.defaultSize.width * 0.05),
                      child: CarouselSlider(
                          items: homeController.collectionList2,
                          options: CarouselOptions(
                              aspectRatio: 2.5,
                              padEnds: true,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                homeController.collection2.value = index;
                              },
                              viewportFraction: 1.0)),
                    ),
                    Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: homeController.collectionList2
                              .asMap()
                              .entries
                              .map((entry) {
                            return Container(
                              width: 5.0.w,
                              height: 5.0.w,
                              margin: EdgeInsets.symmetric(
                                  vertical: 8.0.w, horizontal: 3.0.w),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? const Color(0xffD6B5BB)
                                          : const Color(0xffE41238))
                                      .withOpacity(
                                          homeController.collection2.value ==
                                                  entry.key
                                              ? 0.9
                                              : 0.4)),
                            );
                          }).toList(),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Header(
                inverse: false,
                title: "Upcoming Series",
                viewAll: () => Get.toNamed(AppRoutes.viewAllScreen),
                // child: CarouselSlider(
                //     items: homeController.recentList,
                //     options: CarouselOptions(
                //         aspectRatio: 1.7.w,
                //         viewportFraction: 0.442.w,
                //         enableInfiniteScroll: false,
                //         padEnds: false))
                child: SizedBox(
                  height: 205.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 8.0.w),
                      child: homeController.recentList[index],
                    ),
                    itemCount: homeController.recentList.length,
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
