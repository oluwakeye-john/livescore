import 'package:flutter/material.dart';
import 'package:sport_app/models/profile-item.dart';
import 'package:sport_app/widgets/profile/profile-card.dart';

List<ProfileItem> getProfileItems() {
  return ([
    ProfileItem(title: "Name", description: "Brian Immanuesl"),
    ProfileItem(
        title: "Email",
        description: "brians213@gmail.com",
        icon: Icons.email_outlined),
    ProfileItem(
        title: "Phone",
        description: "+62 821 560 641",
        icon: Icons.phone_outlined),
    ProfileItem(
        title: "Address",
        description: "Long beach, California",
        icon: Icons.location_on_outlined),
  ]);
}

class ProfileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ProfileItem> profileItems = getProfileItems();
    return (ListView.builder(
        itemCount: profileItems.length,
        itemBuilder: (context, pos) {
          return (ProfileListCard(
            item: profileItems[pos],
          ));
        }));
  }
}
