import 'package:flutter/material.dart';
import 'package:sport_app/layout.dart';
import 'package:sport_app/utils/responsive.dart';
import 'package:sport_app/widgets/match/match-tab.dart';
import 'package:sport_app/widgets/match/match-card.dart';

class _MatchDetailHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    handleback() {
      Navigator.of(context).pop();
    }

    return (Row(
      children: [
        IconButton(
            icon: Icon(Icons.chevron_left, color: Colors.white),
            onPressed: () {
              handleback();
            }),
        Text(
          "UEFA champions league",
          style: theme.textTheme.subtitle2,
        )
      ],
    ));
  }
}

class _MatchDetailMeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/clubs/barcelona.png'),
              Text("2 - 3", style: theme.textTheme.headline2),
              Column(children: [
                Image.asset('assets/clubs/realmadrid.png'),
              ]),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Real madrid",
                    style: theme.textTheme.subtitle2,
                  ),
                  Text(
                    "73:34",
                    style: theme.textTheme.subtitle2,
                  ),
                  Text(
                    "Real madrid",
                    style: theme.textTheme.subtitle2,
                  )
                ],
              )),
        ],
      ),
    ));
  }
}

class MatchDetailOthers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                bottom: getResponsiveHeight(context: context, height: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Other Match", style: theme.textTheme.subtitle1),
                Text("See all", style: theme.textTheme.caption)
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  bottom: getResponsiveHeight(context: context, height: 2)),
              child: MatchCard()),
          Container(
              margin: EdgeInsets.only(
                  bottom: getResponsiveHeight(context: context, height: 2)),
              child: MatchCard()),
          Container(
              margin: EdgeInsets.only(
                  bottom: getResponsiveHeight(context: context, height: 2)),
              child: MatchCard()),
        ],
      ),
    ));
  }
}

class MatchDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (AppLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _MatchDetailHeader(),
            _MatchDetailMeta(),
            MatchTabController(),
            MatchDetailOthers()
          ],
        ),
      ),
    ));
  }
}
