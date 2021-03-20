import 'package:flutter/material.dart';
import 'package:sport_app/layout.dart';
import 'package:sport_app/models/category.dart';
import 'package:sport_app/utils/responsive.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (AppLayout(
        child: Column(
      children: [
        _HomeHeading(),
        _HomeHeroImage(),
        _HomeSportList(),
      ],
    )));
  }
}

class _HomeHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "LiveScore",
          style: theme.textTheme.headline4,
        ),
        Row(
          children: [
            HomeIcons(
              icon: Icons.location_searching_outlined,
            ),
            HomeIcons(
              icon: Icons.notifications_none_outlined,
            ),
          ],
        )
      ],
    ));
  }
}

class HomeIcons extends StatelessWidget {
  final IconData icon;

  HomeIcons({required this.icon});

  @override
  Widget build(BuildContext context) {
    return (IconButton(
        icon: Icon(icon, color: Colors.white), onPressed: () {}));
  }
}

class _HomeHeroImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      padding: EdgeInsets.only(
          top: getResponsiveHeight(context: context, height: 2),
          bottom: getResponsiveHeight(context: context, height: 2)),
      child: Image.asset('assets/hero.png'),
    ));
  }
}

List<Category> getCategories() {
  return ([
    Category(
        name: "Soccer",
        imagePath: "assets/categories/soccer.png",
        starred: true),
    Category(name: "Basketball", imagePath: "assets/categories/basketball.png"),
    Category(name: "Football", imagePath: "assets/categories/football.png"),
    Category(name: "Baseball", imagePath: "assets/categories/baseball.png"),
    Category(name: "Tennis", imagePath: "assets/categories/tennis.png"),
    Category(name: "Volleyball", imagePath: "assets/categories/basketball.png"),
  ]);
}

class _HomeSportList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = getCategories();
    return (Container(
      height: 120.0,
      margin: EdgeInsets.only(
          top: getResponsiveHeight(context: context, height: 2),
          bottom: getResponsiveHeight(context: context, height: 2)),
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, pos) {
            return (_HomeSportCard(
              category: categories[pos],
            ));
          }),
    ));
  }
}

class _HomeSportCard extends StatelessWidget {
  final Category category;

  _HomeSportCard({required this.category});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return (Container(
        width: 120,
        margin: EdgeInsets.only(right: 13.0),
        decoration: BoxDecoration(
          gradient: category.starred ? LinearGradient(
            colors: [Color(0xFFF4A58A), Color(0xFFED6B4E)],
            end: Alignment(0.96, 0),
          ) : null,
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF222232),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              category.imagePath,
              width: 40,
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                category.name,
                style: theme.textTheme.subtitle2,
              ),
            )
          ],
        )));
  }
}
