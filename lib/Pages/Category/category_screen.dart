import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Pages/Category/category_controller.dart';
import 'package:main_ott/Theme/colors.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = Get.find<CategoryController>();
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
          decoration: const BoxDecoration(color: Color(0xff1c1b1b), boxShadow: [
            BoxShadow(color: Colors.black, spreadRadius: 0.00001, blurRadius: 5)
          ]),
          height: 130.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Categories",
                style: GoogleFonts.poppins(
                    color: whiteColor,
                    fontSize: 18.w,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                height: 50.h,
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
                          "assets/NavBarAssets/search.svg",
                          color: whiteColor.withOpacity(0.4),
                          fit: BoxFit.scaleDown,
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
            ],
          ),
        ),
        Flexible(
          child: SingleChildScrollView(
            child: Container(
              color: Color(0xff1b1c1c),
              width: double.infinity,
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Obx(
                () => GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 3,
                  semanticChildCount: categoryController.categoryList.length,
                  shrinkWrap: true,
                  childAspectRatio: 5.w / 7.5.w,
                  mainAxisSpacing: 8.h,
                  crossAxisSpacing: 7.w,
                  children: categoryController.categoryList,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
