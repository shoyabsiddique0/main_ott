import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class CustomTextInput extends StatelessWidget {
  Rx<TextEditingController> controller;
  final String hintText;
  final TextInputType inputType;
  final String Function(String) validateFunc;
  CustomTextInput(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.inputType,
      required this.validateFunc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.w, right: 24.w),
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
                  top: const BorderSide(color: Color(0xff5c5c5c), width: 0),
                  right: const BorderSide(color: Color(0xff5c5c5c), width: 0),
                )),
            height: 60.h,
            child: TextFormField(
              controller: controller.value,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: inputType == TextInputType.visiblePassword,
              style: GoogleFonts.poppins(color: Colors.white),
              expands: !(inputType == TextInputType.visiblePassword),
              maxLines: inputType == TextInputType.visiblePassword ? 1 : null,
              minLines: inputType == TextInputType.visiblePassword ? 1 : null,
              keyboardType: inputType,
              decoration: InputDecoration(
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
          Obx(
            () => Text(
              validateFunc(controller.value.text),
              style: GoogleFonts.poppins(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
