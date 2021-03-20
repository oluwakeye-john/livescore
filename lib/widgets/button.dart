import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sport_app/utils/responsive.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPress;

  CustomButton({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (SizedBox(
      height: getResponsiveHeight(context: context, height: 6.5),
      child: ElevatedButton(
        onPressed: () {
          onPress();
        },
        child: Text(
          text,
          style: theme.textTheme.subtitle2,
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    ));
  }
}

class ExpandedWidth extends StatelessWidget {
  final Widget child;

  ExpandedWidth({required this.child});

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: double.infinity,
      child: child,
    ));
  }
}

class CustomFlatButton extends StatelessWidget {
  final String text;
  final Function onPress;

  CustomFlatButton({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (SizedBox(
      height: getResponsiveHeight(context: context, height: 6.5),
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Skip",
            style: theme.textTheme.subtitle2,
          )),
    ));
  }
}
