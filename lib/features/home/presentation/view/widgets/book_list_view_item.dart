import 'package:booka/constants.dart';
import 'package:booka/core/utilities/app_router.dart';
import 'package:booka/core/utilities/assets_data.dart';
import 'package:booka/core/utilities/styles_of_text.dart';
import 'package:booka/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetails),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kPrimaryBorderRadius),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.image3),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      "Harry Potter and the Goblet of Fire",
                      style: StylesOfText.textStyle20,
                    )),
                const SizedBox(
                  height: 3.0,
                ),
                const Text(
                  "J.K. Rowling",
                  style: StylesOfText.textStyle14,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("19.99 \$", style: StylesOfText.textStyle20Bold),
                    BookRating(),
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
