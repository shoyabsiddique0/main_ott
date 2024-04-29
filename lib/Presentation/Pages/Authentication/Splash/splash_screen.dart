import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Lottie.asset("assets/ott loader transparent.json",
            fit: BoxFit.fill, animate: true, repeat: true),
      ),
    );
  }
}
