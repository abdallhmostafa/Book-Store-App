import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {this.fontSize = 20.0,
      this.fontWeight = FontWeight.w600,
      required this.text,
      super.key});
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      // overflow:TextOverflow.ellipsis,
      softWrap: true,

      text,
      style: TextStyle(
          color: Colors.white, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
