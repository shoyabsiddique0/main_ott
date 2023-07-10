import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  final String title;
  final Widget child;
  const Header({super.key, required this.title, required this.child});

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
                                  fontSize: ScreenUtil.defaultSize.width * 0.05,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                        style: TextStyle(
                          fontSize: ScreenUtil.defaultSize.width * 0.05,
                          color: const Color(0xffc02739),
                          fontFamily: "Poppins",
                        ))),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style:
                          TextStyle(fontFamily: "Poppins", color: Colors.grey),
                    ))
              ],
            ),
            child
          ],
        ));
  }
}
