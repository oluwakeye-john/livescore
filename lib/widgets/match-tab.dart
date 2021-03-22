import 'package:flutter/material.dart';
import 'package:sport_app/utils/responsive.dart';
import 'package:sport_app/widgets/General/gradient.dart';
import 'package:sport_app/widgets/match-lineup.dart';
import 'package:sport_app/widgets/match-stats.dart';

class _MatchTabItem extends StatelessWidget {
  final String title;
  _MatchTabItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 50,
      child: Center(
        child: Text(title),
      ),
    ));
  }
}

class MatchTabController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (DefaultTabController(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: getResponsiveHeight(context: context, height: 3),
              bottom: getResponsiveHeight(context: context, height: 3),
            ),
            child: TabBar(
              indicator: BoxDecoration(
                  gradient: customGradient(),
                  borderRadius: BorderRadius.circular(23)),
              tabs: [
                _MatchTabItem(
                  title: "Details",
                ),
                _MatchTabItem(
                  title: "Line Up",
                ),
                _MatchTabItem(
                  title: "H2H",
                ),
              ],
            ),
          ),
          Container(
              height: 250,
              margin: EdgeInsets.only(
                top: getResponsiveHeight(context: context, height: 3),
                bottom: getResponsiveHeight(context: context, height: 5),
              ),
              child: _MatchTabView())
        ],
      ),
      length: 3,
    ));
  }
}

class _MatchTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (TabBarView(children: [
      MatchStats(),
      MatchDetailsLineup(),
      MatchStats(),
    ]));
  }
}
