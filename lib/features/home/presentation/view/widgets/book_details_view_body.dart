import 'package:booka/features/home/data/models/book_model/book_model.dart';
import 'package:booka/features/home/presentation/view/widgets/book_action.dart';
import 'package:booka/features/home/presentation/view/widgets/book_details_section.dart';
import 'package:booka/features/home/presentation/view/widgets/custom_app_bar_book_details.dart';
import 'package:booka/features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
            child: Column(
              children: [
              const  CustomAppBarBookDetails(),
                BookDetailsSection(bookModel: bookModel),
              const  SizedBox(
                  height: 37.0,
                ),
                BooksAction(bookModel: bookModel),
             const   Expanded(
                  child: SizedBox(
                    height: 50.0,
                  ),
                ),
             const   SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
