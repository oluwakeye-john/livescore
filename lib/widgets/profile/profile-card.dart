import 'package:flutter/material.dart';
import 'package:sport_app/models/profile-item.dart';

class ProfileListCard extends StatelessWidget {
  final ProfileItem item;

  ProfileListCard({required this.item});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.all(0),
      title: Text(
        item.title,
        style: theme.textTheme.subtitle2,
      ),
      subtitle: Text(
        item.description,
        style: theme.textTheme.caption,
      ),
      leading: Icon(
        item.icon,
        color: Colors.white,
        size: 23,
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: Colors.white,
        size: 23,
      ),
    ));
  }
}
