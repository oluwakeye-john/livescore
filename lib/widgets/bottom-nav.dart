import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (BottomNavigationBar(
      backgroundColor: theme.cardColor,
      unselectedItemColor: Color(0xFF65656B),
      // elevation: 5.0,
      showUnselectedLabels: false,
      selectedLabelStyle: GoogleFonts.sourceSansPro(),
      unselectedLabelStyle: GoogleFonts.sourceSansPro(),
      items: [
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_rounded),
            icon: Icon(Icons.home_outlined),
            label: "Hello"),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "World"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: "World"),
      ],
    ));
  }
}
