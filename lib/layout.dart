import 'package:flutter/material.dart';
import 'package:sport_app/widgets/bottom-nav.dart';

class AppLayout extends StatelessWidget {
  final Widget child;
  final bool showBottomNav;
  final int currentIndex;

  AppLayout(
      {required this.child, this.showBottomNav = false, this.currentIndex = 0});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return (Scaffold(
      backgroundColor: theme.backgroundColor,
      bottomNavigationBar: showBottomNav
          ? BottomNav(
              currentIndex: currentIndex,
            )
          : null,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: child,
      )),
    ));
  }
}
