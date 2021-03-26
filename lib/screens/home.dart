import 'package:flutter/material.dart';
import 'package:sport_app/layout.dart';
import 'package:sport_app/models/league.dart';
import 'package:sport_app/utils/responsive.dart';
import 'package:sport_app/widgets/category-list.dart';
import 'package:sport_app/widgets/match/match-card.dart';

List<League> getLeagues() {
  return ([
    League(
        name: "La Liga",
        country: "Spain",
        imagePath: 'assets/leagues/laliga.png'),
    League(
        name: "Premier League",
        country: "Spain",
        imagePath: 'assets/leagues/premier.png'),
    League(
        name: "La Liga",
        country: "Spain",
        imagePath: 'assets/leagues/laliga.png'),
  ]);
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<League> leagues = getLeagues();
    return (AppLayout(
        showBottomNav: true,
        currentIndex: 0,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _HomeHeading(),
              _HomeHeroImage(),
              CategoryList(),
              LeagueItem(league: leagues[0]),
              LeagueItem(league: leagues[1]),
              LeagueItem(league: leagues[2]),
            ],
          ),
        )));
  }
}

class LeagueItem extends StatelessWidget {
  final League league;

  LeagueItem({required this.league});

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
                      child: Image.asset(league.imagePath),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          league.name,
                          style: theme.textTheme.subtitle2,
                        ),
                        Text(
                          league.country,
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
