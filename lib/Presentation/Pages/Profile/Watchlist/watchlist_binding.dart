import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Profile/Watchlist/watchlist_controller.dart';

class WatchlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WatchlistController());
  }
}
