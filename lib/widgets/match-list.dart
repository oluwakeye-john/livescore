import 'package:flutter/material.dart';
import 'package:sport_app/utils/responsive.dart';
import 'package:sport_app/widgets/match-card.dart';

class MatchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 200,
      margin: EdgeInsets.only(
          top: getResponsiveHeight(context: context, height: 2),
          bottom: getResponsiveHeight(context: context, height: 2)),
      child: ListView.builder(itemBuilder: (context, pos) {
        return (MatchCard());
      }),
    ));
  }
}
