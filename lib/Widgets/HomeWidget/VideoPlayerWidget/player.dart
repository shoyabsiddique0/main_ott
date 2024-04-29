import 'package:main_ott/Pages/Home/Video_Screen/custome_video_controller.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Widgets/HomeWidget/VideoPlayerWidget/popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:video_player/video_player.dart';
import 'package:volume_controller/volume_controller.dart';

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
                                    fontSize: 15.w, color: Colors.white),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    TextButton(
                                      child: SvgPicture.asset(
                                        "assets/HomeAssets/PlayerAssets/reverse.svg",
                                        width: 30.h,
                                        height: 30.h,
                                      ),
                                      onPressed: () {
                                        controller.controller.seekTo(controller
                                                .controller.value.position -
                                            const Duration(seconds: 10));
                                      },
                                    ),
                                    TextButton(
                                      child: SvgPicture.asset(
                                        controller.isPlaying.value
                                            ? "assets/HomeAssets/PlayerAssets/pause.svg"
                                            : "assets/HomeAssets/PlayerAssets/play.svg",
                                      ),
                                      onPressed: () {
                                        controller.isPlaying.value =
                                            !controller.isPlaying.value;
                                        controller.controller.value.isPlaying
                                            ? controller.controller.pause()
                                            : controller.controller.play();
                                      },
                                    ),
                                    TextButton(
                                      child: SvgPicture.asset(
                                        "assets/HomeAssets/PlayerAssets/forward.svg",
                                        width: 30.h,
                                        height: 30.h,
                                      ),
                                      onPressed: () {
                                        controller.controller.seekTo(controller
                                                .controller.value.position +
                                            const Duration(seconds: 10));
                                      },
                                    ),
                                  ],
                                ),
                              ), //Controls
                              Obx(
                                () => Container(
                                  padding: EdgeInsets.only(top: 150.w),
                                  height: 200.h,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        top: 30.w,
                                        bottom: 30.w,
                                        left: 20.w,
                                        right: 18.w),
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
                              Container(
                                  padding: EdgeInsets.only(
                                      top: 195.w, left: 25.w, right: 25.w),
                                  //Duration
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: controller.formatDuration(
                                              controller.position.value),
                                          style: const TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        controller.formatDuration(
                                            controller.duration.value),
                                        style: const TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.white,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  )),
                              //Brightness and VOlume Sliders
                              Positioned(
                                bottom: 55.h,
                                left: 10.w,
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
                                                trackHeight: 2.w,
                                                thumbShape:
                                                    RoundSliderThumbShape(
                                                        enabledThumbRadius:
                                                            6.w),
                                                overlayShape:
                                                    RoundSliderOverlayShape(
                                                        overlayRadius: 1.w),
                                                thumbColor: Colors.white,
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
                                      width: 40.w,
                                      height: 40.w,
                                      child: TextButton(
                                        onPressed: () {
                                          controller.brightVisible.value =
                                              !controller.brightVisible.value;
                                          Future.delayed(
                                              const Duration(seconds: 5),
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
                                bottom: 55.h,
                                right: 10.w,
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
                                                trackHeight: 2.w,
                                                thumbShape:
                                                    RoundSliderThumbShape(
                                                        enabledThumbRadius:
                                                            6.w),
                                                overlayShape:
                                                    RoundSliderOverlayShape(
                                                        overlayRadius: 1.w),
                                                thumbColor: Colors.white,
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
                                    SizedBox(
                                      width: 40.w,
                                      height: 40.w,
                                      child: TextButton(
                                        onPressed: () {
                                          controller.volVisible.value =
                                              !controller.volVisible.value;
                                          Future.delayed(
                                              const Duration(seconds: 5),
                                              () => controller
                                                  .volVisible.value = false);
                                        },
                                        child: SvgPicture.asset(
                                          "assets/HomeAssets/PlayerAssets/volume.svg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Bottom Bar Settings and Full Screen
                              Positioned(
                                  bottom: -8.w,
                                  right: 10.w,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Get.bottomSheet(Popup());
                                        },
                                        style: TextButton.styleFrom(
                                          fixedSize: Size(35.w, 35.w),
                                          minimumSize: Size(35.w, 35.w),
                                          maximumSize: Size(35.w, 35.w),
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/HomeAssets/PlayerAssets/settings.svg",
                                          width: 20.w,
                                          height: 20.w,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Get.toNamed(
                                              AppRoutes.landscapeScreen);
                                        },
                                        style: TextButton.styleFrom(
                                          fixedSize: Size(35.w, 35.w),
                                          minimumSize: Size(35.w, 35.w),
                                          maximumSize: Size(35.w, 35.w),
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/HomeAssets/PlayerAssets/maximize.svg",
                                          width: 15.w,
                                          height: 15.w,
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
