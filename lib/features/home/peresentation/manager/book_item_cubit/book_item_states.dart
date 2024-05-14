import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class BookItemStates  extends Equatable{
  //Add Eqatable -> Make Bloc don't Accept The Same Of [List of Object],
  const BookItemStates();
  @override
  List<Object?> get props => [];
}

class BookItemInitialState extends BookItemStates {}

class BookItemLoadingState extends BookItemStates {}

class BookItemSuccessState extends BookItemStates {
 final List<BookModel> books;
 const BookItemSuccessState(this.books);
}

class BookItemFailureState extends BookItemStates {
  final String errMessege;
  const BookItemFailureState(this.errMessege);
}
