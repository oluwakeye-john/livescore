import 'package:flutter/material.dart';

class ProfileItem {
  String title;
  String description;
  IconData icon;

  ProfileItem(
      {required this.title,
      required this.description,
      this.icon = Icons.person_outline});
}
