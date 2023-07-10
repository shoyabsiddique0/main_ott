import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/BottomNavigationScreen/bottom_navigation_controller.dart';
import 'package:main_ott/Theme/colors.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavigationController = Get.find<BottomNavigationController>();
    return Scaffold(
      backgroundColor: blackColor,
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/NavBarAssets/home.svg"),
                  label: "Home",
                  activeIcon:
                      SvgPicture.asset("assets/NavBarAssets/activeHome.svg")),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/NavBarAssets/category.svg"),
                  activeIcon: SvgPicture.asset(
                      "assets/NavBarAssets/activeCategory.svg"),
                  label: "Category"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/NavBarAssets/search.svg"),
                  activeIcon:
                      SvgPicture.asset("assets/NavBarAssets/activeSearch.svg"),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/NavBarAssets/profile.svg"),
                  activeIcon:
                      SvgPicture.asset("assets/NavBarAssets/activeProfile.svg"),
                  label: "Profile"),
            ],
            type: BottomNavigationBarType.fixed,
            backgroundColor: blackColor,
            currentIndex: bottomNavigationController.pageIndex.value,
            selectedItemColor: primaryColor,
            unselectedItemColor: hintTextColor,
            selectedFontSize: 12.sp,
            unselectedFontSize: 12.sp,
            onTap: (int index) {
              bottomNavigationController.pageIndex.value = index;
            },
            selectedLabelStyle: GoogleFonts.poppins(
                color: primaryColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500),
            unselectedLabelStyle: GoogleFonts.poppins(
                color: Color(0xff5d5d5d),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500),
          )),
      body: Obx(() => bottomNavigationController
          .pages[bottomNavigationController.pageIndex.value]),
    );
  }
}
