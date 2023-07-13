import 'package:flutter/services.dart';
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
}
