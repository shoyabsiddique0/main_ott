import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Profile/Subscription/subscription_controller.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/ProfileWidget/SubscriptionWidget/plans.dart';
import 'package:main_ott/Presentation/Widgets/ProfileWidget/SubscriptionWidget/subscription_card.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SubscriptionController controller = Get.find<SubscriptionController>();
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: TextButton(
          child: SvgPicture.asset("assets/AuthAssets/back.svg"),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Subscription",
          style: GoogleFonts.poppins(
              fontSize: 16.sp, color: whiteColor, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.85,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xffBD2638),
                  // Color(0xffC02739),
                  kBackgroundColor
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ),
              Positioned(
                  top: 24.h,
                  left: 24.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Plans Include",
                        style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const Plans(title: "Lorem ipsum domet - dummy text"),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Plans(title: "Lorem ipsum domet - dummy text"),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Plans(title: "Lorem ipsum domet - dummy text"),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Plans(title: "Lorem ipsum domet - dummy text"),
                    ],
                  )),
              Positioned(
                  right: 0,
                  top: 30.h,
                  child: SvgPicture.asset(
                    "assets/ProfileAssets/AccountSetting/popcorn.svg",
                    width: 130.w,
                    height: 150.h,
                  )),
              Container(
                  margin: EdgeInsets.only(top: 236.h),
                  child: Column(
                    children: [
                      SubscriptionCard(
                        title: "Premium",
                        price: "999",
                        discountedPrice: "500",
                        duration: "1 Year",
                        isRecommended: true,
                        val: "1 year",
                        groupValue: controller.groupValue,
                        discount: "50",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SubscriptionCard(
                        title: "DELUXE",
                        price: "400",
                        discountedPrice: "300",
                        duration: "6 Months",
                        isRecommended: false,
                        val: "6 months",
                        groupValue: controller.groupValue,
                        discount: "30",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SubscriptionCard(
                        title: "STANDARD",
                        price: "200",
                        discountedPrice: "100",
                        duration: "1 Month",
                        isRecommended: false,
                        val: "1 month",
                        groupValue: controller.groupValue,
                        discount: "15",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SubscriptionCard(
                        title: "BASIC",
                        price: "100",
                        discountedPrice: "50",
                        duration: "7 days",
                        isRecommended: false,
                        val: "7 days",
                        groupValue: controller.groupValue,
                        discount: "5",
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.w, right: 16.w),
                        child: GestureDetector(
                            onTap: () {},
                            // style: ElevatedButton.styleFrom(
                            //   backgroundColor: kPrimaryColor,
                            //   elevation: 0,
                            //   shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(6.w)),
                            // ),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(6.21.r)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Subscribe",
                                    style: GoogleFonts.poppins(
                                        color: whiteColor,
                                        fontSize: 24.84.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  SvgPicture.asset(
                                    "assets/ProfileAssets/AccountSetting/rocket.svg",
                                    width: 20.w,
                                  ),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 50.h,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
