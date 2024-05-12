import 'package:bookly/core/errors/failuer.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //All Methods There Witthout Impls(Yes Thats abs class) .. Only Describe Name And Type Of  Methods
  Future<Either<Failuer, List<BookModel>>> fetchBookItemData();
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerData();
}
