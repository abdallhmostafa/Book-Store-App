import 'package:booka/core/errors/failures.dart';
import 'package:booka/features/home/data/models/book_model/book_model.dart';
import 'package:booka/features/home/data/repos/home_repo.dart';
import 'package:booka/features/home/presentation/view_model/featured_books_cubit/featured_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    Either<Failure, List<BookModel>> result =
        await homeRepo.fetchFeatureBooks();
    result.fold(
        (failure) =>
            emit(FeaturedBooksFailureState(errorMessage: failure.errorMessage)),
        (books) =>emit( FeaturedBooksSuccessState(books: books)));
  }
}
