import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Category/category_screen.dart';
import 'package:main_ott/Presentation/Pages/Home/home_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/profile_screen.dart';
import 'package:main_ott/Presentation/Pages/Search/search_screen.dart';
import 'package:main_ott/Utils/constants.dart';
import 'package:main_ott/Utils/headers.dart';
import 'package:main_ott/model/Category/category_list_model.dart';
import 'package:main_ott/model/Category/genre_list_model.dart';
import 'package:main_ott/service/api/api_helper.dart';

class BottomNavigationController extends GetxController {
  final pageIndex = 0.obs;
  final pages = [
    const HomeScreen(),
    const CategoryScreen(),
    // Text(""),
    const SearchScreen(),
    const ProfileScreen()
  ].obs;
  @override
  void onInit() async {
    await fetchCategory();
    super.onInit();
  }

  var categoryModel = GenreListModel().obs;
  fetchCategory() async {
    final apiHelper = Get.find<ApiHelper>();
    final header = await getHeaders();
    categoryModel.value = await apiHelper.callApi(
        endPoint: Const.genreList,
        header: header!,
        reqType: 'post',
        body: {},
        fromJsonFunction: GenreListModel.fromJson);
  }
}
