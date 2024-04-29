import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Profile/ContactUs/contact_us_controller.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/AuthWidget/custom_text_input.dart';
import 'package:main_ott/Presentation/Widgets/common/custom_button.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var contactUsController = Get.find<ContactUsController>();
    return Scaffold(
        backgroundColor: kColorSecondaryBackground,
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 70.h),
          child: Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
            decoration: const BoxDecoration(
                color: kBackgroundColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, spreadRadius: 0.00001, blurRadius: 5)
                ]),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: SvgPicture.asset(
                    "assets/AuthAssets/back.svg",
                    width: 20.w,
                    height: 20.w,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Contact Us",
                        style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontSize: 18.w,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 47.h),
              child: Text(
                "Any Questions? Get In Touch!",
                style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 20.w,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            CustomTextInput(
                controller: contactUsController.nameController,
                hintText: "Enter your name",
                inputType: TextInputType.name,
                validateFunc: contactUsController.validateName,
                valText: contactUsController.valName),
            SizedBox(
              height: 20.h,
            ),
            CustomTextInput(
              hintText: "Enter Phone Number",
              controller: contactUsController.mobileController,
              inputType: TextInputType.phone,
              validateFunc: contactUsController.validateMobile,
              valText: contactUsController.valMobile,
              prefix: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "+91 | ",
                    style: GoogleFonts.poppins(
                        color: whiteColor.withOpacity(0.30), fontSize: 14.w),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextInput(
                controller: contactUsController.queryController,
                hintText: "Write your Query Here",
                inputType: TextInputType.text,
                validateFunc: contactUsController.validateQuery,
                height: 112.h,
                veritcalPadding: 16.h,
                textAlignVertical: TextAlignVertical.top,
                valText: contactUsController.valQuery),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
                onTap: () {},
                text: "Submit",
                bgColor: kPrimaryColor,
                textColor: whiteColor),
            SizedBox(
              height: 83.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 166.w,
                  child: const Divider(
                    color: Color(0xff5d5d5d),
                    thickness: 2,
                    height: 2,
                  ),
                ),
                Text(
                  "Or",
                  style:
                      GoogleFonts.poppins(color: whiteColor, fontSize: 16.sp),
                ),
                SizedBox(
                  width: 166.w,
                  child: const Divider(
                    color: Color(0xff5d5d5d),
                    thickness: 2,
                    height: 2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 56.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/ProfileAssets/message.svg",
                  width: 68.w,
                ),
                SizedBox(
                  width: 48.w,
                ),
                SvgPicture.asset(
                  "assets/ProfileAssets/call.svg",
                  width: 68.w,
                ),
              ],
            )
          ],
        )));
  }
}
