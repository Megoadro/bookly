import 'package:bookly/core/errors/failuer.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpls implements HomeRepo{
  @override
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerData() {
    // TODO: implement fetchBestSellerData
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchBookItemData() {
    // TODO: implement fetchBookItemData
    throw UnimplementedError();
  }
 

}