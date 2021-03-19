import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final Widget child;

  AppLayout({required this.child});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return (Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: child,
      )),
    ));
  }
}
