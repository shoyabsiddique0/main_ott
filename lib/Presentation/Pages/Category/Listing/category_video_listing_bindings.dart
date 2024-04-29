import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Category/Listing/category_video_listing_controller.dart';

class CategoryVideoListingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryVideoListingController>(
        () => CategoryVideoListingController());
  }
}
