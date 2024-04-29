import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Presentation/Pages/Home/Video_Screen/custome_video_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Widgets/HomeWidget/VideoPlayerWidget/popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:video_player/video_player.dart';

class PotraitPlayer extends StatelessWidget {
  final double aspectRatio;
  const PotraitPlayer({super.key, required this.aspectRatio});
  @override
  Widget build(BuildContext context) {
    CustomController controller = Get.find<CustomController>();
    return OrientationBuilder(builder: (context, orientation) {
      return orientation == Orientation.portrait
          ? AspectRatio(
              aspectRatio: aspectRatio,
              child: Obx(
                () => GestureDetector(
                  onTap: () {
                    controller.isVisible.value = !controller.isVisible.value;
                    Future.delayed(const Duration(seconds: 5), () {
                      controller.isVisible.value = false;
                    });
                  },
                  child: Stack(
                    children: [
                      VideoPlayer(controller.controller), //Video Player
                      Obx(
                        () => controller.caption.isNotEmpty
                            ? ClosedCaption(
                                text: controller.currentSubtitle?.data,
                                textStyle: TextStyle(
                                    fontSize: 16.sp, color: Colors.white),
                              )
                            : const SizedBox.shrink(),
                      ), //Captions
                      Visibility(
                        visible: controller.isVisible.value,
                        // visible: true,
                        child: Container(
                          decoration:
                              const BoxDecoration(color: Colors.black45),
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      child: SvgPicture.asset(
                                        "assets/HomeAssets/PlayerAssets/reverse.svg",
                                        width: 30.w,
                                        height: 30.h,
                                      ),
                                      onTap: () {
                                        controller.controller.seekTo(controller
                                                .controller.value.position -
                                            const Duration(seconds: 10));
                                      },
                                    ),
                                    SizedBox(
                                      width: 64.w,
                                    ),
                                    GestureDetector(
                                      child: SvgPicture.asset(
                                        controller.isPlaying.value
                                            ? "assets/HomeAssets/PlayerAssets/pause.svg"
                                            : "assets/HomeAssets/PlayerAssets/play.svg",
                                        width: 48.w,
                                        height: 48.h,
                                      ),
                                      onTap: () {
                                        controller.isPlaying.value =
                                            !controller.isPlaying.value;
                                        controller.controller.value.isPlaying
                                            ? controller.controller.pause()
                                            : controller.controller.play();
                                      },
                                    ),
                                    SizedBox(
                                      width: 64.w,
                                    ),
                                    GestureDetector(
                                      child: SvgPicture.asset(
                                        "assets/HomeAssets/PlayerAssets/forward.svg",
                                        width: 30.w,
                                        height: 30.h,
                                      ),
                                      onTap: () {
                                        controller.controller.seekTo(controller
                                                .controller.value.position +
                                            const Duration(seconds: 10));
                                      },
                                    ),
                                  ],
                                ),
                              ), //Controls
                              Obx(
                                () => Positioned(
                                  bottom: 71.h,
                                  // padding: EdgeInsets.only(top: 150.w),
                                  // height: 200.h,
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width - 48.w,
                                    margin: EdgeInsets.only(
                                        left: 16.w, right: 16.w),
                                    child: SliderTheme(
                                      data: SliderThemeData(
                                          trackHeight: 2.w,
                                          thumbShape: RoundSliderThumbShape(
                                              enabledThumbRadius: 6.w),
                                          overlayShape: RoundSliderOverlayShape(
                                              overlayRadius: 1.w),
                                          thumbColor: Colors.red,
                                          activeTrackColor: Colors.red,
                                          inactiveTrackColor: Colors.grey,
                                          showValueIndicator:
                                              ShowValueIndicator.always,
                                          rangeValueIndicatorShape:
                                              const PaddleRangeSliderValueIndicatorShape()),
                                      child: Slider(
                                        label: controller.formatDuration(
                                            controller.position.value),
                                        value: controller
                                            .position.value.inSeconds
                                            .toDouble(),
                                        min: 0.0,
                                        max: controller.duration.value.inSeconds
                                            .toDouble(),
                                        // divisions: duration.value.inSeconds.round(),
                                        onChanged: (double newValue) {
                                          // position.value =
                                          // Duration(seconds: newValue.toInt());
                                          controller.controller.seekTo(Duration(
                                              seconds: newValue.toInt()));
                                        },
                                        mouseCursor: MouseCursor.uncontrolled,
                                      ),
                                    ),
                                  ), //Progress Bar
                                ),
                              ),
                              Positioned(
                                bottom: 48.h,
                                child: Container(
                                    width: MediaQuery.sizeOf(context).width,
                                    padding: EdgeInsets.only(
                                        left: 16.w, right: 16.w),
                                    //Duration
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: controller.formatDuration(
                                                controller.position.value),
                                            style: GoogleFonts.poppins(
                                              fontSize: 10.sp,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          controller.formatDuration(
                                              controller.duration.value),
                                          style: GoogleFonts.poppins(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              //Brightness and VOlume Sliders
                              Positioned(
                                bottom: 92.h,
                                left: 24.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Visibility(
                                      visible: controller.brightVisible.value,
                                      child: RotatedBox(
                                        quarterTurns: -1,
                                        child: SizedBox(
                                          width: 80.w,
                                          // margin: EdgeInsets.only(
                                          //     top: 30.w,
                                          //     bottom: 30.w,
                                          //     left: 20.w,
                                          //     right: 18.w),
                                          child: SliderTheme(
                                            data: SliderThemeData(
                                                trackHeight: 2.sp,
                                                thumbShape:
                                                    RoundSliderThumbShape(
                                                        enabledThumbRadius:
                                                            2.sp),
                                                overlayShape:
                                                    RoundSliderOverlayShape(
                                                        overlayRadius: 2.sp),
                                                thumbColor: Colors.transparent,
                                                activeTrackColor: Colors.white,
                                                inactiveTrackColor:
                                                    Colors.grey),
                                            child: Slider(
                                              value: controller
                                                  .setBrightness.value,
                                              min: 0.0,
                                              max: 1.0,
                                              // divisions: duration.value.inSeconds.round(),
                                              onChanged: (double newValue) {
                                                // position.value =
                                                // Duration(seconds: newValue.toInt());
                                                controller.setBrightness.value =
                                                    newValue;
                                                ScreenBrightness()
                                                    .setScreenBrightness(
                                                        newValue);
                                              },
                                              mouseCursor:
                                                  MouseCursor.uncontrolled,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      child: GestureDetector(
                                        onTap: () {
                                          controller.brightVisible.value =
                                              !controller.brightVisible.value;
                                          Future.delayed(
                                              const Duration(seconds: 10),
                                              () => controller
                                                  .brightVisible.value = false);
                                        },
                                        child: SvgPicture.asset(
                                          "assets/HomeAssets/PlayerAssets/brightness.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 92.h,
                                right: 24.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Visibility(
                                      visible: controller.volVisible.value,
                                      child: RotatedBox(
                                        quarterTurns: -1,
                                        child: SizedBox(
                                          width: 80.w,
                                          // margin: EdgeInsets.only(
                                          //     top: 30.w,
                                          //     bottom: 30.w,
                                          //     left: 20.w,
                                          //     right: 18.w),
                                          child: SliderTheme(
                                            data: SliderThemeData(
                                                trackHeight: 2.sp,
                                                thumbShape:
                                                    RoundSliderThumbShape(
                                                        enabledThumbRadius:
                                                            2.sp),
                                                overlayShape:
                                                    RoundSliderOverlayShape(
                                                        overlayRadius: 2.sp),
                                                thumbColor: Colors.transparent,
                                                activeTrackColor: Colors.white,
                                                inactiveTrackColor:
                                                    Colors.grey),
                                            child: Slider(
                                              value: controller
                                                  .setVolumeValue.value,
                                              min: 0.0,
                                              max: 1.0,
                                              // divisions: duration.value.inSeconds.round(),
                                              onChanged: (double newValue) {
                                                // position.value =
                                                // Duration(seconds: newValue.toInt());
                                                controller.setVolumeValue
                                                    .value = newValue;
                                                controller.controller
                                                    .setVolume(newValue);
                                                // VolumeController()
                                                //     .setVolume(newValue);
                                              },
                                              mouseCursor:
                                                  MouseCursor.uncontrolled,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        controller.volVisible.value =
                                            !controller.volVisible.value;
                                        Future.delayed(
                                            const Duration(seconds: 5),
                                            () => controller.volVisible.value =
                                                false);
                                      },
                                      child: SvgPicture.asset(
                                        "assets/HomeAssets/PlayerAssets/volume.svg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Bottom Bar Settings and Full Screen
                              Positioned(
                                  bottom: 16.h,
                                  right: 24.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.bottomSheet(Popup());
                                        },
                                        // style: TextButton.styleFrom(
                                        //   fixedSize: Size(35.w, 35.w),
                                        //   minimumSize: Size(35.w, 35.w),
                                        //   maximumSize: Size(35.w, 35.w),
                                        // ),
                                        child: SvgPicture.asset(
                                          "assets/HomeAssets/PlayerAssets/settings.svg",
                                          width: 24.w,
                                          height: 24.h,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16.w,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed(
                                              AppRoutes.landscapeScreen);
                                        },
                                        child: SvgPicture.asset(
                                          "assets/HomeAssets/PlayerAssets/maximize.svg",
                                          width: 24.w,
                                          height: 24.h,
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          : Container();
    });
  }
}
