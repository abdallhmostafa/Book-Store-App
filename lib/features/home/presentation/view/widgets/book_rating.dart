import 'package:booka/core/utilities/styles_of_text.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const <Widget>[
        Icon(
          Icons.star_rate_rounded,
          color: Color(0xffFFDD4F),
          size: 20.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          '4.8',
          style: StylesOfText.textStyle16,
        ),
        SizedBox(
          width: 5.0,
        ),
        Opacity(
            opacity: 0.5,
            child: Text(
              '(2390)',
              style: StylesOfText.textStyle14,
            ))
      ],
    );
  }
}
