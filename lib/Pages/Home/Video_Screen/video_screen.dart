import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:main_ott/Pages/Home/Video_Screen/video_controller.dart';
import 'package:main_ott/Widgets/HomeWidget/VideoPlayerWidget/episode_play.dart';
import 'package:main_ott/Widgets/HomeWidget/VideoPlayerWidget/player.dart';

class VideoScreen extends StatelessWidget {
  VideoScreen({Key? key}) : super(key: key);
  final VideoController controller = Get.find<VideoController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1c1c),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          // direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PotraitPlayer(aspectRatio: 6 / 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20.w, left: 20.w, right: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "50 Shades of Grey",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.5.w,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Season 1 / 10 Episode",
                        style: TextStyle(
                            fontSize: 13.5.w,
                            color: Colors.white70,
                            fontFamily: "Poppins",
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
                    'Episode List',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18.w,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.w,
                ),
                const EpisodePlay(),
                SizedBox(
                  height: 15.w,
                ),
                const EpisodePlay(),
                SizedBox(
                  height: 15.w,
                ),
                const EpisodePlay(),
                SizedBox(
                  height: 15.w,
                ),
                const EpisodePlay(),
                SizedBox(
                  height: 15.w,
                ),
                const EpisodePlay(),
                SizedBox(
                  height: 15.w,
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
