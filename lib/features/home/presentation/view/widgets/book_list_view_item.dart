import 'package:booka/core/utilities/app_router.dart';
import 'package:booka/core/utilities/styles_of_text.dart';
import 'package:booka/features/home/data/models/book_model/book_model.dart';
import 'package:booka/features/home/presentation/view/widgets/book_rating.dart';
import 'package:booka/features/home/presentation/view/widgets/cutom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          GoRouter.of(context).push(AppRouter.kBookDetails, extra: bookModel),
      child: Row(
        children: [
          CustomBookItem(
              imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? ' '),
          const SizedBox(
            width: 30.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo!.title!,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: StylesOfText.textStyle20,
                    )),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  bookModel.volumeInfo!.authors!
                      .toString()
                      .replaceAll('[', '')
                      .replaceAll(']', ''),
                  style: StylesOfText.textStyle14,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Free", style: StylesOfText.textStyle20Bold),
                    BookRating(
                        rating: '4.1', count: bookModel.volumeInfo!.pageCount!),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
