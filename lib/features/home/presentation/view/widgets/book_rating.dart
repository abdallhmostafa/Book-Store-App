import 'package:booka/core/utilities/styles_of_text.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});

  final String rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  <Widget>[
       const Icon(
          Icons.star_rate_rounded,
          color: Color(0xffFFDD4F),
          size: 20.0,
        ),
      const  SizedBox(
          width: 6.0,
        ),
        Text(
          rating,
          style: StylesOfText.textStyle16,
        ),
     const   SizedBox(
          width: 5.0,
        ),
        Opacity(
            opacity: 0.5,
            child: Text(
             '($count)',
              style: StylesOfText.textStyle14,
            ))
      ],
    );
  }
}
