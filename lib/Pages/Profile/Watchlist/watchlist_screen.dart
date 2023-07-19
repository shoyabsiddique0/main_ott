import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Profile/Watchlist/watchlist_controller.dart';
import 'package:main_ott/Theme/colors.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WatchlistController controller = Get.find<WatchlistController>();
    return Scaffold(
      backgroundColor: const Color(0xff1C1B1B),
      appBar: AppBar(
        title: Text(
          "Watchlist",
          style: GoogleFonts.poppins(
              color: whiteColor, fontSize: 15.w, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1C1B1B),
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: SvgPicture.asset(
            "assets/AuthAssets/back.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 45.h,
            margin: EdgeInsets.only(
                left: 24.w, right: 24.w, top: 24.h, bottom: 15.h),
            decoration: BoxDecoration(
                color: whiteColor.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(8.w))),
            child: TextFormField(
              expands: true,
              minLines: null,
              maxLines: null,
              controller: controller.searchEdit.value,
              decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: SvgPicture.asset(
                    "assets/NavBarAssets/search.svg",
                    fit: BoxFit.scaleDown,
                    color: whiteColor.withOpacity(0.25),
                  ),
                  contentPadding: EdgeInsets.zero,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      Get.bottomSheet(Container(
                        color: const Color(0xff1b1c1c),
                        height: 170.h,
                        padding:
                            EdgeInsets.only(top: 20.h, left: 24.w, right: 24.w),
                        child: Obx(
                          () => Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sort By",
                                  style: GoogleFonts.poppins(
                                      color: whiteColor,
                                      fontSize: 14.w,
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
                              data:
                                  ThemeData(unselectedWidgetColor: whiteColor),
                              child: Column(
                                children: controller.sort.map((element) {
                                  return GestureDetector(
                                      onTap: () => controller.groupValue.value =
                                          element["value"]!,
                                      child: RadioListTile(
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                        visualDensity:
                                            const VisualDensity(vertical: -4),
                                        title: Text(
                                          element["title"]!,
                                          style: GoogleFonts.poppins(
                                              color: whiteColor,
                                              fontSize: 14.w,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        contentPadding: EdgeInsets.zero,
                                        activeColor: primaryColor,
                                        groupValue: controller.groupValue.value,
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
                      color: whiteColor.withOpacity(0.5), fontSize: 14.w),
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder()),
              style: GoogleFonts.poppins(
                  color: whiteColor.withOpacity(0.5), fontSize: 14.w),
            ),
          ),
          Column(
            children: controller.watchlist.map((element) => element).toList(),
          )
        ]),
      ),
    );
  }
}
