import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Utils/constants.dart';
import 'package:main_ott/Utils/headers.dart';
import 'package:main_ott/Utils/utils.dart';
import 'package:main_ott/model/Authentication/login_model.dart';
import 'package:main_ott/service/api/api_helper.dart';

class LoginController extends GetxController {
  Rx<TextEditingController> phoneController = TextEditingController().obs;
  Rx<TextEditingController> passController = TextEditingController().obs;
  GlobalKey formKey = GlobalKey();
  var valMob = "".obs;
  var valPass = "".obs;
  var isVisible = true.obs;
  var loginModel = LoginModel().obs;
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.onInit();
  }

  @override
  void onReady() {
    if (DateTime.now().compareTo(DateTime(2023, 7, 21)) >= 0) {
      // Get.dialog(
      //     Container(
      //       width: 150.w,
      //       height: 100.h,
      //       margin: EdgeInsets.only(
      //           top: 200.h, bottom: 200.h, left: 40.w, right: 40.w),
      //       padding: EdgeInsets.only(left: 20.w, right: 20.w),
      //       decoration: BoxDecoration(
      //           color: kBackgroundColor,
      //           borderRadius: BorderRadius.circular(8.r),
      //           border: Border.all(color: whiteColor, width: 0.2.w)),
      //       child: Stack(
      //         children: [
      //           Container(
      //             height: 210.h,
      //             padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 CircleAvatar(
      //                     backgroundColor: const Color(0xff383636),
      //                     radius: 40.w,
      //                     child: SvgPicture.asset(
      //                         "assets/HomeAssets/settings.svg")),
      //                 Text(
      //                   "Update Available",
      //                   style: GoogleFonts.poppins(
      //                       color: whiteColor,
      //                       fontSize: 18.w,
      //                       fontWeight: FontWeight.w600,
      //                       decoration: TextDecoration.none),
      //                 ),
      //                 Text(
      //                   "We recommend you to update the app to enjoy it’s new features",
      //                   textAlign: TextAlign.center,
      //                   style: GoogleFonts.poppins(
      //                       color: whiteColor,
      //                       fontSize: 12.w,
      //                       fontWeight: FontWeight.w400,
      //                       decoration: TextDecoration.none),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           // Positioned(
      //           //   right: -4.w,
      //           //   top: 8.w,
      //           //   child: GestureDetector(
      //           //     onTap: () => Get.back(),
      //           //     child:
      //           //         SvgPicture.asset("assets/HomeAssets/DetailsAssets/cross.svg"),
      //           //   ),
      //           // ),
      //           Positioned(
      //               bottom: 30.h,
      //               child: SizedBox(
      //                 width: 250.w,
      //                 height: 35.h,
      //                 child: ElevatedButton(
      //                   style: ElevatedButton.styleFrom(
      //                       backgroundColor: kPrimaryColor),
      //                   onPressed: () {},
      //                   child: Text("Update",
      //                       style: GoogleFonts.poppins(
      //                           fontWeight: FontWeight.w500,
      //                           fontSize: 13.h,
      //                           color: whiteColor)),
      //                 ),
      //               ))
      //         ],
      //       ),
      //     ),
      //     barrierDismissible: false);
    }
    super.onReady();
  }

  void login() async {
    if (valMob.value == "" && valPass.value == "") {
      final apiHelper = Get.find<ApiHelper>();
      final header = await getHeaders();
      loginModel.value = await apiHelper.callApi(
          endPoint: Const.login,
          header: header!,
          reqType: 'post',
          body: {
            'phone': phoneController.value.text,
            'password': passController.value.text
          },
          fromJsonFunction: LoginModel.fromJson);
      if (loginModel.value.success == 1) {
        Utils().setToken(loginModel.value.accesstoken!);
        print("token saved");
        print(await Utils().getToken());
        Get.offAndToNamed(AppRoutes.bottomNavigationScreen);
      }
    } else {
      Utils().showSnackBar(Get.context, "Fill all the fields properly",
          isSuccess: false);
    }
  }

  void validatePassword(String? value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      valPass.value = 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        valPass.value = 'Enter valid password';
      } else {
        valPass.value = "";
      }
    }
    valPass.value = "";
  }

  void validateMobile(String? value) {
    if (value!.isEmpty) {
      valMob.value = "";
    }
    if (value.length != 10) {
      valMob.value = 'Mobile Number must be of 10 digit';
    } else {
      valMob.value = "";
    }
  }
}
