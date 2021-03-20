import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:sport_app/layout.dart';
import 'package:sport_app/models/interest.dart';
import 'package:sport_app/utils/responsive.dart';
import 'package:sport_app/widgets/button.dart';

class InterestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (AppLayout(
        child: Column(
      children: [
        _InterestTitle(),
        _InterestSubtitle(),
        _InterestList(),
        _InterestButton()
      ],
    )));
  }
}

class _InterestTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
        margin: EdgeInsets.only(
            bottom: getResponsiveHeight(context: context, height: 2)),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "What sport do you interest?",
              style: theme.textTheme.headline3,
            ))));
  }
}

class _InterestSubtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "You can choose more than one",
          style: theme.textTheme.caption,
        ),
      ),
    ));
  }
}

List<Interest> interests = [
  Interest(name: "Soccer", imagePath: "assets/interests/soccer.png"),
  Interest(name: "Basketball", imagePath: "assets/interests/basketball.png"),
  Interest(name: "Football", imagePath: "assets/interests/football.png"),
  Interest(name: "Baseball", imagePath: "assets/interests/baseball.png"),
  Interest(name: "Tennis", imagePath: "assets/interests/tennis.png"),
  Interest(name: "Volleyball", imagePath: "assets/interests/basketball.png"),
];

class _InterestList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Expanded(
      child: Container(
        margin: EdgeInsets.only(
            top: getResponsiveHeight(context: context, height: 8)),
        child: GridView.builder(
            itemCount: interests.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing:
                    getResponsiveHeight(context: context, height: 4)),
            itemBuilder: (context, pos) {
              return (_InterestItem(
                interest: interests[pos],
              ));
            }),
      ),
    ));
  }
}

class _InterestItem extends StatelessWidget {
  final Interest interest;

  _InterestItem({required this.interest});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          SizedBox(
              width: getResponsiveWidth(context: context, width: 20),
              child: Image.asset(
                interest.imagePath,
              )),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              interest.name,
              style: theme.textTheme.subtitle2,
            ),
          )
        ],
      ),
    ));
  }
}

class _InterestButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        ExpandedWidth(
            child: CustomButton(
          onPress: () {},
          text: "Continue",
        )),
        ExpandedWidth(
            child: CustomFlatButton(
          text: "Skip",
          onPress: () {},
        ))
      ],
    ));
  }
}
