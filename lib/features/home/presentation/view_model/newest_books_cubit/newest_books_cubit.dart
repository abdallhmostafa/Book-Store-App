import 'package:booka/core/errors/failures.dart';
import 'package:booka/features/home/data/models/book_model/book_model.dart';
import 'package:booka/features/home/data/repos/home_repo.dart';
import 'package:booka/features/home/presentation/view_model/newest_books_cubit/newest_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoadingState());
    Either<Failure, List<BookModel>> result = await homeRepo.fetchNewestBooks();
    result.fold(
        (failure) =>
            emit(NewestBooksFailureState(errorMessage: failure.errorMessage)),
        (books) => emit(NewestBooksSuccessState(books: books)));
  }
}
