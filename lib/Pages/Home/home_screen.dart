import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:main_ott/Pages/Home/home_controller.dart';
import 'package:main_ott/Widgets/HomeWidget/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();
    return SingleChildScrollView(
      child: Column(children: [
        CarouselSlider(
          items: homeController.suggestionList,
          options: CarouselOptions(
              aspectRatio: 0.89.w,
              // ScreenUtil.defaultSize.width *
              // 1.8 /
              // ScreenUtil.defaultSize.height,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                homeController.current.value = index;
              }),
          carouselController: homeController.controller,
        ),
        Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  homeController.suggestionList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () =>
                      homeController.controller.animateToPage(entry.key),
                  child: Container(
                    width: 5.0.w,
                    height: 5.0.w,
                    margin: EdgeInsets.symmetric(
                        vertical: 8.0.w, horizontal: 3.0.h),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? const Color(0xffD6B5BB)
                                : const Color(0xffE41238))
                            .withOpacity(
                                homeController.current.value == entry.key
                                    ? 0.9
                                    : 0.4)),
                  ),
                );
              }).toList(),
            )),
        // SizedBox(
        //   height: 5.h,
        // ),
        Header(
          title: "Continue Watching",
          inverse: false,
          child: SizedBox(
            height: 165.h,
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
        Header(
          inverse: false,
          title: "Trending Now",
          child: SizedBox(
            height: 165.h,
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
        Header(
          title: "Featured Collection",
          inverse: true,
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(right: ScreenUtil.defaultSize.width * 0.05),
                child: CarouselSlider(
                    items: homeController.collectionList1,
                    options: CarouselOptions(
                        aspectRatio: 2.5.w,
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
                                .withOpacity(homeController.collection1.value ==
                                        entry.key
                                    ? 0.9
                                    : 0.4)),
                      );
                    }).toList(),
                  )),
            ],
          ),
        ),
        Header(
          inverse: false,
          title: "Recently Added",
          child: SizedBox(
            height: 165.h,
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
        Header(
          inverse: true,
          title: "Featured Collection",
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(right: ScreenUtil.defaultSize.width * 0.05),
                child: CarouselSlider(
                    items: homeController.collectionList2,
                    options: CarouselOptions(
                        aspectRatio: 2.5.w,
                        onPageChanged: (index, reason) {
                          homeController.collection2.value = index;
                        },
                        viewportFraction: 1)),
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
                                .withOpacity(homeController.collection2.value ==
                                        entry.key
                                    ? 0.9
                                    : 0.4)),
                      );
                    }).toList(),
                  )),
            ],
          ),
        ),
        Header(
          inverse: false,
          title: "Upcoming Series",
          // child: CarouselSlider(
          //     items: homeController.recentList,
          //     options: CarouselOptions(
          //         aspectRatio: 1.7.w,
          //         viewportFraction: 0.442.w,
          //         enableInfiniteScroll: false,
          //         padEnds: false))
          child: SizedBox(
            height: 165.h,
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
          height: 70.h,
        )
      ]),
    );
  }
}
