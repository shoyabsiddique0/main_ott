import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class CustomTextInput extends StatelessWidget {
  final Rx<TextEditingController> controller;
  final String hintText;
  final RxString valText;
  final TextInputType inputType;
  final void Function(String?) validateFunc;
  final RxBool? isVisible;
  final Widget? prefix;
  final double? height;
  final TextAlignVertical? textAlignVertical;
  final double? veritcalPadding;
  final bool? multiLine;
  const CustomTextInput(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.inputType,
      required this.validateFunc,
      required this.valText,
      this.isVisible,
      this.prefix,
      this.height,
      this.textAlignVertical,
      this.veritcalPadding,
      this.multiLine});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0x25FFF9F9),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r)),
                border: Border(
                  left:
                      BorderSide(color: const Color(0xff5c5c5c), width: 1.5.sp),
                  bottom:
                      BorderSide(color: const Color(0xff5c5c5c), width: 1.5.sp),
                  top:
                      BorderSide(color: const Color(0xff5c5c5c), width: 0.1.sp),
                  right:
                      BorderSide(color: const Color(0xff5c5c5c), width: 0.1.sp),
                )),
            height: height ?? 56.h,
            child: Obx(
              () => TextFormField(
                controller: controller.value,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: inputType == TextInputType.visiblePassword
                    ? isVisible!.value
                    : false,
                style:
                    GoogleFonts.poppins(color: Colors.white, fontSize: 14.sp),
                expands: !(inputType == TextInputType.visiblePassword),
                maxLines: inputType == TextInputType.visiblePassword ? 1 : null,
                minLines: inputType == TextInputType.visiblePassword ? 1 : null,
                keyboardType: inputType,
                textAlignVertical:
                    textAlignVertical ?? TextAlignVertical.center,
                onChanged: (value) => validateFunc(value),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: veritcalPadding ?? 4.h, left: 10.w),
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
                      color: whiteColor.withOpacity(0.25), fontSize: 14.sp),
                  hintText: hintText,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.transparent, width: double.minPositive),
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(10.w),
                    //     topRight: Radius.circular(10.w)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.transparent, width: double.minPositive),
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(10.w),
                    //     topRight: Radius.circular(10.w)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.transparent, width: double.minPositive),
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(10.w),
                    //     topRight: Radius.circular(10.w)),
                  ),
                ),
              ),
            ),
          ),
          Obx(
            () => Text(
              valText.value,
              style: GoogleFonts.poppins(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
