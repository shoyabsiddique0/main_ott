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
      backgroundColor: Colors.black,
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
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "50 Shades of Grey",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Season 1 / 10 Episode",
                        style: TextStyle(
                            color: Colors.white70,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 20.w),
                  child: Text(
                    'Episode List',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.w,
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
          ],
        ),
      ),
    );
  }
}
