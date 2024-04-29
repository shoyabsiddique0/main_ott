import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Home/ContinueWatching/continue_watching_controller.dart';

class ContinueWatchingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContinueWatchingController());
  }
}
