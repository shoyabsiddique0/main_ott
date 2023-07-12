import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';
import 'package:main_ott/Widgets/ProfileWidget/SubscriptionWidget/plans.dart';
import 'package:main_ott/Widgets/ProfileWidget/SubscriptionWidget/subscription_card.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1B1B),
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
          style:
              GoogleFonts.poppins(fontSize: 16.w, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 200.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xffC02739),
                  Color(0xff000000),
                  Color(0xff1C1B1B)
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
                            fontSize: 16.w,
                            fontWeight: FontWeight.w700),
                      ),
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
                  margin: EdgeInsets.only(top: 150.h),
                  child: Column(
                    children: [
                      const SubscriptionCard(
                        title: "Premium",
                        price: "999",
                        discountedPrice: "500",
                        duration: "1 Year",
                        isRecommended: true,
                        colors: [
                          Color(0xffF6A200),
                          Color(0xffDB00FF),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const SubscriptionCard(
                        title: "DELUXE",
                        price: "400",
                        discountedPrice: "300",
                        duration: "6 Months",
                        isRecommended: false,
                        colors: [
                          Color(0xff7B00F6),
                          Color(0xff0094FF),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const SubscriptionCard(
                        title: "STANDARD",
                        price: "200",
                        discountedPrice: "100",
                        duration: "1 Month",
                        isRecommended: false,
                        colors: [
                          Color(0xff00A7BD),
                          Color(0xff4CB77D),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const SubscriptionCard(
                        title: "BASIC",
                        price: "100",
                        discountedPrice: "50",
                        duration: "7 days",
                        isRecommended: false,
                        colors: [
                          Color(0xffC02739),
                          Color(0xffC02739),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
