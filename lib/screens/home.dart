import 'package:flutter/material.dart';
import 'package:sport_app/layout.dart';
import 'package:sport_app/utils/responsive.dart';
import 'package:sport_app/widgets/category-list.dart';
import 'package:sport_app/widgets/match-card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (AppLayout(
        showBottomNav: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _HomeHeading(),
              _HomeHeroImage(),
              CategoryList(),
              LeagueItem(),
              LeagueItem(),
              LeagueItem(),
            ],
          ),
        )));
  }
}

class LeagueItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      padding: EdgeInsets.only(
        top: getResponsiveHeight(context: context, height: 1),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 25,
                      margin: EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'assets/leagues/laliga.png',
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "La liga",
                          style: theme.textTheme.subtitle2,
                        ),
                        Text(
                          "Spain ",
                          style: theme.textTheme.caption,
                        )
                      ],
                    )
                  ],
                ),
                IconButton(
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                    onPressed: () {})
              ],
            ),
          ),
          MatchCard()
        ],
      ),
    ));
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
      child: Image.asset(
        'assets/hero.png',
      ),
    ));
  }
}
