import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Profile/Watchlist/watchlist_controller.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WatchlistController controller = Get.find<WatchlistController>();
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.sizeOf(context).width, 180.h),
        child: Container(
          padding:
              EdgeInsets.only(left: 16.w, right: 16.w, top: 50.h, bottom: 16.h),
          decoration: const BoxDecoration(color: kBackgroundColor, boxShadow: [
            BoxShadow(color: Colors.black, spreadRadius: 0.00001, blurRadius: 5)
          ]),
          height: 180.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: SvgPicture.asset(
                      "assets/AuthAssets/back.svg",
                      height: 16.h,
                    ),
                    onTap: () => Get.back(),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Watchlist",
                        style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 56.h,
                decoration: BoxDecoration(
                    color: whiteColor.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(8.r))),
                child: TextFormField(
                  expands: true,
                  minLines: null,
                  maxLines: null,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      isDense: true,
                      prefixIcon: Container(
                        margin: EdgeInsets.only(
                            left: 5.w, right: 5.w, top: 10.h, bottom: 10.h),
                        child: SvgPicture.asset(
                          "assets/SearchAssets/search.svg",
                          color: whiteColor.withOpacity(0.4),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          Get.bottomSheet(Container(
                            color: Colors.black,
                            height: 206.h,
                            padding: EdgeInsets.only(
                                top: 20.h, left: 16.w, right: 16.w),
                            child: Obx(
                              () => Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sort By",
                                      style: GoogleFonts.poppins(
                                          color: whiteColor,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                        onTap: () => Get.back(),
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 10.w),
                                          child: SvgPicture.asset(
                                              "assets/HomeAssets/DetailsAssets/cross.svg"),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Theme(
                                  data: ThemeData(
                                      unselectedWidgetColor: whiteColor),
                                  child: Column(
                                    children: controller.sort.map((element) {
                                      return GestureDetector(
                                          onTap: () => controller.groupValue
                                              .value = element["value"]!,
                                          child: RadioListTile(
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            visualDensity: const VisualDensity(
                                                vertical: -4),
                                            title: Text(
                                              element["title"]!,
                                              style: GoogleFonts.poppins(
                                                  color: whiteColor,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            contentPadding: EdgeInsets.zero,
                                            activeColor: kPrimaryColor,
                                            groupValue:
                                                controller.groupValue.value,
                                            value: element["value"],
                                            onChanged: (value) => controller
                                                .groupValue
                                                .value = value.toString(),
                                          ));
                                    }).toList(),
                                  ),
                                ),
                              ]),
                            ),
                          ));
                        },
                        child: SvgPicture.asset(
                          "assets/ProfileAssets/WatchlistAssets/sort.svg",
                          fit: BoxFit.scaleDown,
                          color: whiteColor,
                        ),
                      ),
                      hintText: "Search Here...",
                      hintStyle: GoogleFonts.poppins(
                          color: whiteColor.withOpacity(0.5), fontSize: 14.sp),
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none)),
                  style: GoogleFonts.poppins(
                      color: whiteColor.withOpacity(0.5), fontSize: 14.sp),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 5 / 7.6,
                    mainAxisSpacing: 8.h,
                    crossAxisSpacing: 10.w,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  // crossAxisCount: 3,
                  // semanticChildCount: categoryController.categoryList.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      bottom: 100.h, left: 16.w, right: 16.w, top: 24.h),

                  // children: categoryController.categoryList,
                  itemCount: controller.trendingList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: controller.trendingList[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
