import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Profile/Downloads/downloads_controller.dart';

class DownloadsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DownloadsController());
  }
}
