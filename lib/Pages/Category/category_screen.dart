import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Category",
        style: GoogleFonts.poppins(color: whiteColor),
      ),
    );
  }
}
