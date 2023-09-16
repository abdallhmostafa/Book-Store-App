import 'package:booka/core/errors/failures.dart';
import 'package:booka/features/home/data/models/book_model/book_model.dart';
import 'package:booka/features/home/data/repos/home_repo.dart';
import 'package:booka/features/home/presentation/view_model/similar_books_cubit/similar_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoadingState());
    Either<Failure, List<BookModel>> result =
        await homeRepo.fetchSimilarBooks(category: category );

    result.fold((failure) =>emit(SimilarBooksFailureState(errorMessage: failure.errorMessage)), (books) => emit(SimilarBooksSuccessState(bookModel: books)));
  }
}
