import 'package:flutter/material.dart';
import 'package:sport_app/layout.dart';
import 'package:sport_app/models/tab.dart';
import 'package:sport_app/widgets/General/tab.dart';
import 'package:sport_app/widgets/profile/profile-list.dart';
import 'package:sport_app/widgets/profile/profile-meta.dart';

List<TabItem> tabItems = [
  TabItem(name: "My Profile", child: ProfileList()),
  TabItem(name: "Activity", child: ProfileList()),
  TabItem(name: "Settings", child: ProfileList()),
];

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (AppLayout(
      showBottomNav: true,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProfileImage(),
            ProfileDetails(),
            DefaultTabController(
                length: 3,
                child: CustomTab(
                  items: tabItems,
                )),
          ],
        ),
      ),
    ));
  }
}
