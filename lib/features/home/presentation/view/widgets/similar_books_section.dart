import 'package:booka/core/utilities/styles_of_text.dart';
import 'package:booka/features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: StylesOfText.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16.0,
        ),
        SizedBox(
            height:MediaQuery.of(context).size.height * 0.15,
            child: const SimilarBooksListView()),
      ],
    );
  }
}


