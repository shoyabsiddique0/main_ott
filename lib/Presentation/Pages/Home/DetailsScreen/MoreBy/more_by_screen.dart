import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Home/DetailsScreen/MoreBy/more_by_controller.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class MoreByScreen extends StatelessWidget {
  const MoreByScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MoreByController controller = Get.find<MoreByController>();
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text.rich(TextSpan(
            text: "More by ",
            style: GoogleFonts.poppins(
                color: whiteColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: "Dakota Johnson",
                style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              )
            ])),
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
      body: Column(children: [
        Container(
          height: 45.h,
          margin: EdgeInsets.only(left: 15.w),
          decoration: BoxDecoration(
              color: whiteColor.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(8.w))),
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
                hintText: "Search Here...",
                hintStyle: GoogleFonts.poppins(
                    color: whiteColor.withOpacity(0.5), fontSize: 14.sp),
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder()),
            style: GoogleFonts.poppins(
                color: whiteColor.withOpacity(0.5), fontSize: 14.sp),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Obx(
              () => GridView.count(
                crossAxisCount: 3,
                children: controller.moreByList,
                childAspectRatio: 5.w / 7.5.w,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 7.w,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
