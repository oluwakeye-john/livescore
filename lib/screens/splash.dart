import 'package:flutter/material.dart';
import 'package:sport_app/utils/responsive.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [SplashImage(), SplashContent(), SplashButtons()],
        ),
      )),
    ));
  }
}

class SplashImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getResponsiveHeight(context: context, height: 50),
      padding: EdgeInsets.only(
          bottom: getResponsiveHeight(context: context, height: 8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Image.asset(
            'assets/splash.png',
          ))
        ],
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    num screenWidth = getScreenWidth(context);

    return (Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: screenWidth / 1.5,
          child: Column(children: [
            Text(
              "Discover all about sport",
              style: theme.textTheme.headline2,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "Search millions of matches and get the inside scoop on leagues. Wait for what? Let’s get start it!",
                style: theme.textTheme.caption,
              ),
            ),
          ]),
        )));
  }
}

class SplashButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      padding: EdgeInsets.only(
          top: getResponsiveHeight(context: context, height: 4.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_Button1(), _Button2()],
      ),
    ));
  }
}

class _Button1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Expanded(
        child: SizedBox(
            height: 60,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 16),
                )))));
  }
}

class _Button2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Expanded(
        child: SizedBox(
            height: 60,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Color(0xFFC4C4C4), fontSize: 16),
                )))));
  }
}
