import 'package:bookly/core/errors/failuer.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<Item>>> fetchBookItemData();
  Future<Either<Failuer, List<Item>>> fetchBestSellerData();
}
