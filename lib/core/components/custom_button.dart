import 'package:booka/constants.dart';
import 'package:booka/core/utilities/styles_of_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.color,
      required this.text,
      required this.onPressed,
      required this.isLeft,
      this.fontSize = 18.0});

  final Color backgroundColor;
  final Color color;
  final String text;
  final VoidCallback onPressed;
  final bool isLeft;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            fixedSize: const Size.fromHeight(48.0),
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(isLeft ? kPrimaryBorderRadius : 0.0),
              topLeft: Radius.circular(isLeft ? kPrimaryBorderRadius : 0.0),
              bottomRight: Radius.circular(isLeft ? 0.0 : kPrimaryBorderRadius),
              topRight: Radius.circular(isLeft ? 0.0 : kPrimaryBorderRadius),
            ))),
        child: Text(
          text,
          style: StylesOfText.textStyle18.copyWith(
              color: color, fontWeight: FontWeight.w700, fontSize: fontSize),
        ));
  }
}
