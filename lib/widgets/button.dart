import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPress;

  CustomButton({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return (SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          onPress();
        },
        child: Text(text),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    ));
  }
}
