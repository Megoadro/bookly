import 'package:bookly/core/errors/failuer.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpls implements HomeRepo{
  @override
  Future<Either<Failuer, List<Item>>> fetchBookDetailsData() {
    // TODO: implement fetchBookDetailsData
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<Item>>> fetchHomeData() {
    // TODO: implement fetchHomeData
    throw UnimplementedError();
  }

}