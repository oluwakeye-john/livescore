import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport_app/theme/palette.dart';

int primary = 0xFF246BFD;
int pageBg = 0xFF181829;

ThemeData getTheme() {
  return ThemeData(
      backgroundColor: Color(pageBg),
      primarySwatch: createMaterialColor(Color(primary)),
      textTheme: TextTheme(
          headline2: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 40,
          )),
          headline3: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600)),
          caption: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(color: Color(0xFF65656B), fontSize: 16))));
}
