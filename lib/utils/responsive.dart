import 'package:flutter/material.dart';

num getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

num getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getResponsiveWidth({required BuildContext context, required num width}) {
  return MediaQuery.of(context).size.width * (width / 100);
}

double getResponsiveHeight(
    {required BuildContext context, required num height}) {
  return MediaQuery.of(context).size.height * (height / 100);
}
