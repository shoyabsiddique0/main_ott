import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/BottomNavigationScreen/bottom_navigation_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Theme/colors.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavigationController = Get.find<BottomNavigationController>();
    return Scaffold(
      backgroundColor: const Color(0xff1b1c1c),
      extendBody: true,
      bottomNavigationBar: Obx(() => Theme(
            data: ThemeData(canvasColor: const Color(0xff1b1c1c)),
            child: SizedBox(
              width: double.infinity,
              height: 75.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                        onTap: () => Get.toNamed(AppRoutes.subscriptionScreen),
                        child: Image.asset("assets/NavBarAssets/upgrade.png")),
                  ),
                  BottomNavigationBar(
                    items: [
                      BottomNavigationBarItem(
                        activeIcon:
                            SvgPicture.asset("assets/NavBarAssets/home.svg"),
                        icon: SvgPicture.asset(
                          "assets/NavBarAssets/home.svg",
                          color: Color(0xff8D8A8A),
                        ),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            "assets/NavBarAssets/category.svg",
                            color: Color(0xff8D8A8A),
                          ),
                          activeIcon: SvgPicture.asset(
                              "assets/NavBarAssets/category.svg"),
                          label: "Category"),
                      BottomNavigationBarItem(
                          activeIcon: SvgPicture.asset(
                              "assets/NavBarAssets/search.svg"),
                          icon: SvgPicture.asset(
                            "assets/NavBarAssets/search.svg",
                            color: Color(0xff8D8A8A),
                          ),
                          label: "Search"),
                      BottomNavigationBarItem(
                          icon: ClipRRect(
                            borderRadius: BorderRadius.circular(24.w),
                            child: SizedBox(
                                height: 24.w,
                                width: 24.w,
                                child: Image.asset(
                                    "assets/ProfileAssets/profile.png")),
                          ),
                          // activeIcon:
                          //     SvgPicture.asset("assets/NavBarAssets/activeProfile.svg"),
                          label: "Profile"),
                    ],
                    type: BottomNavigationBarType.fixed,
                    // backgroundColor: blackColor,
                    currentIndex: bottomNavigationController.pageIndex.value,
                    selectedItemColor: whiteColor,
                    unselectedItemColor: hintTextColor,
                    selectedFontSize: 12.sp,
                    unselectedFontSize: 12.sp,
                    onTap: (int index) {
                      if (index == 2) {
                        Get.toNamed(AppRoutes.searchScreeen);
                      } else {
                        bottomNavigationController.pageIndex.value = index;
                      }
                    },
                    showUnselectedLabels: false,
                    selectedLabelStyle: GoogleFonts.poppins(
                        color: whiteColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                    // unselectedLabelStyle: GoogleFonts.poppins(
                    //     color: Color(0xff5d5d5d),
                    //     fontSize: 12.sp,
                    //     fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          )),
      body: Obx(() => bottomNavigationController
          .pages[bottomNavigationController.pageIndex.value]),
    );
  }
}
