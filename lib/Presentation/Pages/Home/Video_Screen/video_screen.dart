import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Home/Video_Screen/video_controller.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Presentation/Widgets/HomeWidget/VideoPlayerWidget/episode_play.dart';
import 'package:main_ott/Presentation/Widgets/HomeWidget/VideoPlayerWidget/player.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoScreen extends StatelessWidget {
  VideoScreen({Key? key}) : super(key: key);
  final VideoController controller = Get.find<VideoController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          // direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PotraitPlayer(aspectRatio: 107 / 69),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 24.h, left: 16.w, right: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "50 Shades of Grey",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16.h,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Season 1 / 10 Episode",
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: Colors.white70,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 20.w),
                  child: Text(
                    'Episodes',
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                const EpisodePlay(
                  title: "Ep 1 - Lorem ipsum",
                  duration: "45 : 53 mins",
                  isPlaying: true,
                ),
                SizedBox(
                  height: 16.h,
                ),
                const EpisodePlay(
                  title: "Ep 1 - Lorem ipsum",
                  duration: "45 : 53 mins",
                  isPlaying: false,
                ),
                SizedBox(
                  height: 16.h,
                ),
                const EpisodePlay(
                  title: "Ep 1 - Lorem ipsum",
                  duration: "45 : 53 mins",
                  isPlaying: false,
                ),
                SizedBox(
                  height: 16.h,
                ),
                const EpisodePlay(
                  title: "Ep 1 - Lorem ipsum",
                  duration: "45 : 53 mins",
                  isPlaying: false,
                ),
                SizedBox(
                  height: 16.h,
                ),
                const EpisodePlay(
                  title: "Ep 1 - Lorem ipsum",
                  duration: "45 : 53 mins",
                  isPlaying: false,
                ),
                SizedBox(
                  height: 16.h,
                ),
                const EpisodePlay(
                  title: "Ep 1 - Lorem ipsum",
                  duration: "45 : 53 mins",
                  isPlaying: false,
                ),
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            )
          ],
        ),
      ),
    );
  }
}
