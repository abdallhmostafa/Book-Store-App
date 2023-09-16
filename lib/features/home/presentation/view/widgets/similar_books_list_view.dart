import 'package:booka/core/components/custom_error_widget.dart';
import 'package:booka/core/components/custom_loading_widget.dart';
import 'package:booka/features/home/presentation/view/widgets/cutom_book_item.dart';
import 'package:booka/features/home/presentation/view_model/similar_books_cubit/similar_book_cubit.dart';
import 'package:booka/features/home/presentation/view_model/similar_books_cubit/similar_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return ListView.builder(
            itemCount: state.bookModel.length,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10.0,),
                child: CustomBookItem(
                  imageUrl:
                      state.bookModel[index].volumeInfo!.imageLinks?.thumbnail ??' ',
                )),
          );
        } else if (state is SimilarBooksFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
