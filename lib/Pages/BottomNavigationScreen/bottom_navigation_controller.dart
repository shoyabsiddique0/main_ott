import 'package:get/get.dart';
import 'package:main_ott/Pages/Category/category_screen.dart';
import 'package:main_ott/Pages/Home/home_screen.dart';
import 'package:main_ott/Pages/Profile/profile_screen.dart';
import 'package:main_ott/Pages/Search/search_screen.dart';

class BottomNavigationController extends GetxController {
  final pageIndex = 0.obs;
  final pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const SearchScreen(),
    const ProfileScreen()
  ].obs;
}
