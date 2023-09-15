import 'package:booka/features/home/data/models/book_model/book_model.dart';

abstract class NewestBooksState{}

class NewestBooksInitialState extends NewestBooksState{}
class NewestBooksLoadingState extends NewestBooksState{}
class NewestBooksFailureState extends NewestBooksState{
  final String errorMessage;

  NewestBooksFailureState({required this.errorMessage});
}
class NewestBooksSuccessState extends NewestBooksState{
  final List<BookModel> books;

  NewestBooksSuccessState({required this.books});
}