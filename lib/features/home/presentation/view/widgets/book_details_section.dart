import 'package:booka/core/utilities/styles_of_text.dart';
import 'package:booka/features/home/data/models/book_model/book_model.dart';
import 'package:booka/features/home/presentation/view/widgets/book_rating.dart';
import 'package:booka/features/home/presentation/view/widgets/cutom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.19),
          child: CustomBookItem(
            imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
          ),
        ),
        const SizedBox(
          height: 43.0,
        ),
        Text(
          bookModel.volumeInfo!.title!,
          style: StylesOfText.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          bookModel.volumeInfo!.authors!
              .toString()
              .replaceAll('[', '')
              .replaceAll(']', ''),
          style: StylesOfText.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.0,
              color: Colors.white70),
        ),
        const SizedBox(
          height: 18.0,
        ),
        BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            count: bookModel.volumeInfo!.pageCount!,
            rating: '4.2'),
      ],
    );
  }
}
