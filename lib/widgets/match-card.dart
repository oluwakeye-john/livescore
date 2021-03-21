import 'package:flutter/material.dart';
import 'package:sport_app/utils/responsive.dart';

class _MatchCardLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Row(
      children: [
        Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: theme.cardColor),
          margin: EdgeInsets.only(
              right: getResponsiveWidth(context: context, width: 2)),
          child: Image.asset('assets/clubs/barcelona.png'),
        ),
        Container(
          height: 30,
          width: 30,
          child: Image.asset('assets/clubs/realmadrid.png'),
        )
      ],
    ));
  }
}

class _MatchCardRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Column(
      children: [
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: theme.cardColor,
          ),
          width: 50,
          child: Center(
            child: Text(
              "FT",
              style: theme.textTheme.subtitle2,
            ),
          ),
        ))
      ],
    ));
  }
}

class _MatchCardCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Barcelona  vs Real Madrid",
          style: theme.textTheme.subtitle2,
        ),
        Text(
          "2 - 3",
          style: theme.textTheme.subtitle2,
        )
      ],
    )));
  }
}

class MatchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 80,
      margin: EdgeInsets.only(
          bottom: getResponsiveHeight(context: context, height: 1.5)),
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF2B2B3D),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _MatchCardLeft(),
          _MatchCardCenter(),
          _MatchCardRight(),
        ],
      ),
    ));
  }
}
