import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class EpisodePlay extends StatelessWidget {
  const EpisodePlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 5.w),
      child: Row(
        children: [
          SizedBox(
            width: 120.w,
            height: 76.w,
            child: Image.asset(
              "assets/HomeAssets/DetailsAssets/episode.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 20.w),
                width: 200.w,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/HomeAssets/playIcon.svg",
                      width: 10.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text(
                        "Ep 1 - Lorem ipsum dummy text",
                        maxLines: 1,
                        style: GoogleFonts.poppins(
                          fontSize: 12.w,
                          color: whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 23.0),
                child: Text(
                  "45 : 53 mins",
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                    fontSize: 12.w,
                    color: whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 8.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 23.0),
                child: Text(
                  "Currently Playing",
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                    fontSize: 12.w,
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
