import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport_app/theme/palette.dart';

int primary = 0xFF246BFD;
int pageBg = 0xFF181829;
int modalBg = 0xFF222232;

ThemeData getTheme() {
  return ThemeData(
      backgroundColor: Color(pageBg),
      cardColor: Color(modalBg),
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
                  fontSize: 36,
                  fontWeight: FontWeight.w600)),
          headline4: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600)),
          headline5: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
          subtitle1: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )),
          subtitle2: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          )),
          headline6:
              GoogleFonts.sourceSansPro(textStyle: TextStyle(fontSize: 14)),
          caption: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(color: Color(0xFF65656B), fontSize: 16))));
}
