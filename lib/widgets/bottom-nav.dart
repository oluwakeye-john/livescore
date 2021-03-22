import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;

  BottomNav({this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    handleTap(int val) {
      switch (val) {
        case 0:
          Navigator.of(context).pushNamed('/home');
          break;
        case 1:
          Navigator.of(context).pushNamed('/explore');
          break;
        case 2:
          Navigator.of(context).pushNamed('/home');
          break;
      }
    }

    return (BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: theme.cardColor,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Color(0xFF65656B),
      // elevation: 5.0,
      onTap: (val) {
        handleTap(val);
      },
      showUnselectedLabels: false,
      selectedLabelStyle: GoogleFonts.sourceSansPro(),
      unselectedLabelStyle: GoogleFonts.sourceSansPro(),
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home_rounded),
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined),
            label: "Explore"),
        BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined), label: "Standings"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: "Profile"),
      ],
    ));
  }
}
