import 'package:flutter/material.dart';
import 'package:sport_app/utils/responsive.dart';

class _MatchStatsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      margin: EdgeInsets.only(
          bottom: getResponsiveHeight(context: context, height: 2.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "10",
            style: theme.textTheme.subtitle2,
          ),
          Text(
            "Shooting",
            style: theme.textTheme.subtitle1,
          ),
          Text(
            "12",
            style: theme.textTheme.subtitle2,
          ),
        ],
      ),
    ));
  }
}

class MatchStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: (Column(children: [
        _MatchStatsItem(),
        _MatchStatsItem(),
        _MatchStatsItem(),
        _MatchStatsItem(),
        _MatchStatsItem(),
      ])),
    );
  }
}
