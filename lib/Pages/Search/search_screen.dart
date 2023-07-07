import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_ott/Theme/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Search",
        style: GoogleFonts.poppins(color: whiteColor),
      ),
    );
  }
}
