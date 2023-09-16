import 'package:booka/core/components/custom_error_widget.dart';
import 'package:booka/core/components/custom_loading_widget.dart';
import 'package:booka/features/home/presentation/view/widgets/book_list_view_item.dart';
import 'package:booka/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:booka/features/home/presentation/view_model/newest_books_cubit/newest_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: state.books.length,
              itemBuilder: (context, index) =>  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SizedBox(height: 125.0, child: BookListViewItem(bookModel: state.books[index],)),
              ),
            ),
          );
        } else if (state is NewestBooksFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
