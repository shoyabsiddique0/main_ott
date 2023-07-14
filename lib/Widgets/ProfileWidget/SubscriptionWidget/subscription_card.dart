import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

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
        height: 80.h,
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: EdgeInsets.only(left: 24.w, right: 24.w),
              padding: EdgeInsets.only(
                  left: 10.w, right: 20.w, top: 10.h, bottom: 10.h),
              height: 88.h,
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
                    activeColor: primaryColor,
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
                                color: blackColor,
                                fontSize: 14.w,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "$discount% Off",
                            style: GoogleFonts.poppins(
                              color: primaryColor,
                              fontSize: 14.w,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "₹$discountedPrice",
                            style: GoogleFonts.poppins(
                                color: blackColor,
                                fontSize: 20.w,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "₹$price",
                            style: GoogleFonts.poppins(
                              color: const Color(0xff1b1c1c).withOpacity(0.5),
                              fontSize: 14.w,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                            ),
                          )
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
                        "assets/ProfileAssets/AccountSetting/bestVal.svg",
                        fit: BoxFit.scaleDown,
                      )
                    : const SizedBox.shrink())
          ],
        ),
      ),
    );
  }
}
