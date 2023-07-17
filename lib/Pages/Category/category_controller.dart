import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:main_ott/Widgets/CategoryWidget/category_card.dart';

class CategoryController extends GetxController {
  @override
  void onInit() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    super.onInit();
  }

  final categoryList = [
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
    const CategoryCard(
      imageLink: "assets/CategoryAssets/thriller.png",
      title: "Thriller",
    ),
  ].obs;
  List<Widget> categoryRows() {
    List<Widget> data = [];
    for (int i = 0; i < categoryList.length; i += 3) {
      List<Widget> data1 = [];
      for (int j = i; j < i + 3; j++) {
        if (j >= categoryList.length) {
          break;
        }
        data1.add(categoryList[j]);
        data1.add(SizedBox(
          width: 6.5.w,
        ));
      }
      data.add(Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: data1,
      ));
    }
    return data;
  }
}
