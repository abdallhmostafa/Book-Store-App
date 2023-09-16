import 'package:booka/core/errors/failures.dart';
import 'package:booka/core/utilities/api_service.dart';
import 'package:booka/features/home/data/models/book_model/book_model.dart';
import 'package:booka/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement extends HomeRepo {
  HomeRepoImplement({required this.apiServices});

  final ApiServices apiServices;

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await apiServices.getData(
          endPoints:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      Map<String, dynamic> data = await apiServices.getData(
          endPoints: 'volumes?Filtering=free-ebooks&q=programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({ required String category }) async{
      try {
      Map<String, dynamic> data = await apiServices.getData(
          endPoints: 'volumes?Filtering=free-ebooks&Sorting=relevance&subject=$category&q=programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }
}
