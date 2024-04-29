import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Home/View_All_Screen/view_all_controller.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ViewAllController viewAllController = Get.find<ViewAllController>();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.sizeOf(context).width, 70.h),
        child: Container(
          padding: EdgeInsets.only(left: 14.w, right: 16.w, top: 20.h),
          decoration: const BoxDecoration(color: kBackgroundColor, boxShadow: [
            BoxShadow(color: Colors.black, spreadRadius: 0.00001, blurRadius: 5)
          ]),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Get.back(),
                child: SvgPicture.asset(
                  "assets/AuthAssets/back.svg",
                  width: 20.w,
                  height: 20.w,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Recently Added",
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 5 / 7.4,
                    mainAxisSpacing: 8.h,
                    crossAxisSpacing: 7.w,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  // crossAxisCount: 3,
                  // semanticChildCount: categoryController.categoryList.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      bottom: 100.h, left: 16.w, right: 16.w, top: 24.h),

                  // children: categoryController.categoryList,
                  itemCount: viewAllController.trendingList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: viewAllController.trendingList[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
