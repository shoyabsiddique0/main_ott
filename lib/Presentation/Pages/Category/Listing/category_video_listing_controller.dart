import 'package:get/get.dart';
import 'package:main_ott/Utils/constants.dart';
import 'package:main_ott/Utils/headers.dart';
import 'package:main_ott/model/VideoListing/video_list_model.dart';
import 'package:main_ott/model/VideoListing/vudei_details_model.dart';
import 'package:main_ott/service/api/api_helper.dart';

class CategoryVideoListingController extends GetxController {
  var argsData = <String, String>{}.obs;
  @override
  void onInit() async {
    super.onInit();
    argsData.value = Get.arguments as Map<String, String>;
    await fetchVideoListing(argsData['genreId']!);
    loading.value = false;
  }

  var loading = true.obs;
  var videoListModel = VideoListModel().obs;
  var videoDetailsModel = VideoDetailsModel().obs;
  fetchVideoListing(String genreId) async {
    final apiHelper = Get.find<ApiHelper>();
    final header = await getHeaders();
    videoListModel.value = await apiHelper.callApi(
      endPoint: Const.videoList,
      header: header!,
      reqType: 'post',
      params: {"genreId": genreId},
      fromJsonFunction: VideoListModel.fromJson,
    );
    print(videoListModel.toJson());
  }

  fetchVideoDetails(String videoId) async {
    final apiHelper = Get.find<ApiHelper>();
    final header = await getHeaders();
    videoDetailsModel.value = await apiHelper.callApi<VideoDetailsModel>(
      endPoint: Const.videoDetails,
      header: header!,
      reqType: 'post',
      params: {"videoId": videoId},
      fromJsonFunction: VideoDetailsModel.fromJson,
    );
  }
}
