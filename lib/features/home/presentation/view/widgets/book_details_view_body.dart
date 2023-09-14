import 'package:booka/features/home/presentation/view/widgets/book_action.dart';
import 'package:booka/features/home/presentation/view/widgets/book_details_section.dart';
import 'package:booka/features/home/presentation/view/widgets/custom_app_bar_book_details.dart';
import 'package:booka/features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                BookDetailsSection(),
                SizedBox(
                  height: 37.0,
                ),
                BooksAction(),
                Expanded(
                  child: SizedBox(
                    height: 50.0,
                  ),
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
