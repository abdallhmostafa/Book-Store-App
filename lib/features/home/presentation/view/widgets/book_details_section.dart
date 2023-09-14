import 'package:booka/core/utilities/styles_of_text.dart';
import 'package:booka/features/home/presentation/view/widgets/book_rating.dart';
import 'package:booka/features/home/presentation/view/widgets/cutom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.19),
          child: const CustomBookItem(),
        ),
        const SizedBox(
          height: 43.0,
        ),
        const Text(
          "The Jungle Book",
          style: StylesOfText.textStyle30,
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          "Rudyard Kipling",
          style: StylesOfText.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.0,
              color: Colors.white70),
        ),
        const SizedBox(
          height: 18.0,
        ),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}
