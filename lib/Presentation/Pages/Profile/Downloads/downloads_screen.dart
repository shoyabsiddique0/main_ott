import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Profile/Downloads/downloads_controller.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DownloadsController controller = Get.find<DownloadsController>();
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(
          "Downloads",
          style: GoogleFonts.poppins(
              color: whiteColor, fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: kBackgroundColor,
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
            height: 56.h,
            margin: EdgeInsets.only(
                left: 16.w, right: 16.w, top: 24.h, bottom: 15.h),
            decoration: BoxDecoration(
                color: whiteColor.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(8.w))),
            child: TextField(
              expands: true,
              minLines: null,
              maxLines: null,
              controller: controller.searchEdit.value,
              decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: SvgPicture.asset(
                    "assets/SearchAssets/search.svg",
                    fit: BoxFit.scaleDown,
                    color: whiteColor.withOpacity(0.25),
                  ),
                  contentPadding: EdgeInsets.zero,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      Get.bottomSheet(Container(
                        color: Colors.black,
                        height: 206.h,
                        padding:
                            EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
                        child: Obx(
                          () => Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        contentPadding: EdgeInsets.zero,
                                        activeColor: kPrimaryColor,
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
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      borderSide:
                          const BorderSide(color: kBackgroundColor, width: 0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.r)),
                    borderSide:
                        const BorderSide(color: kBackgroundColor, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      borderSide:
                          const BorderSide(color: kBackgroundColor, width: 0)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      borderSide:
                          const BorderSide(color: kBackgroundColor, width: 0)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      borderSide:
                          const BorderSide(color: kBackgroundColor, width: 0)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.r)),
                      borderSide:
                          const BorderSide(color: kBackgroundColor, width: 0))),
              style: GoogleFonts.poppins(
                  color: whiteColor.withOpacity(0.5), fontSize: 14.w),
            ),
          ),
          Column(
            children: controller.downloads.map((element) => element).toList(),
          )
        ]),
      ),
    );
  }
}
