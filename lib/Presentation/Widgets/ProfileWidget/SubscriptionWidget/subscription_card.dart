import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class SubscriptionCard extends StatelessWidget {
  final String title, price, discountedPrice, duration, val, discount;
  final RxString groupValue;
  final bool isRecommended;
  const SubscriptionCard(
      {super.key,
      required this.title,
      required this.price,
      required this.discountedPrice,
      required this.duration,
      required this.isRecommended,
      required this.val,
      required this.groupValue,
      required this.discount});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => groupValue.value = val,
      child: SizedBox(
        height: 100.h,
        child: Stack(
          fit: StackFit.passthrough,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 13.h),
              padding: EdgeInsets.only(
                  left: 10.w, right: 20.w, top: 10.h, bottom: 10.h),
              // height: 88.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(8.w)),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Obx(
                  () => Radio(
                    value: val,
                    groupValue: groupValue.value,
                    onChanged: (newVal) {
                      groupValue.value = newVal.toString();
                    },
                    activeColor: kPrimaryColor,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "For $duration",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "$discount% Off",
                            style: GoogleFonts.poppins(
                              color: kPrimaryColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "₹$price",
                            style: GoogleFonts.poppins(
                              color: kBackgroundColor.withOpacity(0.5),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            "₹$discountedPrice",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Positioned(
                top: 0.h,
                child: isRecommended
                    ? SvgPicture.asset(
                        "assets/ProfileAssets/AccountSetting/bestValue.svg",
                        fit: BoxFit.scaleDown,
                        cacheColorFilter: true,
                        width: 100.w,
                      )
                    : const SizedBox.shrink())
          ],
        ),
      ),
    );
  }
}
