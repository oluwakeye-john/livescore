import 'package:flutter/material.dart';
import 'package:sport_app/models/interest.dart';
import 'package:sport_app/utils/responsive.dart';

List<Interest> getInterests() {
  return ([
    Interest(name: "Soccer", imagePath: "assets/interests/soccer.png"),
    Interest(name: "Basketball", imagePath: "assets/interests/basketball.png"),
    Interest(name: "Football", imagePath: "assets/interests/football.png"),
    Interest(name: "Baseball", imagePath: "assets/interests/baseball.png"),
    Interest(name: "Tennis", imagePath: "assets/interests/tennis.png"),
    Interest(name: "Volleyball", imagePath: "assets/interests/basketball.png"),
  ]);
}

class InterestList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Interest> interests = getInterests();
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
    return (Container(
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
