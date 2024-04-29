import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/common/custom_button_new.dart';
import 'package:package_info/package_info.dart';

class Utils {
  void showSnackBar(context, message, {bool? isSuccess}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isSuccess == true ? Colors.green : Colors.red,
        duration: const Duration(milliseconds: 2000),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }

  void showBottomSheetPopup({
    required BuildContext context,
    String ic = "",
    String title = "",
    String description = "",
    String leftButtonName = "",
    String rightButtonName = "",
    Color leftBtnBackgroundColor = Colors.transparent,
    Color rightBtnBackgroundColor = Colors.transparent,
    Color leftBorderColor = Colors.transparent,
    Color rightBorderColor = Colors.transparent,
    Color leftTextColor = Colors.black,
    Color rightTextColor = Colors.black,
    Color? leftBoxShadowColor,
    Color? rightBoxShadowColor,
    double leftButtonHeight = 40.0,
    double rightButtonHeight = 40.0,
    VoidCallback? saveActionButtonPressed,
    VoidCallback? cancelButtonPressed,
    bool? isShrink,
  }) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        if (isShrink == null) isShrink = false;
        return AnimatedPadding(
          padding: MediaQuery.of(context).viewInsets,
          duration: const Duration(milliseconds: 600),
          curve: Curves.elasticInOut,
          child: Container(
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              color: const Color(0xff10131B),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.r),
                topRight: Radius.circular(24.r),
              ),
              border: Border(
                top: BorderSide(
                  width: 1.5.h,
                  color: const Color(0xff272A31),
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 68.h,
                      width: 68.h,
                      margin: EdgeInsets.only(bottom: 18.h),
                      // decoration: BoxDecoration(
                      //   color: const Color(0xff1C1E26),
                      //   borderRadius: BorderRadius.circular(16.r),
                      // ),
                      child: ic.contains('.gif')
                          ? Image.asset(
                              ic,
                              height: 68.h,
                              width: 68.h,
                              fit: BoxFit.fill,
                            )
                          : SvgPicture.asset(
                              ic,
                              fit: BoxFit.fill,
                              height: 68.h,
                              width: 68.h,
                            ),
                    ),
                    SizedBox(width: 18.h),
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: kPrimaryColor),
                    ),
                  ],
                ),
                SizedBox(height: 18.h),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: kColorText,
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isShrink!
                        ? const SizedBox.shrink()
                        : Expanded(
                            child: CustomButtonNew(
                              height: leftButtonHeight,
                              label: leftButtonName,
                              textColor: leftTextColor,
                              backgroundColor: leftBtnBackgroundColor,
                              borderColor: leftBorderColor,
                              borderRaduis: 12.r,
                              boderWidth: 1.w,
                              boxShadowColor: leftBoxShadowColor,
                              fontSize: 16.sp,
                              onTap: cancelButtonPressed,
                            ),
                          ),
                    isShrink! ? const SizedBox.shrink() : SizedBox(width: 16.w),
                    Expanded(
                      child: CustomButtonNew(
                        height: rightButtonHeight,
                        label: rightButtonName,
                        textColor: rightTextColor,
                        backgroundColor: rightBtnBackgroundColor,
                        borderColor: rightBorderColor,
                        borderRaduis: 12.r,
                        boderWidth: 1.w,
                        boxShadowColor: rightBoxShadowColor,
                        fontSize: 16.sp,
                        onTap: saveActionButtonPressed,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 26.h),
              ],
            ),
          ),
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      isScrollControlled: true,
    );
  }

  void setToken(String token) async {
    final box = GetStorage();
    box.hasData("token") ? await box.remove("token") : null;
    await box.write('token', token);
  }

  Future<String?> getToken() async {
    final box = GetStorage();
    return box.read('token');
  }

  deleteToken() async {
    final box = GetStorage();
    await box.remove('token');
  }

  Future<String> getAppVersion() async {
    PackageInfo? info = await PackageInfo.fromPlatform();
    return info.version.toString();
  }

  static Future<String> authHeader() async {
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${dotenv.env['username']!}:${dotenv.env['password']!}'))}';
    print(basicAuth);
    return basicAuth;
  }

  showLoading(context) {
    return showGeneralDialog(
        context: context,
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            child: Center(
              child: Lottie.asset('assets/loader.json'),
            ),
          );
        });
  }
}
