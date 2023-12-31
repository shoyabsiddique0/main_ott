import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:main_ott/Theme/colors.dart';

class Header extends StatelessWidget {
  final String title;
  final Widget child;
  final bool inverse;
  const Header(
      {super.key,
      required this.title,
      required this.child,
      required this.inverse});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: ScreenUtil.defaultSize.width * 0.05),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        text: "${title.split(" ")[0]} ",
                        children: [
                          TextSpan(
                              text: title.split(" ")[1],
                              style: TextStyle(
                                  fontSize: 15.w,
                                  color: inverse ? primaryColor : whiteColor,
                                  fontWeight: FontWeight.bold))
                        ],
                        style: TextStyle(
                          fontSize: 15.w,
                          color: inverse ? whiteColor : primaryColor,
                          fontFamily: "Poppins",
                        ))),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 12.w),
                    ))
              ],
            ),
            child
          ],
        ));
  }
}
