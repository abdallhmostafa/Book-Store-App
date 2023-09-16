import 'package:booka/features/home/data/models/book_model/book_model.dart';

abstract class SimilarBooksState {}

class SimilarBooksLoadingState extends SimilarBooksState {}

class SimilarBooksInitialState extends SimilarBooksState {}

class SimilarBooksFailureState extends SimilarBooksState {
  final String errorMessage;

  SimilarBooksFailureState({required this.errorMessage});
}

class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> bookModel;

  SimilarBooksSuccessState({required this.bookModel});
}
