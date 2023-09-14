
import 'package:booka/constants.dart';
import 'package:flutter/material.dart';

abstract class StylesOfText{
  static const textStyle30 =TextStyle(
      fontSize: 30.0,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    fontFamily:kSecondFontFamily,
  );
  static const textStyle20 =TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
    fontFamily:kSecondFontFamily,
    color: Colors.white,

  );
  static const textStyle20Bold =TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,

  );

  static const textStyle18 =TextStyle(
      fontSize: 18.0,
      color: Colors.white,

      fontWeight: FontWeight.w600,
  );

  static const textStyle16 =TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    color: Colors.white,

  );

  static const textStyle14 =TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
    color: Colors.white,

  );


}
