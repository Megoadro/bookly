import 'package:bookly/core/errors/failuer.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpls implements HomeRepo {
  ApiService apiService;
  HomeRepoImpls(this.apiService);
  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewestData() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioErro(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchBookItemData()async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioErro(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
