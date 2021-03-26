import 'package:flutter/material.dart';
import 'package:sport_app/utils/responsive.dart';

class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Padding(
      padding: EdgeInsets.only(
          top: getResponsiveHeight(context: context, height: 3),
          bottom: getResponsiveHeight(context: context, height: 3)),
      child: Column(
        children: [
          Text(
            "Brian Imanuel",
            style: theme.textTheme.headline6,
          ),
          Text(
            "#YNWK till the end 🔥",
            style: theme.textTheme.caption,
          )
        ],
      ),
    ));
  }
}

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (CircleAvatar(
      radius: 50.0,
      backgroundImage: AssetImage('assets/avatar.png'),
    ));
  }
}
