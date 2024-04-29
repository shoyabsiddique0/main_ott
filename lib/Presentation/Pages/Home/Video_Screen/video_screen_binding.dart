import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Home/Video_Screen/custome_video_controller.dart';
import 'package:main_ott/Presentation/Pages/Home/Video_Screen/video_controller.dart';

class VideoScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoController());
    Get.lazyPut(() => CustomController(), fenix: true);
  }
}
