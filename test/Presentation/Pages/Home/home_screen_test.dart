import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/BottomNavigationScreen/bottom_navigation_screen.dart';
import 'package:main_ott/Presentation/Widgets/HomeWidget/cardView.dart';
import 'package:main_ott/Routes/app_pages.dart';

void main() {
  testWidgets(
      'given home screen when clicked on card then details screen should come',
      (tester) async {
    await tester.pumpWidget(GetMaterialApp(
      home: const BottomNavigationScreen(),
      getPages: AppPages.getPages,
    ));

    final cards = find.byType(CardView);
    // expect(cards, findsNWidgets(15));
  });
}
