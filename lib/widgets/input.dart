import 'package:flutter/material.dart';
import 'package:sport_app/utils/responsive.dart';

int inputBg = 0xFF181829;
int inputText = 0xFF65656B;

class CustomInput extends StatelessWidget {
  final String text;

  CustomInput({required this.text});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      margin: EdgeInsets.only(
          bottom: getResponsiveHeight(context: context, height: 3)),
      child: TextField(
        style: theme.textTheme.caption,
        decoration: InputDecoration(
            fillColor: Color(inputBg),
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
