import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_ott/Presentation/Widgets/CategoryWidget/category_card.dart';

class MoreByController extends GetxController {
  var moreByList = <Widget>[
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
