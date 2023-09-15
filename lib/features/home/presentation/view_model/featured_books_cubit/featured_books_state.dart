import 'package:booka/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitialState extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksFailureState({required this.errorMessage});
}

class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccessState({required this.books});

}