import 'package:flutter/material.dart';
import 'package:sport_app/models/profile-item.dart';

class ProfileListCard extends StatelessWidget {
  final ProfileItem item;

  ProfileListCard({required this.item});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (ListTile(
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

class NewListCard extends StatelessWidget {
  final ProfileItem item;

  NewListCard({required this.item});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Card(
        child: ListTile(
      title: Text(
        item.title,
        style: theme.textTheme.subtitle2,
      ),
      subtitle: Text(
        item.description,
        style: theme.textTheme.caption,
      ),
      leading: Icon(item.icon),
    )));
  }
}

/*

Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  item.icon,
                  color: Colors.white,
                  size: 23,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: theme.textTheme.subtitle2,
                  ),
                  Text(
                    item.description,
                    style: theme.textTheme.caption,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
              icon: Icon(Icons.chevron_right, color: Colors.white),
              onPressed: () {})
        ],
      ),
    )
*/
