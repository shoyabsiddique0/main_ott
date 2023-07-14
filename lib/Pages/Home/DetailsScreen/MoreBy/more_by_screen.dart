import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Home/DetailsScreen/MoreBy/more_by_controller.dart';
import 'package:main_ott/Theme/colors.dart';

class MoreByScreen extends StatelessWidget {
  const MoreByScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MoreByController controller = Get.find<MoreByController>();
    return Scaffold(
      backgroundColor: Color(0xff1b1c1c),
      appBar: AppBar(
        title: Text.rich(TextSpan(
            text: "More by ",
            style: GoogleFonts.poppins(
                color: whiteColor, fontSize: 14.w, fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: "Dakota Johnson",
                style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontSize: 16.w,
                    fontWeight: FontWeight.w500),
              )
            ])),
        centerTitle: true,
        backgroundColor: Color(0xff1C1B1B),
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
          height: 50.h,
          margin:
              EdgeInsets.only(top: 16.h, right: 24.w, left: 24.w, bottom: 20.h),
          decoration: BoxDecoration(
              color: whiteColor.withOpacity(0.25),
              borderRadius: BorderRadius.all(Radius.circular(8.w))),
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
                    color: whiteColor.withOpacity(0.5), fontSize: 18.w),
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder()),
            style: GoogleFonts.poppins(
                color: whiteColor.withOpacity(0.5), fontSize: 18.w),
          ),
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
