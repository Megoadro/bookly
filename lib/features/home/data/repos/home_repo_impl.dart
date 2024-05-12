import 'package:bookly/core/errors/failuer.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpls implements HomeRepo {
  ApiService apiService;
  HomeRepoImpls(this.apiService);
  @override
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerData() async {
    try {
  var data = await apiService.get(
      endPoint:
          'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
            List<BookModel> books = [];
    for (var item in data['item']) {
      books.add(BookModel.fromJson(item));
    }
    return right(books);
}  catch (e) {
  return Left(ServerFailuer());
}
  
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchBookItemData() {
    // TODO: implement fetchBookItemData
    throw UnimplementedError();
  }
}
