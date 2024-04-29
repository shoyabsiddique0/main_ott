import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:main_ott/Utils/constants.dart';
import 'package:main_ott/Utils/headers.dart';
import 'package:main_ott/model/VideoListing/video_list_model.dart';
import 'package:main_ott/service/api/api_helper.dart';

class CategoryController extends GetxController {
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    super.onInit();
  }

  var videoListModel = VideoListModel().obs;
  fetchVideoListing() async {
    final apiHelper = Get.find<ApiHelper>();
    final header = await getHeaders();
    videoListModel.value = await apiHelper.callApi(
      endPoint: Const.videoList,
      header: header!,
      reqType: 'post',
      params: {},
      fromJsonFunction: VideoListModel.fromJson,
    );
  }
  // final categoryList = [
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Thriller",
  //   ),
  //   const CategoryCard(
  //     imageLink: "assets/CategoryAssets/thriller.png",
  //     title: "Not Thriller",
  //   ),
  // ].obs;
  // List<Widget> categoryRows() {
  //   List<Widget> data = [];
  //   for (int i = 0; i < categoryList.length; i += 3) {
  //     List<Widget> data1 = [];
  //     for (int j = i; j < i + 3; j++) {
  //       if (j >= categoryList.length) {
  //         break;
  //       }
  //       data1.add(categoryList[j]);
  //       data1.add(SizedBox(
  //         width: 6.5.w,
  //       ));
  //     }
  //     data.add(Row(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: data1,
  //     ));
  //   }
  //   return data;
  // }
}
