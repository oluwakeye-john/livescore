import 'package:flutter/material.dart';
import 'package:sport_app/screens/article.dart';
import 'package:sport_app/screens/explore.dart';
import 'package:sport_app/screens/home.dart';
import 'package:sport_app/screens/interest.dart';
import 'package:sport_app/screens/match-detail.dart';
import 'package:sport_app/screens/profile.dart';
import 'package:sport_app/screens/splash.dart';
import 'package:sport_app/theme/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: "Sport App",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: getTheme(),
      routes: {
        "/": (_) => SplashScreen(),
        "/interest": (_) => InterestScreen(),
        "/home": (_) => HomeScreen(),
        '/match': (_) => MatchDetailScreen(),
        '/explore': (_) => ExploreScreen(),
        '/profile': (_) => ProfileScreen(),
        '/article': (_) => ArticleDetail()
      },
      initialRoute: "/",
    ));
  }
}
