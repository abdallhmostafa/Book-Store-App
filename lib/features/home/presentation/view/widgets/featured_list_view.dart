import 'package:booka/core/components/custom_error_widget.dart';
import 'package:booka/core/components/custom_loading_widget.dart';
import 'package:booka/features/home/presentation/view/widgets/cutom_book_item.dart';
import 'package:booka/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:booka/features/home/presentation/view_model/featured_books_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CustomBookItem(
                  imageUrl:
                      state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                )),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
