import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class BookItemStates {}

class BookItemInitialState extends BookItemStates {}

class BookItemLoadingState extends BookItemStates {}

class BookItemSuccessState extends BookItemStates {
 final List<BookModel> books;
  BookItemSuccessState(this.books);
}

class BookItemFailureState extends BookItemStates {
  final String errMessege;
  BookItemFailureState(this.errMessege);
}
