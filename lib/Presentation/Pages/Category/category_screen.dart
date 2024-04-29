import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/BottomNavigationScreen/bottom_navigation_controller.dart';
import 'package:main_ott/Presentation/Pages/Category/category_controller.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/CategoryWidget/category_card.dart';
import 'package:main_ott/Routes/app_route.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = Get.find<CategoryController>();
    BottomNavigationController bottomAppController =
        Get.find<BottomNavigationController>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: false,
      extendBodyBehindAppBar: false,
      primary: true,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.sizeOf(context).width, 130.h),
        child: Container(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
          decoration: const BoxDecoration(color: kBackgroundColor, boxShadow: [
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
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                height: 56.h,
                decoration: BoxDecoration(
                    color: whiteColor.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(8.r))),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    isDense: true,
                    prefixIcon: Container(
                      margin: EdgeInsets.only(
                          left: 5.w, right: 5.w, top: 10.h, bottom: 10.h),
                      child: SvgPicture.asset(
                        "assets/SearchAssets/search.svg",
                        color: const Color(0xffFFF9F9).withOpacity(0.4),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    hintText: "Search Here...",
                    hintStyle: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.5), fontSize: 14.sp),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  style: GoogleFonts.poppins(
                      color: whiteColor.withOpacity(0.5), fontSize: 14.sp),
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
                    childAspectRatio: 5.w / 7.5.w,
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
                  itemCount:
                      bottomAppController.categoryModel.value.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.categoryVideoListingScreen,
                            arguments: {
                              "genreId": bottomAppController
                                  .categoryModel.value.data![index].genreId
                                  .toString(),
                              "genreName": bottomAppController
                                  .categoryModel.value.data![index].genreName
                                  .toString()
                            });
                      },
                      child: CategoryCard(
                          imageLink: bottomAppController
                              .categoryModel.value.data![index].image!
                              .replaceAll('localhost', '10.244.4.13'),
                          title: bottomAppController.categoryModel.value
                              .data![index].genreName!.capitalize!),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
