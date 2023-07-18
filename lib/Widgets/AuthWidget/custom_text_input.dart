import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class CustomTextInput extends StatelessWidget {
  final Rx<TextEditingController> controller;
  final String hintText;
  final RxString valText;
  final TextInputType inputType;
  final void Function(String?) validateFunc;
  final RxBool? isVisible;
  final Widget? prefix;
  const CustomTextInput(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.inputType,
      required this.validateFunc,
      required this.valText,
      this.isVisible,
      this.prefix});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.w, right: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: whiteColor.withOpacity(0.1),
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
            height: 45.h,
            child: Obx(
              () => TextFormField(
                controller: controller.value,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: inputType == TextInputType.visiblePassword
                    ? isVisible!.value
                    : false,
                style:
                    GoogleFonts.poppins(color: Colors.white, fontSize: 13.5.w),
                expands: !(inputType == TextInputType.visiblePassword),
                maxLines: inputType == TextInputType.visiblePassword ? 1 : null,
                minLines: inputType == TextInputType.visiblePassword ? 1 : null,
                keyboardType: inputType,
                onChanged: (value) => validateFunc(value),
                decoration: InputDecoration(
                  isDense: true,
                  suffixIcon: inputType == TextInputType.visiblePassword
                      ? TextButton(
                          onPressed: () {
                            isVisible?.value = !isVisible!.value;
                          },
                          child: isVisible!.value
                              ? SvgPicture.asset("assets/AuthAssets/eye.svg")
                              : SvgPicture.asset(
                                  "assets/AuthAssets/eye_open.svg"))
                      : null,
                  prefixIcon: prefix,
                  hintStyle: GoogleFonts.poppins(
                      color: whiteColor.withOpacity(0.25), fontSize: 13.5.w),
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
          ),
          Obx(
            () => Text(
              valText.value,
              style: GoogleFonts.poppins(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
