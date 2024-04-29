import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class OtpText extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType inputType;
  final FocusNode currNode;
  final FocusNode nextNode;
  final FocusNode prevNode;
  const OtpText(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.inputType,
      required this.currNode,
      required this.nextNode,
      required this.prevNode});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74.h,
      height: 74.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0x2fffffff),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.w),
                    topRight: Radius.circular(10.w)),
                border: Border(
                  left:
                      BorderSide(color: const Color(0xff5c5c5c), width: 1.5.w),
                  bottom:
                      BorderSide(color: const Color(0xff5c5c5c), width: 1.5.w),
                  top:
                      BorderSide(color: const Color(0xff5c5c5c), width: 0.1.sp),
                  right:
                      BorderSide(color: const Color(0xff5c5c5c), width: 0.1.sp),
                )),
            height: 74.h,
            child: TextFormField(
              maxLength: 1,
              controller: controller,
              focusNode: currNode,
              onChanged: (value) {
                if (controller.text.isNotEmpty) {
                  FocusScope.of(context).requestFocus(nextNode);
                  if (currNode == nextNode) {
                    Get.focusScope!.unfocus();
                  }
                } else {
                  FocusScope.of(context).requestFocus(prevNode);
                }
              },
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              // obscureText: inputType == TextInputType.visiblePassword,
              style: GoogleFonts.poppins(color: Colors.white),
              expands: true,
              maxLines: null,
              minLines: null,
              keyboardType: inputType,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                counterText: "",
                hintStyle:
                    GoogleFonts.poppins(color: whiteColor.withOpacity(0.25)),
                hintText: hintText,
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.transparent, width: double.minPositive),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.w),
                        topRight: Radius.circular(10.w))),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.transparent, width: double.minPositive),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.w),
                        topRight: Radius.circular(10.w))),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.transparent, width: double.minPositive),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.w),
                        topRight: Radius.circular(10.w))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
