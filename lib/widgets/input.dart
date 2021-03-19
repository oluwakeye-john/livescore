import 'package:flutter/material.dart';
import 'package:sport_app/utils/responsive.dart';

int inputBg = 0xFF181829;
int inputText = 0xFF65656B;

class CustomInput extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool secure;

  CustomInput(
      {required this.text, this.secure = false, this.icon = Icons.email});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      margin: EdgeInsets.only(
          bottom: getResponsiveHeight(context: context, height: 3)),
      child: TextField(
        obscureText: secure,
        style: theme.textTheme.caption,
        decoration: InputDecoration(
            fillColor: Color(inputBg),
            prefixIcon: Icon(icon),
            filled: true,
            hintText: text,
            contentPadding: EdgeInsets.all(22),
            // border:
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide.none),
            hintStyle: TextStyle(color: Color(inputText))),
      ),
    ));
  }
}
